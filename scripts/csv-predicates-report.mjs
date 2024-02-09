import { readFileSync, writeFileSync } from "fs";

const theoryFile = process.argv[2];
const reportPath = "./../build"
const regexFofEntry = /fof\([^.]*/g;
const regexPredicate = /(\w|_)+\((\w|,)*[^\)]/g;
const predicates = {};
const statements = {};

function readFile(path) {
  try {
    const contents = readFileSync(path, { encoding: "utf8" });
    return contents;
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}

function processFileContents(contents) {
  processFileStatements(contents);
  processFilePredicates(contents);
}

function processFileStatements(contents) {
  const fofMatches = contents
    .match(regexFofEntry)
    .map((str) => `${str.trim()}.`);

  for (const match of fofMatches) {
    const statement = createStatement(match);
    statements[statement.name] = statement;
  }
}

function createStatement(match) {
  return {
    name: getStatementName(match),
    type: getStatementType(match),
    text: match,
  };
}

function getStatementName(entry) {
  return entry.match(/fof\([^,]*/)?.[0].replace("fof(", "");
}

function getStatementType(entry) {
  if (entry.match(/,\s*axiom\s*,/)) return "axiom";
  if (entry.match(/,\s*conjecture\s*,/)) return "conjecture";
  return "unknown";
}

function processFilePredicates(contents) {
  const predicateMatches = contents
    .match(regexPredicate)
    ?.filter((str) => !str.includes("fof("));

  for (const match of predicateMatches) {
    const name = getPredicateName(match);
    if (predicates[name]) continue;
    predicates[name] = createPredicate(match);
  }

  for (const predicate of Object.values(predicates)) {
    const name = predicate.name;
    const occurrences = Object.values(statements)?.filter((stat) =>
      stat.text.includes(name)
    );

    predicate.axioms = occurrences
      ?.filter((stat) => stat.type === "axiom")
      ?.map((stat) => stat.name);
    predicate.conjectures = occurrences
      ?.filter((stat) => stat.type === "conjecture")
      ?.map((stat) => stat.name);
    predicate.other = occurrences
      ?.filter((stat) => stat.type !== "axiom" && stat.type !== "conjecture")
      ?.map((stat) => stat.name);
  }
}

function createPredicate(match) {
  return {
    name: getPredicateName(match),
    arity: getPredicateArity(match),
    example: match + ")",
    axioms: [],
    conjectures: [],
    other: [],
  };
}

function getPredicateName(entry) {
  return entry.replace(/\(.*/, "")?.trim();
}

function getPredicateArity(entry) {
  return (entry.match(/,/g) ?? [])?.length + 1;
}

function writeOutput() {
  let statementsContent = `Name,Type,Statement`;
  let predicatesContent = `Name,Arity,Example,Axioms,Theorems,Other`;

  for (const statement of Object.values(statements)) {
    statementsContent += `\n"${statement.name}","${statement.type}","${statement.text}"`;
  }

  for (const predicate of Object.values(predicates)) {
    predicatesContent += `\n"${predicate.name}","${predicate.arity}","${
      predicate.example
    }","${predicate.axioms?.join(",\n")}","${predicate.conjectures?.join(
      ",\n"
    )}","${predicate.other?.join(",\n")}"`;
  }

  try {
    writeFileSync(`${reportPath}/statements.csv`, statementsContent);
    writeFileSync(`${reportPath}/predicates.csv`, predicatesContent);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}

function main() {
  const contents = readFile(theoryFile);
  processFileContents(contents);
  writeOutput();
}

main();

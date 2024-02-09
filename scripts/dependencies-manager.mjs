import { readFileSync, writeFileSync } from "fs";
import modules from "./module-dependencies.mjs" 

const buildPath = "../build";

function generateDependenciesGraph() {
  let graph = "graph";
  
  for (const module of modules) {
    for (const dependency of module.dependencies) {
      graph += `\n\t${module.id} --> ${dependency}`;
    }
  }

  graph += "\n"

  for (const module of modules) {
    switch (module.type) {
      case "AXIOM":
        graph += `\n\tstyle ${module.id} fill:#ffefd3, stroke:#000, stroke-width:1.5px`
        break;
      case "INSTANCE":
        graph += `\n\tstyle ${module.id} fill:#adb6c4, stroke:#000, stroke-width:1.5px`
        break;
      case "THEOREM":
        graph += `\n\tstyle ${module.id} fill:#ffc49b, stroke:#000, stroke-width:1.5px`
        break;
    }
  }

  const graphMd = "```mermaid\n" + graph + "\n```"
  writeFile(`${buildPath}/dependencies-graph.md`, graphMd);
}

function readFile(path) {
  try {
    return readFileSync(path);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}

function writeFile(path, contents) {
  try {
    writeFileSync(path, contents, { encoding: "utf-8"});
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}

function joinModules(orderedModules) {
  let joinedContents = "";
  
  for (const module of orderedModules) {
    const contents = readFile(module.path);
    joinedContents += `% -------------------------- ${module.id} --------------------------`;
    joinedContents += `\n\n${contents}\n`;
  }

  return joinedContents;
}

function generateTheoryFile() {
  const axiomModules = modules.filter((module) => module.type === "AXIOM");
  const theoryContents = joinModules(axiomModules);
  writeFile(`${buildPath}/theory.p`, theoryContents)
}

function generateTheoremFiles() {
  const axiomModules = modules.filter((module) => module.type === "AXIOM");
  const theoremModules = modules.filter((module) => module.type === "THEOREM")

  for (const module of theoremModules) {
    const contents = joinModules([...axiomModules, module]);
    const path = module.path.replace("/src/","/build/");
    writeFile(path, contents)
  }
}

function generateInstanceFiles() {
  const axiomModules = modules.filter((module) => module.type === "AXIOM");
  const instanceModules = modules.filter((module) => module.type === "INSTANCE")

  for (const module of instanceModules) {
    const contents = joinModules([...axiomModules, module]);
    const path = module.path.replace("/src/","/build/");
    writeFile(path, contents)
  }
}


function main() {
  generateDependenciesGraph();
  generateTheoryFile();
  generateTheoremFiles();
  generateInstanceFiles();
}

main();
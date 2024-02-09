export default [
  {
    id: "000_BASIC_OWL_DEFINITIONS",
    type: "AXIOM",
    path: "./../src/ufo-module-00.p",
    dependencies: []
  },
  {
    id: "001_INDIVIDUALS",
    type: "AXIOM",
    path: "./../src/ufo-module-01.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS" ]
  },
  {
    id: "002_OBJECTS_AND_THEIR_PARTS",
    type: "AXIOM",
    path: "./../src/ufo-module-02.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", ]
  },
  {
    id: "003_INTRINSIC_ASPECTS",
    type: "AXIOM",
    path: "./../src/ufo-module-03.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", ]
  },
  {
    id: "004_QUALITIES",
    type: "AXIOM",
    path: "./../src/ufo-module-04.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", "008_TYPES", ]
  },
  {
    id: "005_EXTRINSIC_ASPECTS",
    type: "AXIOM",
    path: "./../src/ufo-module-05.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", "003_INTRINSIC_ASPECTS", ]
  },
  {
    id: "006_EVENTS",
    type: "AXIOM",
    path: "./../src/ufo-module-06.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", ]
  },
  {
    id: "007_SITUATIONS",
    type: "AXIOM",
    path: "./../src/ufo-module-07.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", "004_QUALITIES", "008_TYPES", "009_ENDURANT_TYPES", ]
  },
  {
    id: "008_TYPES",
    type: "AXIOM",
    path: "./../src/ufo-module-08.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", ]
  },
  {
    id: "009_ENDURANT_TYPES",
    type: "AXIOM",
    path: "./../src/ufo-module-09.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "008_TYPES", ]
  },
  {
    id: "010_RELATIONSHIP_TYPES",
    type: "AXIOM",
    path: "./../src/ufo-module-10.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "008_TYPES", ]
  },
  {
    id: "011_HIGH_ORDER_TYPES",
    type: "AXIOM",
    path: "./../src/ufo-module-11.p",
    dependencies: [ "000_BASIC_OWL_DEFINITIONS", "001_INDIVIDUALS", "008_TYPES", ]
  },
  {
    id: "INSTANCE_001",
    type: "INSTANCE",
    path: "./../src/ufo-instances.p",
    dependencies: [
      "000_BASIC_OWL_DEFINITIONS",
      "001_INDIVIDUALS",
      "002_OBJECTS_AND_THEIR_PARTS",
      "003_INTRINSIC_ASPECTS",
      "004_QUALITIES",
      "005_EXTRINSIC_ASPECTS",
      "006_EVENTS",
      "007_SITUATIONS",
      "008_TYPES",
      "009_ENDURANT_TYPES",
      "010_RELATIONSHIP_TYPES",
      "011_HIGH_ORDER_TYPES",
    ]
  },
]

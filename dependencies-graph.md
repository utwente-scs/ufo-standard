# Full Dependency Graph

This graph presents all dependencies between modules, i.e., an edge is added whenever the module uses a predicate that belongs to another one.

```mermaid
graph
	001_INDIVIDUALS --> 000_BASIC_OWL_DEFINITIONS
	002_OBJECTS_AND_THEIR_PARTS --> 000_BASIC_OWL_DEFINITIONS
	002_OBJECTS_AND_THEIR_PARTS --> 001_INDIVIDUALS
	003_INTRINSIC_ASPECTS --> 000_BASIC_OWL_DEFINITIONS
	003_INTRINSIC_ASPECTS --> 001_INDIVIDUALS
	004_QUALITIES --> 000_BASIC_OWL_DEFINITIONS
	004_QUALITIES --> 001_INDIVIDUALS
	004_QUALITIES --> 008_TYPES
	005_EXTRINSIC_ASPECTS --> 000_BASIC_OWL_DEFINITIONS
	005_EXTRINSIC_ASPECTS --> 001_INDIVIDUALS
	005_EXTRINSIC_ASPECTS --> 003_INTRINSIC_ASPECTS
	006_EVENTS --> 000_BASIC_OWL_DEFINITIONS
	006_EVENTS --> 001_INDIVIDUALS
	007_SITUATIONS --> 000_BASIC_OWL_DEFINITIONS
	007_SITUATIONS --> 001_INDIVIDUALS
	007_SITUATIONS --> 004_QUALITIES
	007_SITUATIONS --> 008_TYPES
	007_SITUATIONS --> 009_ENDURANT_TYPES
	008_TYPES --> 000_BASIC_OWL_DEFINITIONS
	008_TYPES --> 001_INDIVIDUALS
	009_ENDURANT_TYPES --> 000_BASIC_OWL_DEFINITIONS
	009_ENDURANT_TYPES --> 008_TYPES
	010_RELATIONSHIP_TYPES --> 000_BASIC_OWL_DEFINITIONS
	010_RELATIONSHIP_TYPES --> 008_TYPES
	011_HIGH_ORDER_TYPES --> 000_BASIC_OWL_DEFINITIONS
	011_HIGH_ORDER_TYPES --> 001_INDIVIDUALS
	011_HIGH_ORDER_TYPES --> 008_TYPES

	style 000_BASIC_OWL_DEFINITIONS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 001_INDIVIDUALS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 002_OBJECTS_AND_THEIR_PARTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 003_INTRINSIC_ASPECTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 004_QUALITIES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 005_EXTRINSIC_ASPECTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 006_EVENTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 007_SITUATIONS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 008_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 009_ENDURANT_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 010_RELATIONSHIP_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 011_HIGH_ORDER_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
```

# Simplified Dependency Graph

This dependency graph consider dependency as a transitive relation and inferred dependencies are manually removed (27/06/2023).

```mermaid
graph
	001_INDIVIDUALS --> 000_BASIC_OWL_DEFINITIONS
	002_OBJECTS_AND_THEIR_PARTS --> 001_INDIVIDUALS
	003_INTRINSIC_ASPECTS --> 001_INDIVIDUALS
	004_QUALITIES --> 008_TYPES
	005_EXTRINSIC_ASPECTS --> 003_INTRINSIC_ASPECTS
	006_EVENTS --> 001_INDIVIDUALS
	007_SITUATIONS --> 004_QUALITIES
	007_SITUATIONS --> 009_ENDURANT_TYPES
	008_TYPES --> 001_INDIVIDUALS
	009_ENDURANT_TYPES --> 008_TYPES
	010_RELATIONSHIP_TYPES --> 008_TYPES
	011_HIGH_ORDER_TYPES --> 008_TYPES

	style 000_BASIC_OWL_DEFINITIONS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 001_INDIVIDUALS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 002_OBJECTS_AND_THEIR_PARTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 003_INTRINSIC_ASPECTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 004_QUALITIES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 005_EXTRINSIC_ASPECTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 006_EVENTS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 007_SITUATIONS fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 008_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 009_ENDURANT_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 010_RELATIONSHIP_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
	style 011_HIGH_ORDER_TYPES fill:#ffefd3, stroke:#000, stroke-width:1.5px
```
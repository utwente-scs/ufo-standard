% background axiom: domain consists of objects and data
fof(axiom0,axiom,(![X]:(owl_Thing(X)|rdfs_Literal(X)))).

% background axiom: object domain and data domain are disjoint
fof(axiom1,axiom,(![X]:(owl_Thing(X)=>~rdfs_Literal(X)))).

% background axiom: there are things
fof(axiom2,axiom,(?[X]:owl_Thing(X))).

% background axiom: there are literals
fof(axiom3,axiom,(?[X]:rdfs_Literal(X))).

% facets can only be applied to literals
fof(axiom4,axiom,(![X,Y]:(xsd_minExclusive(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom5,axiom,(![X,Y]:(xsd_fractionDigits(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom6,axiom,(![X,Y]:(xsd_pattern(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom7,axiom,(![X,Y]:(xsd_minLength(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom8,axiom,(![X,Y]:(xsd_minInclusive(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom9,axiom,(![X,Y]:(xsd_totalDigits(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom10,axiom,(![X,Y]:(xsd_length(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom11,axiom,(![X,Y]:(xsd_maxExclusive(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom12,axiom,(![X,Y]:(xsd_maxLength(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom13,axiom,(![X,Y]:(rdf_langRange(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% facets can only be applied to literals
fof(axiom14,axiom,(![X,Y]:(xsd_maxInclusive(X,Y)=>(rdfs_Literal(X)&rdfs_Literal(Y))))).

% Declaration(Datatype(xsd:date))
fof(axiom184,axiom,(![X]:(xsd_date(X)=>rdfs_Literal(X)))).
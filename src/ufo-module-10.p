% ------------ gufo_rt_ComparativeRelationshipType ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom> ObjectUnionOf(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType> <http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType>))
fof(axiom161,axiom,(![X0,X1]:(gufo_rt_isDerivedFrom(X0,X1)=>(gufo_rt_ComparativeRelationshipType(X0)|gufo_rt_MaterialRelationshipType(X0))))).

% SubClassOf(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom210,axiom,(![X0]:(gufo_rt_ComparativeRelationshipType(X0)=>gufo_t_RelationshipType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType>))
fof(axiom228,axiom,(![X]:(gufo_rt_ComparativeRelationshipType(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType> <http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType>)
fof(axiom259,axiom,(![X0]:~(gufo_rt_ComparativeRelationshipType(X0)&gufo_rt_MaterialRelationshipType(X0)))).


% ------------ gufo_rt_MaterialRelationshipType ------------

% SubClassOf(<http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom255,axiom,(![X0]:(gufo_rt_MaterialRelationshipType(X0)=>gufo_t_RelationshipType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType>))
fof(axiom304,axiom,(![X]:(gufo_rt_MaterialRelationshipType(X)=>owl_Thing(X)))).


% ------------------------------------------------------------------------------------

% ------------ gufo_rt_isDerivedFrom ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom171,axiom,(![X0,X1]:(gufo_rt_isDerivedFrom(X0,X1)=>gufo_t_EndurantType(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom>))
fof(axiom250,axiom,(![X,Y]:(gufo_rt_isDerivedFrom(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom>))
fof(axiom251,axiom,(![X,Y]:(gufo_rt_isDerivedFrom(X,Y)=>owl_Thing(Y)))).

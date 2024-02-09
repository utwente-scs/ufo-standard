% ------------ gufo_t_AbstractIndividualType ------------

% DisjointClasses(<http://purl.org/nemo/gufo/types#AbstractIndividualType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom17,axiom,(![X0]:~(gufo_t_AbstractIndividualType(X0)&gufo_t_ConcreteIndividualType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#AbstractIndividualType> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom60,axiom,(![X0]:(gufo_t_AbstractIndividualType(X0)=>gufo_i_Type(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#AbstractIndividualType>))
fof(axiom248,axiom,(![X]:(gufo_t_AbstractIndividualType(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#AbstractIndividualType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom361,axiom,(![X0]:~(gufo_t_AbstractIndividualType(X0)&gufo_t_RelationshipType(X0)))).

% ------------ gufo_t_ConcreteIndividualType ------------

% DisjointClasses(<http://purl.org/nemo/gufo/types#ConcreteIndividualType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom84,axiom,(![X0]:~(gufo_t_ConcreteIndividualType(X0)&gufo_t_RelationshipType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#ConcreteIndividualType>))
fof(axiom311,axiom,(![X]:(gufo_t_ConcreteIndividualType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#ConcreteIndividualType> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom314,axiom,(![X0]:(gufo_t_ConcreteIndividualType(X0)=>gufo_i_Type(X0)))).


% ------------ gufo_t_EndurantType ------------

% DisjointClasses(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/types#EventType>)
fof(axiom51,axiom,(![X0]:~(gufo_t_EndurantType(X0)&gufo_t_EventType(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/types#SituationType>)
fof(axiom87,axiom,(![X0]:~(gufo_t_EndurantType(X0)&gufo_t_SituationType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#EndurantType>))
fof(axiom191,axiom,(![X]:(gufo_t_EndurantType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom246,axiom,(![X0]:(gufo_t_EndurantType(X0)=>gufo_t_ConcreteIndividualType(X0)))).


% ------------ gufo_t_EventType ------------

% DisjointClasses(<http://purl.org/nemo/gufo/types#EventType> <http://purl.org/nemo/gufo/types#SituationType>)
fof(axiom95,axiom,(![X0]:~(gufo_t_EventType(X0)&gufo_t_SituationType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#EventType>))
fof(axiom103,axiom,(![X]:(gufo_t_EventType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#EventType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom368,axiom,(![X0]:(gufo_t_EventType(X0)=>gufo_t_ConcreteIndividualType(X0)))).


% ------------ gufo_t_RelationshipType ------------

% Declaration(Class(<http://purl.org/nemo/gufo/types#RelationshipType>))
fof(axiom280,axiom,(![X]:(gufo_t_RelationshipType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#RelationshipType> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom384,axiom,(![X0]:(gufo_t_RelationshipType(X0)=>gufo_i_Type(X0)))).


% ------------ gufo_t_SituationType ------------

% Declaration(Class(<http://purl.org/nemo/gufo/types#SituationType>))
fof(axiom23,axiom,(![X]:(gufo_t_SituationType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#SituationType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom195,axiom,(![X0]:(gufo_t_SituationType(X0)=>gufo_t_ConcreteIndividualType(X0)))).


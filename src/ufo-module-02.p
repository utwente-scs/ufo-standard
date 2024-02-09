% ------------ gufo_o_Collection ------------

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#Collection>))
fof(axiom125,axiom,(![X]:(gufo_o_Collection(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom215,axiom,(![X0]:(gufo_o_Collection(X0)=>gufo_i_Object(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom256,axiom,(![X0]:~(gufo_o_Collection(X0)&gufo_o_FunctionalComplex(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom257,axiom,(![X1]:~(gufo_o_Collection(X1)&gufo_o_Quantity(X1)))).


% ------------ gufo_o_FunctionalComplex ------------

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom222,axiom,(![X0]:(gufo_o_FunctionalComplex(X0)=>gufo_i_Object(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex>))
fof(axiom238,axiom,(![X]:(gufo_o_FunctionalComplex(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom258,axiom,(![X2]:~(gufo_o_FunctionalComplex(X2)&gufo_o_Quantity(X2)))).


% ------------ gufo_o_Quantity ------------

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#Quantity>))
fof(axiom186,axiom,(![X]:(gufo_o_Quantity(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#Quantity> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom346,axiom,(![X0]:(gufo_o_Quantity(X0)=>gufo_i_Object(X0)))).


% ------------ gufo_o_FixedCollection ------------

% DisjointUnion(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#VariableCollection> )
fof(axiom81,axiom,(![X0]:(gufo_o_Collection(X0)<=>(gufo_o_FixedCollection(X0)|gufo_o_VariableCollection(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#VariableCollection> )
fof(axiom82,axiom,(![X1]:~(gufo_o_FixedCollection(X1)&gufo_o_VariableCollection(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#VariableCollection>)
fof(axiom94,axiom,(![X0]:~(gufo_o_FixedCollection(X0)&gufo_o_VariableCollection(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom159,axiom,(![X0]:(gufo_o_FixedCollection(X0)=>gufo_o_Collection(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#FixedCollection>))
fof(axiom272,axiom,(![X]:(gufo_o_FixedCollection(X)=>owl_Thing(X)))).


% ------------ gufo_o_VariableCollection ------------

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#VariableCollection>))
fof(axiom64,axiom,(![X]:(gufo_o_VariableCollection(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#VariableCollection> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom273,axiom,(![X0]:(gufo_o_VariableCollection(X0)=>gufo_o_Collection(X0)))).


% ------------------------------------------------------------------------------------

% ------------ gufo_o_isObjectProperPartOf ------------

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom122,axiom,(![X0,X1]:(gufo_o_isObjectProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>))
fof(axiom135,axiom,(![X,Y]:(gufo_o_isObjectProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>))
fof(axiom136,axiom,(![X,Y]:(gufo_o_isObjectProperPartOf(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom156,axiom,(![X0,X1]:(gufo_o_isObjectProperPartOf(X0,X1)=>gufo_i_Object(X1)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom175,axiom,(![X0,X1,X2]:((gufo_o_isObjectProperPartOf(X0,X1)&gufo_o_isObjectProperPartOf(X1,X2))=>gufo_o_isObjectProperPartOf(X0,X2)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom214,axiom,(![X0,X1]:(gufo_o_isObjectProperPartOf(X0,X1)=>gufo_i_Object(X0)))).


% ------------ gufo_o_isCollectionMemberOf ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom38,axiom,(![X0,X1]:(gufo_o_isCollectionMemberOf(X0,X1)=>gufo_o_Collection(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf>))
fof(axiom178,axiom,(![X,Y]:(gufo_o_isCollectionMemberOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf>))
fof(axiom179,axiom,(![X,Y]:(gufo_o_isCollectionMemberOf(X,Y)=>owl_Thing(Y)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom229,axiom,(![X0,X1]:(gufo_o_isCollectionMemberOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom249,axiom,(![X0,X1]:(gufo_o_isCollectionMemberOf(X0,X1)=>gufo_i_Object(X0)))).


% ------------ gufo_o_isComponentOf ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf>))
fof(axiom116,axiom,(![X,Y]:(gufo_o_isComponentOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf>))
fof(axiom117,axiom,(![X,Y]:(gufo_o_isComponentOf(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex>)
fof(axiom139,axiom,(![X0,X1]:(gufo_o_isComponentOf(X0,X1)=>gufo_o_FunctionalComplex(X1)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom169,axiom,(![X0,X1]:(gufo_o_isComponentOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom371,axiom,(![X0,X1]:(gufo_o_isComponentOf(X0,X1)=>gufo_i_Object(X0)))).


% ------------ gufo_o_isSubCollectionOf ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom118,axiom,(![X0,X1]:(gufo_o_isSubCollectionOf(X0,X1)=>gufo_o_Collection(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom261,axiom,(![X0,X1]:(gufo_o_isSubCollectionOf(X0,X1)=>gufo_o_Collection(X0)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf>)
fof(axiom294,axiom,(![X0,X1,X2]:((gufo_o_isSubCollectionOf(X0,X1)&gufo_o_isSubCollectionOf(X1,X2))=>gufo_o_isSubCollectionOf(X0,X2)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom335,axiom,(![X0,X1]:(gufo_o_isSubCollectionOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf>))
fof(axiom338,axiom,(![X,Y]:(gufo_o_isSubCollectionOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf>))
fof(axiom339,axiom,(![X,Y]:(gufo_o_isSubCollectionOf(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_o_isSubQuantityOf ------------

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom36,axiom,(![X0,X1]:(gufo_o_isSubQuantityOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom106,axiom,(![X0,X1]:(gufo_o_isSubQuantityOf(X0,X1)=>gufo_o_Quantity(X1)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf>)
fof(axiom322,axiom,(![X0,X1,X2]:((gufo_o_isSubQuantityOf(X0,X1)&gufo_o_isSubQuantityOf(X1,X2))=>gufo_o_isSubQuantityOf(X0,X2)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom340,axiom,(![X0,X1]:(gufo_o_isSubQuantityOf(X0,X1)=>gufo_o_Quantity(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf>))
fof(axiom362,axiom,(![X,Y]:(gufo_o_isSubQuantityOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf>))
fof(axiom363,axiom,(![X,Y]:(gufo_o_isSubQuantityOf(X,Y)=>owl_Thing(Y)))).

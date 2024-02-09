% ------------ gufo_i_Individual ------------ 

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Individual> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom174,axiom,(![X0]:~(gufo_i_Individual(X0)&gufo_i_Type(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Individual>))
fof(axiom358,axiom,(![X]:(gufo_i_Individual(X)=>owl_Thing(X)))).


% ------------ gufo_i_Type ------------ 

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Type>))
fof(axiom301,axiom,(![X]:(gufo_i_Type(X)=>owl_Thing(X)))).


% ------------ gufo_i_AbstractIndividual ------------ 

% SubClassOf(<http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#Individual>)
fof(axiom48,axiom,(![X0]:(gufo_i_AbstractIndividual(X0)=>gufo_i_Individual(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Individual> <http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual> )
fof(axiom120,axiom,(![X0]:(gufo_i_Individual(X0)<=>(gufo_i_AbstractIndividual(X0)|gufo_i_ConcreteIndividual(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Individual> <http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual> )
fof(axiom121,axiom,(![X1]:~(gufo_i_AbstractIndividual(X1)&gufo_i_ConcreteIndividual(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom152,axiom,(![X0]:~(gufo_i_AbstractIndividual(X0)&gufo_i_ConcreteIndividual(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#AbstractIndividual>))
fof(axiom345,axiom,(![X]:(gufo_i_AbstractIndividual(X)=>owl_Thing(X)))).


% ------------ gufo_i_ConcreteIndividual ------------ 

% SubClassOf(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Individual>)
fof(axiom110,axiom,(![X0]:(gufo_i_ConcreteIndividual(X0)=>gufo_i_Individual(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom385,axiom,(![X]:(gufo_i_ConcreteIndividual(X)=>owl_Thing(X)))).


% ------------ gufo_i_Endurant ------------ 

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom83,axiom,(![X]:(gufo_i_Endurant(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom267,axiom,(![X0]:(gufo_i_Endurant(X0)=>gufo_i_ConcreteIndividual(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom288,axiom,(![X0]:(gufo_i_ConcreteIndividual(X0)<=>(gufo_i_Endurant(X0)|gufo_i_Event(X0)|gufo_i_Situation(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom289,axiom,(![X1]:~(gufo_i_Endurant(X1)&gufo_i_Event(X1)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom290,axiom,(![X2]:~(gufo_i_Endurant(X2)&gufo_i_Situation(X2)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom374,axiom,(![X0]:~(gufo_i_Endurant(X0)&gufo_i_Event(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom375,axiom,(![X1]:~(gufo_i_Endurant(X1)&gufo_i_Situation(X1)))).


% ------------ gufo_i_Event ------------ 

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom43,axiom,(![X0]:(gufo_i_Event(X0)=>gufo_i_ConcreteIndividual(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Event>))
fof(axiom211,axiom,(![X]:(gufo_i_Event(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom291,axiom,(![X3]:~(gufo_i_Event(X3)&gufo_i_Situation(X3)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom376,axiom,(![X2]:~(gufo_i_Event(X2)&gufo_i_Situation(X2)))).


% ------------ gufo_i_Situation ------------ 

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Situation> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom253,axiom,(![X0]:(gufo_i_Situation(X0)=>gufo_i_ConcreteIndividual(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Situation>))
fof(axiom383,axiom,(![X]:(gufo_i_Situation(X)=>owl_Thing(X)))).


% ------------ gufo_i_Aspect ------------ 

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom56,axiom,(![X0]:~(gufo_i_Aspect(X0)&gufo_i_Object(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Object> )
fof(axiom224,axiom,(![X0]:(gufo_i_Endurant(X0)<=>(gufo_i_Aspect(X0)|gufo_i_Object(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Object> )
fof(axiom225,axiom,(![X1]:~(gufo_i_Aspect(X1)&gufo_i_Object(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom286,axiom,(![X0]:(gufo_i_Aspect(X0)=>gufo_i_Endurant(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Aspect>))
fof(axiom342,axiom,(![X]:(gufo_i_Aspect(X)=>owl_Thing(X)))).

% ------------ gufo_i_Object ------------ 

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom310,axiom,(![X]:(gufo_i_Object(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Object> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom378,axiom,(![X0]:(gufo_i_Object(X0)=>gufo_i_Endurant(X0)))).


% ------------------------------------------------------------------------------------


% ------------ gufo_i_constitutes ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#constitutes>))
fof(axiom164,axiom,(![X,Y]:(gufo_i_constitutes(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#constitutes>))
fof(axiom165,axiom,(![X,Y]:(gufo_i_constitutes(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/individuals#constitutes> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom166,axiom,(![X0,X1]:(gufo_i_constitutes(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/individuals#constitutes> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom196,axiom,(![X0,X1]:(gufo_i_constitutes(X0,X1)=>gufo_i_ConcreteIndividual(X1)))).


% ------------ gufo_i_isProperPartOf ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/individuals#isProperPartOf> owl:Thing)
fof(axiom19,axiom,(![X0,X1]:(gufo_i_isProperPartOf(X0,X1)=>owl_Thing(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/individuals#isProperPartOf> owl:Thing)
fof(axiom114,axiom,(![X0,X1]:(gufo_i_isProperPartOf(X0,X1)=>owl_Thing(X0)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom155,axiom,(![X0,X1,X2]:((gufo_i_isProperPartOf(X0,X1)&gufo_i_isProperPartOf(X1,X2))=>gufo_i_isProperPartOf(X0,X2)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#isProperPartOf>))
fof(axiom197,axiom,(![X,Y]:(gufo_i_isProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#isProperPartOf>))
fof(axiom198,axiom,(![X,Y]:(gufo_i_isProperPartOf(X,Y)=>owl_Thing(Y)))).


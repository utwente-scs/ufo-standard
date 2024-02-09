% ------------ gufo_e_Participation ------------

% Declaration(Class(<http://purl.org/nemo/gufo/events#Participation>))
fof(axiom130,axiom,(![X]:(gufo_e_Participation(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/events#Participation> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom323,axiom,(![X0]:(gufo_e_Participation(X0)=>gufo_i_Event(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/events#Participation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/events#participatedIn>) <http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom341,axiom,(![X0]:(gufo_e_Participation(X0)=>(?[X1]:(gufo_e_participatedIn(X1,X0)&gufo_i_Object(X1))&![X2,X3]:((gufo_e_participatedIn(X2,X0)&gufo_i_Object(X2)&gufo_e_participatedIn(X3,X0)&gufo_i_Object(X3))=>~(X2!=X3)))))).


% ------------------------------------------------------------------------------------

% ------------ gufo_e_broughtAbout ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#broughtAbout> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom285,axiom,(![X0,X1]:(gufo_e_broughtAbout(X0,X1)=>gufo_i_Event(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#broughtAbout> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom299,axiom,(![X0,X1]:(gufo_e_broughtAbout(X0,X1)=>gufo_i_Situation(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#broughtAbout>))
fof(axiom330,axiom,(![X,Y]:(gufo_e_broughtAbout(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#broughtAbout>))
fof(axiom331,axiom,(![X,Y]:(gufo_e_broughtAbout(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_e_contributedToTrigger ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#contributedToTrigger> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom75,axiom,(![X0,X1]:(gufo_e_contributedToTrigger(X0,X1)=>gufo_i_Event(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#contributedToTrigger>))
fof(axiom107,axiom,(![X,Y]:(gufo_e_contributedToTrigger(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#contributedToTrigger>))
fof(axiom108,axiom,(![X,Y]:(gufo_e_contributedToTrigger(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#contributedToTrigger> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom201,axiom,(![X0,X1]:(gufo_e_contributedToTrigger(X0,X1)=>gufo_i_Situation(X0)))).


% ------------ gufo_e_historicallyDependsOn ------------

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/events#historicallyDependsOn>)
fof(axiom68,axiom,(![X0,X1,X2]:((gufo_e_historicallyDependsOn(X0,X1)&gufo_e_historicallyDependsOn(X1,X2))=>gufo_e_historicallyDependsOn(X0,X2)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#historicallyDependsOn>))
fof(axiom123,axiom,(![X,Y]:(gufo_e_historicallyDependsOn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#historicallyDependsOn>))
fof(axiom124,axiom,(![X,Y]:(gufo_e_historicallyDependsOn(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#historicallyDependsOn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom150,axiom,(![X0,X1]:(gufo_e_historicallyDependsOn(X0,X1)=>gufo_i_ConcreteIndividual(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#historicallyDependsOn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom189,axiom,(![X0,X1]:(gufo_e_historicallyDependsOn(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).


% ------------ gufo_e_isEventProperPartOf ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#isEventProperPartOf>))
fof(axiom57,axiom,(![X,Y]:(gufo_e_isEventProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#isEventProperPartOf>))
fof(axiom58,axiom,(![X,Y]:(gufo_e_isEventProperPartOf(X,Y)=>owl_Thing(Y)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/events#isEventProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom99,axiom,(![X0,X1]:(gufo_e_isEventProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/events#isEventProperPartOf>)
fof(axiom105,axiom,(![X0,X1,X2]:((gufo_e_isEventProperPartOf(X0,X1)&gufo_e_isEventProperPartOf(X1,X2))=>gufo_e_isEventProperPartOf(X0,X2)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#isEventProperPartOf> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom147,axiom,(![X0,X1]:(gufo_e_isEventProperPartOf(X0,X1)=>gufo_i_Event(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#isEventProperPartOf> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom185,axiom,(![X0,X1]:(gufo_e_isEventProperPartOf(X0,X1)=>gufo_i_Event(X1)))).


% ------------ gufo_e_manifestedIn ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#manifestedIn> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom85,axiom,(![X0,X1]:(gufo_e_manifestedIn(X0,X1)=>gufo_i_Aspect(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#manifestedIn>))
fof(axiom137,axiom,(![X,Y]:(gufo_e_manifestedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#manifestedIn>))
fof(axiom138,axiom,(![X,Y]:(gufo_e_manifestedIn(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#manifestedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom176,axiom,(![X0,X1]:(gufo_e_manifestedIn(X0,X1)=>gufo_i_Event(X1)))).


% ------------ gufo_e_participatedIn ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#participatedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom146,axiom,(![X0,X1]:(gufo_e_participatedIn(X0,X1)=>gufo_i_Event(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#participatedIn>))
fof(axiom182,axiom,(![X,Y]:(gufo_e_participatedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#participatedIn>))
fof(axiom183,axiom,(![X,Y]:(gufo_e_participatedIn(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#participatedIn> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom193,axiom,(![X0,X1]:(gufo_e_participatedIn(X0,X1)=>gufo_i_Object(X0)))).


% ------------ gufo_e_wasCreatedIn ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#wasCreatedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom86,axiom,(![X0,X1]:(gufo_e_wasCreatedIn(X0,X1)=>gufo_i_Event(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasCreatedIn>))
fof(axiom281,axiom,(![X,Y]:(gufo_e_wasCreatedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasCreatedIn>))
fof(axiom282,axiom,(![X,Y]:(gufo_e_wasCreatedIn(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#wasCreatedIn> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom344,axiom,(![X0,X1]:(gufo_e_wasCreatedIn(X0,X1)=>gufo_i_Endurant(X0)))).


% ------------ gufo_e_wasTerminatedIn ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#wasTerminatedIn> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom18,axiom,(![X0,X1]:(gufo_e_wasTerminatedIn(X0,X1)=>gufo_i_Endurant(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#wasTerminatedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom235,axiom,(![X0,X1]:(gufo_e_wasTerminatedIn(X0,X1)=>gufo_i_Event(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasTerminatedIn>))
fof(axiom270,axiom,(![X,Y]:(gufo_e_wasTerminatedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasTerminatedIn>))
fof(axiom271,axiom,(![X,Y]:(gufo_e_wasTerminatedIn(X,Y)=>owl_Thing(Y)))).


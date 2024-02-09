% ------------ gufo_ea_ExtrinsicMode ------------

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator> )
fof(axiom15,axiom,(![X0]:(gufo_ia_ExtrinsicAspect(X0)<=>(gufo_ea_ExtrinsicMode(X0)|gufo_ea_Relator(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator> )
fof(axiom16,axiom,(![X1]:~(gufo_ea_ExtrinsicMode(X1)&gufo_ea_Relator(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> ObjectSomeValuesFrom(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom126,axiom,(![X0]:(gufo_ea_ExtrinsicMode(X0)=>?[X1]:(gufo_ea_externallyDependsOn(X0,X1)&gufo_i_ConcreteIndividual(X1))))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom268,axiom,(![X0]:(gufo_ea_ExtrinsicMode(X0)=>(?[X1]:(gufo_ia_inheresIn(X0,X1)&gufo_i_ConcreteIndividual(X1))&![X2,X3]:((gufo_ia_inheresIn(X0,X2)&gufo_i_ConcreteIndividual(X2)&gufo_ia_inheresIn(X0,X3)&gufo_i_ConcreteIndividual(X3))=>~(X2!=X3)))))).

% DisjointClasses(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator>)
fof(axiom293,axiom,(![X0]:~(gufo_ea_ExtrinsicMode(X0)&gufo_ea_Relator(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode>))
fof(axiom295,axiom,(![X]:(gufo_ea_ExtrinsicMode(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect>)
fof(axiom348,axiom,(![X0]:(gufo_ea_ExtrinsicMode(X0)=>gufo_ia_ExtrinsicAspect(X0)))).


% ------------ gufo_ea_Relator ------------

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#Relator> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect>)
fof(axiom76,axiom,(![X0]:(gufo_ea_Relator(X0)=>gufo_ia_ExtrinsicAspect(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#Relator> ObjectMinCardinality(2 <http://purl.org/nemo/gufo/extrinsic-aspects#mediates> <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom192,axiom,(![X0]:(gufo_ea_Relator(X0)=>?[X1,X2]:((X1!=X2)&gufo_ea_mediates(X0,X1)&gufo_i_Endurant(X1)&gufo_ea_mediates(X0,X2)&gufo_i_Endurant(X2))))).

% Declaration(Class(<http://purl.org/nemo/gufo/extrinsic-aspects#Relator>))
fof(axiom334,axiom,(![X]:(gufo_ea_Relator(X)=>owl_Thing(X)))).


% ------------------------------------------------------------------------------------

% ------------ gufo_ea_externallyDependsOn ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn> <http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode>)
fof(axiom101,axiom,(![X0,X1]:(gufo_ea_externallyDependsOn(X0,X1)=>gufo_ea_ExtrinsicMode(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn>))
fof(axiom153,axiom,(![X,Y]:(gufo_ea_externallyDependsOn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn>))
fof(axiom154,axiom,(![X,Y]:(gufo_ea_externallyDependsOn(X,Y)=>owl_Thing(Y)))).

% IrreflexiveObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn>)
fof(axiom239,axiom,(![X0]:~gufo_ea_externallyDependsOn(X0,X0))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom287,axiom,(![X0,X1]:(gufo_ea_externallyDependsOn(X0,X1)=>gufo_i_Endurant(X1)))).


% ------------ gufo_ea_mediates ------------

% IrreflexiveObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>)
fof(axiom25,axiom,(![X0]:~gufo_ea_mediates(X0,X0))).

% AsymmetricObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>)
fof(axiom39,axiom,(![X0,X1]:~(gufo_ea_mediates(X0,X1)&gufo_ea_mediates(X1,X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom63,axiom,(![X0,X1]:(gufo_ea_mediates(X0,X1)=>gufo_i_Endurant(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator>)
fof(axiom266,axiom,(![X0,X1]:(gufo_ea_mediates(X0,X1)=>gufo_ea_Relator(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>))
fof(axiom305,axiom,(![X,Y]:(gufo_ea_mediates(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>))
fof(axiom306,axiom,(![X,Y]:(gufo_ea_mediates(X,Y)=>owl_Thing(Y)))).

% ------------ gufo_ia_ExtrinsicAspect ------------

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect>))
fof(axiom127,axiom,(![X]:(gufo_ia_ExtrinsicAspect(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> )
fof(axiom128,axiom,(![X0]:(gufo_i_Aspect(X0)<=>(gufo_ia_ExtrinsicAspect(X0)|gufo_ia_IntrinsicAspect(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> )
fof(axiom129,axiom,(![X1]:~(gufo_ia_ExtrinsicAspect(X1)&gufo_ia_IntrinsicAspect(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom212,axiom,(![X0]:(gufo_ia_ExtrinsicAspect(X0)=>gufo_i_Aspect(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>)
fof(axiom277,axiom,(![X0]:~(gufo_ia_ExtrinsicAspect(X0)&gufo_ia_IntrinsicAspect(X0)))).


% ------------ gufo_ia_IntrinsicAspect ------------

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom158,axiom,(![X0]:(gufo_ia_IntrinsicAspect(X0)=>gufo_i_Aspect(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>))
fof(axiom353,axiom,(![X]:(gufo_ia_IntrinsicAspect(X)=>owl_Thing(X)))).


% ------------ gufo_ia_IntrinsicMode ------------

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>)
fof(axiom77,axiom,(![X0]:(gufo_ia_IntrinsicMode(X0)=>gufo_ia_IntrinsicAspect(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom221,axiom,(![X0]:(gufo_ia_IntrinsicAspect(X0)=>(?[X1]:(gufo_ia_inheresIn(X0,X1)&gufo_i_ConcreteIndividual(X1))&![X2,X3]:((gufo_ia_inheresIn(X0,X2)&gufo_i_ConcreteIndividual(X2)&gufo_ia_inheresIn(X0,X3)&gufo_i_ConcreteIndividual(X3))=>~(X2!=X3)))))).

% DisjointClasses(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#Quality>)
fof(axiom223,axiom,(![X0]:~(gufo_ia_IntrinsicMode(X0)&gufo_ia_Quality(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode>))
fof(axiom264,axiom,(![X]:(gufo_ia_IntrinsicMode(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#Quality> )
fof(axiom328,axiom,(![X0]:(gufo_ia_IntrinsicAspect(X0)<=>(gufo_ia_IntrinsicMode(X0)|gufo_ia_Quality(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#Quality> )
fof(axiom329,axiom,(![X1]:~(gufo_ia_IntrinsicMode(X1)&gufo_ia_Quality(X1)))).


% ------------ gufo_ia_Quality ------------

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#Quality>))
fof(axiom173,axiom,(![X]:(gufo_ia_Quality(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#Quality> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>)
fof(axiom354,axiom,(![X0]:(gufo_ia_Quality(X0)=>gufo_ia_IntrinsicAspect(X0)))).


% ------------------------------------------------------------------------------------

% ------------ gufo_ia_inheresIn ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>))
fof(axiom45,axiom,(![X,Y]:(gufo_ia_inheresIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>))
fof(axiom46,axiom,(![X,Y]:(gufo_ia_inheresIn(X,Y)=>owl_Thing(Y)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>)
fof(axiom113,axiom,(![X0,X1,X2]:((gufo_ia_inheresIn(X0,X1)&gufo_ia_inheresIn(X0,X2))=>(X1=X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom302,axiom,(![X0,X1]:(gufo_ia_inheresIn(X0,X1)=>gufo_i_ConcreteIndividual(X1)))).

% IrreflexiveObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>)
fof(axiom321,axiom,(![X0]:~gufo_ia_inheresIn(X0,X0))).

% AsymmetricObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>)
fof(axiom332,axiom,(![X0,X1]:~(gufo_ia_inheresIn(X0,X1)&gufo_ia_inheresIn(X1,X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom370,axiom,(![X0,X1]:(gufo_ia_inheresIn(X0,X1)=>gufo_i_Aspect(X0)))).


% ------------ gufo_ia_isAspectProperPartOf ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf>))
fof(axiom240,axiom,(![X,Y]:(gufo_ia_isAspectProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf>))
fof(axiom241,axiom,(![X,Y]:(gufo_ia_isAspectProperPartOf(X,Y)=>owl_Thing(Y)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf>)
fof(axiom292,axiom,(![X0,X1,X2]:((gufo_ia_isAspectProperPartOf(X0,X1)&gufo_ia_isAspectProperPartOf(X1,X2))=>gufo_ia_isAspectProperPartOf(X0,X2)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom309,axiom,(![X0,X1]:(gufo_ia_isAspectProperPartOf(X0,X1)=>gufo_i_Aspect(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom347,axiom,(![X0,X1]:(gufo_ia_isAspectProperPartOf(X0,X1)=>gufo_i_Aspect(X1)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom355,axiom,(![X0,X1]:(gufo_ia_isAspectProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

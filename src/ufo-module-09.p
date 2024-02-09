% ------------ gufo_et_AntiRigidType------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>)
fof(axiom148,axiom,(![X0]:(gufo_et_AntiRigidType(X0)=>gufo_et_NonRigidType(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType>)
fof(axiom217,axiom,(![X0]:~(gufo_et_AntiRigidType(X0)&gufo_et_SemiRigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#AntiRigidType>))
fof(axiom265,axiom,(![X]:(gufo_et_AntiRigidType(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType> )
fof(axiom298,axiom,(![X1]:~(gufo_et_AntiRigidType(X1)&gufo_et_SemiRigidType(X1)))).

% DisjointUnion(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType> )
fof(axiom297,axiom,(![X0]:(gufo_et_NonRigidType(X0)<=>(gufo_et_AntiRigidType(X0)|gufo_et_SemiRigidType(X0))))).


% ------------ gufo_et_Category------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Category> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom263,axiom,(![X0]:(gufo_et_Category(X0)=>gufo_et_RigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Category>))
fof(axiom317,axiom,(![X]:(gufo_et_Category(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Category> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom369,axiom,(![X0]:(gufo_et_Category(X0)=>gufo_et_NonSortal(X0)))).


% ------------ gufo_et_Kind------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Kind> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom50,axiom,(![X0]:(gufo_et_Kind(X0)=>gufo_et_RigidType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Kind> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom93,axiom,(![X0]:(gufo_et_Kind(X0)=>gufo_et_Sortal(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#Kind> <http://purl.org/nemo/gufo/endurant-types#SubKind>)
fof(axiom319,axiom,(![X0]:~(gufo_et_Kind(X0)&gufo_et_SubKind(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Kind>))
fof(axiom160,axiom,(![X]:(gufo_et_Kind(X)=>owl_Thing(X)))).


% ------------ gufo_et_Mixin------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Mixin> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType>)
fof(axiom177,axiom,(![X0]:(gufo_et_Mixin(X0)=>gufo_et_SemiRigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Mixin>))
fof(axiom200,axiom,(![X]:(gufo_et_Mixin(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Mixin> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom245,axiom,(![X0]:(gufo_et_Mixin(X0)=>gufo_et_NonSortal(X0)))).


% ------------ gufo_et_NonRigidType------------

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#NonRigidType>))
fof(axiom119,axiom,(![X]:(gufo_et_NonRigidType(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom170,axiom,(![X0]:~(gufo_et_NonRigidType(X0)&gufo_et_RigidType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom236,axiom,(![X0]:(gufo_et_NonRigidType(X0)=>gufo_t_EndurantType(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#RigidType> )
fof(axiom380,axiom,(![X0]:(gufo_t_EndurantType(X0)<=>(gufo_et_NonRigidType(X0)|gufo_et_RigidType(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#RigidType> )
fof(axiom381,axiom,(![X1]:~(gufo_et_NonRigidType(X1)&gufo_et_RigidType(X1)))).


% ------------ gufo_et_NonSortal------------

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom157,axiom,(![X0]:~(gufo_et_NonSortal(X0)&gufo_et_Sortal(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom234,axiom,(![X0]:(gufo_et_NonSortal(X0)=>gufo_t_EndurantType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#NonSortal>))
fof(axiom260,axiom,(![X]:(gufo_et_NonSortal(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/endurant-types#Sortal> )
fof(axiom356,axiom,(![X0]:(gufo_t_EndurantType(X0)<=>(gufo_et_NonSortal(X0)|gufo_et_Sortal(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/endurant-types#Sortal> )
fof(axiom357,axiom,(![X1]:~(gufo_et_NonSortal(X1)&gufo_et_Sortal(X1)))).


% ------------ gufo_et_Phase------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Phase> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom47,axiom,(![X0]:(gufo_et_Phase(X0)=>gufo_et_Sortal(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#Phase> <http://purl.org/nemo/gufo/endurant-types#Role>)
fof(axiom168,axiom,(![X0]:~(gufo_et_Phase(X0)&gufo_et_Role(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Phase> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom327,axiom,(![X0]:(gufo_et_Phase(X0)=>gufo_et_AntiRigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Phase>))
fof(axiom366,axiom,(![X]:(gufo_et_Phase(X)=>owl_Thing(X)))).


% ------------ gufo_et_PhaseMixin------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom67,axiom,(![X0]:(gufo_et_PhaseMixin(X0)=>gufo_et_NonSortal(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom92,axiom,(![X0]:(gufo_et_PhaseMixin(X0)=>gufo_et_AntiRigidType(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin> <http://purl.org/nemo/gufo/endurant-types#RoleMixin>)
fof(axiom132,axiom,(![X0]:~(gufo_et_PhaseMixin(X0)&gufo_et_RoleMixin(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin>))
fof(axiom151,axiom,(![X]:(gufo_et_PhaseMixin(X)=>owl_Thing(X)))).


% ------------ gufo_et_RigidType------------

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#RigidType>))
fof(axiom54,axiom,(![X]:(gufo_et_RigidType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#RigidType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom80,axiom,(![X0]:(gufo_et_RigidType(X0)=>gufo_t_EndurantType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#SubKind> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom279,axiom,(![X0]:(gufo_et_SubKind(X0)=>gufo_et_RigidType(X0)))).


% ------------ gufo_et_Role------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Role> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom96,axiom,(![X0]:(gufo_et_Role(X0)=>gufo_et_AntiRigidType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Role> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom104,axiom,(![X0]:(gufo_et_Role(X0)=>gufo_et_Sortal(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Role>))
fof(axiom278,axiom,(![X]:(gufo_et_Role(X)=>owl_Thing(X)))).


% ------------ gufo_et_RoleMixin------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#RoleMixin> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom71,axiom,(![X0]:(gufo_et_RoleMixin(X0)=>gufo_et_NonSortal(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#RoleMixin> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom163,axiom,(![X0]:(gufo_et_RoleMixin(X0)=>gufo_et_AntiRigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#RoleMixin>))
fof(axiom360,axiom,(![X]:(gufo_et_RoleMixin(X)=>owl_Thing(X)))).


% ------------ gufo_et_SemiRigidType------------

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#SemiRigidType>))
fof(axiom37,axiom,(![X]:(gufo_et_SemiRigidType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#SemiRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>)
fof(axiom111,axiom,(![X0]:(gufo_et_SemiRigidType(X0)=>gufo_et_NonRigidType(X0)))).


% ------------ gufo_et_Sortal------------

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Sortal>))
fof(axiom73,axiom,(![X]:(gufo_et_Sortal(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Sortal> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom231,axiom,(![X0]:(gufo_et_Sortal(X0)=>gufo_t_EndurantType(X0)))).


% ------------ gufo_et_SubKind------------

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#SubKind> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom100,axiom,(![X0]:(gufo_et_SubKind(X0)=>gufo_et_Sortal(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#SubKind>))
fof(axiom65,axiom,(![X]:(gufo_et_SubKind(X)=>owl_Thing(X)))).

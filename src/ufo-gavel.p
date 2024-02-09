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

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator> )
fof(axiom15,axiom,(![X0]:(gufo_ia_ExtrinsicAspect(X0)<=>(gufo_ea_ExtrinsicMode(X0)|gufo_ea_Relator(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator> )
fof(axiom16,axiom,(![X1]:~(gufo_ea_ExtrinsicMode(X1)&gufo_ea_Relator(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#AbstractIndividualType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom17,axiom,(![X0]:~(gufo_t_AbstractIndividualType(X0)&gufo_t_ConcreteIndividualType(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#wasTerminatedIn> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom18,axiom,(![X0,X1]:(gufo_e_wasTerminatedIn(X0,X1)=>gufo_i_Endurant(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/individuals#isProperPartOf> owl:Thing)
fof(axiom19,axiom,(![X0,X1]:(gufo_i_isProperPartOf(X0,X1)=>owl_Thing(X1)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole>)
fof(axiom20,axiom,(![X0,X1,X2]:((gufo_s_concernsTemporaryWhole(X0,X1)&gufo_s_concernsTemporaryWhole(X0,X2))=>(X1=X2)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom21,axiom,(![X0]:~(gufo_s_TemporaryConstitutionSituation(X0)&gufo_s_TemporaryInstantiationSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsQualityType> <http://purl.org/nemo/gufo/types#EndurantType>))
fof(axiom22,axiom,(![X0]:(gufo_s_QualityValueAttributionSituation(X0)=>(?[X1]:(gufo_s_concernsQualityType(X0,X1)&gufo_t_EndurantType(X1))&![X2,X3]:((gufo_s_concernsQualityType(X0,X2)&gufo_t_EndurantType(X2)&gufo_s_concernsQualityType(X0,X3)&gufo_t_EndurantType(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#SituationType>))
fof(axiom23,axiom,(![X]:(gufo_t_SituationType(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsRelationshipType> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom24,axiom,(![X0,X1]:(gufo_s_concernsRelationshipType(X0,X1)=>gufo_s_TemporaryRelationshipSituation(X0)))).

% IrreflexiveObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>)
fof(axiom25,axiom,(![X0]:~gufo_ea_mediates(X0,X0))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsNonRigidType>))
fof(axiom26,axiom,(![X,Y]:(gufo_s_concernsNonRigidType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsNonRigidType>))
fof(axiom27,axiom,(![X,Y]:(gufo_s_concernsNonRigidType(X,Y)=>owl_Thing(Y)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation>))
fof(axiom28,axiom,(![X,Y]:(gufo_s_standsInQualifiedInstantiation(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation>))
fof(axiom29,axiom,(![X,Y]:(gufo_s_standsInQualifiedInstantiation(X,Y)=>owl_Thing(Y)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelationshipType>)
fof(axiom30,axiom,(![X0,X1,X2]:((gufo_s_concernsRelationshipType(X0,X1)&gufo_s_concernsRelationshipType(X0,X2))=>(X1=X2)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom31,axiom,(![X0,X1]:(gufo_s_standsInQualifiedParthood(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>))
fof(axiom32,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>(?[X1]:(gufo_s_concernsRelationshipType(X0,X1)&gufo_t_RelationshipType(X1))&![X2,X3]:((gufo_s_concernsRelationshipType(X0,X2)&gufo_t_RelationshipType(X2)&gufo_s_concernsRelationshipType(X0,X3)&gufo_t_RelationshipType(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>))
fof(axiom33,axiom,(![X]:(gufo_s_TemporaryRelationshipSituation(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom34,axiom,(![X0,X1]:(gufo_s_concernsTemporaryWhole(X0,X1)=>gufo_s_TemporaryParthoodSituation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/qualities-advanced#QualityValue>))
fof(axiom35,axiom,(![X]:(gufo_qa_QualityValue(X)=>owl_Thing(X)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom36,axiom,(![X0,X1]:(gufo_o_isSubQuantityOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#SemiRigidType>))
fof(axiom37,axiom,(![X]:(gufo_et_SemiRigidType(X)=>owl_Thing(X)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom38,axiom,(![X0,X1]:(gufo_o_isCollectionMemberOf(X0,X1)=>gufo_o_Collection(X1)))).

% AsymmetricObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>)
fof(axiom39,axiom,(![X0,X1]:~(gufo_ea_mediates(X0,X1)&gufo_ea_mediates(X1,X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution>))
fof(axiom40,axiom,(![X,Y]:(gufo_s_standsInQualifiedConstitution(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution>))
fof(axiom41,axiom,(![X,Y]:(gufo_s_standsInQualifiedConstitution(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom42,axiom,(![X0,X1]:(gufo_s_standsInQualifiedParthood(X0,X1)=>gufo_i_Endurant(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom43,axiom,(![X0]:(gufo_i_Event(X0)=>gufo_i_ConcreteIndividual(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint> <http://www.w3.org/2006/time#Instant>)
fof(axiom44,axiom,(![X0,X1]:(gufo_qa_hasEndPoint(X0,X1)=>time_Instant(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>))
fof(axiom45,axiom,(![X,Y]:(gufo_ia_inheresIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>))
fof(axiom46,axiom,(![X,Y]:(gufo_ia_inheresIn(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Phase> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom47,axiom,(![X0]:(gufo_et_Phase(X0)=>gufo_et_Sortal(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#Individual>)
fof(axiom48,axiom,(![X0]:(gufo_i_AbstractIndividual(X0)=>gufo_i_Individual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom49,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>gufo_i_Situation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Kind> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom50,axiom,(![X0]:(gufo_et_Kind(X0)=>gufo_et_RigidType(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/types#EventType>)
fof(axiom51,axiom,(![X0]:~(gufo_t_EndurantType(X0)&gufo_t_EventType(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom52,axiom,(![X0,X1]:(gufo_s_concernsRelatedEndurant(X0,X1)=>gufo_s_TemporaryRelationshipSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom53,axiom,(![X0]:(gufo_s_TemporaryInstantiationSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedInstantiation(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedInstantiation(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedInstantiation(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#RigidType>))
fof(axiom54,axiom,(![X]:(gufo_et_RigidType(X)=>owl_Thing(X)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom55,axiom,(![X0,X1]:(gufo_s_concernsConstitutedEndurant(X0,X1)=>gufo_i_Endurant(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom56,axiom,(![X0]:~(gufo_i_Aspect(X0)&gufo_i_Object(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#isEventProperPartOf>))
fof(axiom57,axiom,(![X,Y]:(gufo_e_isEventProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#isEventProperPartOf>))
fof(axiom58,axiom,(![X,Y]:(gufo_e_isEventProperPartOf(X,Y)=>owl_Thing(Y)))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>))
fof(axiom59,axiom,(![X]:(gufo_s_QualityValueAttributionSituation(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#AbstractIndividualType> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom60,axiom,(![X0]:(gufo_t_AbstractIndividualType(X0)=>gufo_i_Type(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom61,axiom,(![X0,X1]:(gufo_qa_hasBeginPoint(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom62,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryParthoodSituation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom63,axiom,(![X0,X1]:(gufo_ea_mediates(X0,X1)=>gufo_i_Endurant(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#VariableCollection>))
fof(axiom64,axiom,(![X]:(gufo_o_VariableCollection(X)=>owl_Thing(X)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#SubKind>))
fof(axiom65,axiom,(![X]:(gufo_et_SubKind(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom66,axiom,(![X0]:~(gufo_s_TemporaryInstantiationSituation(X0)&gufo_s_TemporaryParthoodSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom67,axiom,(![X0]:(gufo_et_PhaseMixin(X0)=>gufo_et_NonSortal(X0)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/events#historicallyDependsOn>)
fof(axiom68,axiom,(![X0,X1,X2]:((gufo_e_historicallyDependsOn(X0,X1)&gufo_e_historicallyDependsOn(X1,X2))=>gufo_e_historicallyDependsOn(X0,X2)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelationshipType>))
fof(axiom69,axiom,(![X,Y]:(gufo_s_concernsRelationshipType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelationshipType>))
fof(axiom70,axiom,(![X,Y]:(gufo_s_concernsRelationshipType(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#RoleMixin> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom71,axiom,(![X0]:(gufo_et_RoleMixin(X0)=>gufo_et_NonSortal(X0)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsNonRigidType>)
fof(axiom72,axiom,(![X0,X1,X2]:((gufo_s_concernsNonRigidType(X0,X1)&gufo_s_concernsNonRigidType(X0,X2))=>(X1=X2)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Sortal>))
fof(axiom73,axiom,(![X]:(gufo_et_Sortal(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/high-order-types#categorizes> ObjectIntersectionOf(<http://purl.org/nemo/gufo/individuals#Type> ObjectComplementOf(<http://purl.org/nemo/gufo/types#AbstractIndividualType>) ObjectComplementOf(<http://purl.org/nemo/gufo/types#ConcreteIndividualType>)))
fof(axiom74,axiom,(![X0,X1]:(gufo_ho_categorizes(X0,X1)=>(gufo_i_Type(X0)&~gufo_t_AbstractIndividualType(X0)&owl_Thing(X0)&~gufo_t_ConcreteIndividualType(X0)&owl_Thing(X0))))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#contributedToTrigger> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom75,axiom,(![X0,X1]:(gufo_e_contributedToTrigger(X0,X1)=>gufo_i_Event(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#Relator> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect>)
fof(axiom76,axiom,(![X0]:(gufo_ea_Relator(X0)=>gufo_ia_ExtrinsicAspect(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>)
fof(axiom77,axiom,(![X0]:(gufo_ia_IntrinsicMode(X0)=>gufo_ia_IntrinsicAspect(X0)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsQualityType>)
fof(axiom78,axiom,(![X0,X1,X2]:((gufo_s_concernsQualityType(X0,X1)&gufo_s_concernsQualityType(X0,X2))=>(X1=X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsNonRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>)
fof(axiom79,axiom,(![X0,X1]:(gufo_s_concernsNonRigidType(X0,X1)=>gufo_et_NonRigidType(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#RigidType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom80,axiom,(![X0]:(gufo_et_RigidType(X0)=>gufo_t_EndurantType(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#VariableCollection> )
fof(axiom81,axiom,(![X0]:(gufo_o_Collection(X0)<=>(gufo_o_FixedCollection(X0)|gufo_o_VariableCollection(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#VariableCollection> )
fof(axiom82,axiom,(![X1]:~(gufo_o_FixedCollection(X1)&gufo_o_VariableCollection(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom83,axiom,(![X]:(gufo_i_Endurant(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#ConcreteIndividualType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom84,axiom,(![X0]:~(gufo_t_ConcreteIndividualType(X0)&gufo_t_RelationshipType(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#manifestedIn> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom85,axiom,(![X0,X1]:(gufo_e_manifestedIn(X0,X1)=>gufo_i_Aspect(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#wasCreatedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom86,axiom,(![X0,X1]:(gufo_e_wasCreatedIn(X0,X1)=>gufo_i_Event(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/types#SituationType>)
fof(axiom87,axiom,(![X0]:~(gufo_t_EndurantType(X0)&gufo_t_SituationType(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom88,axiom,(![X0]:~(gufo_s_TemporaryParthoodSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom89,axiom,(![X0]:(gufo_s_QualityValueAttributionSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedAttribution(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedAttribution(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedAttribution(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue>))
fof(axiom90,axiom,(![X,Y]:(gufo_qa_hasReifiedQualityValue(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue>))
fof(axiom91,axiom,(![X,Y]:(gufo_qa_hasReifiedQualityValue(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom92,axiom,(![X0]:(gufo_et_PhaseMixin(X0)=>gufo_et_AntiRigidType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Kind> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom93,axiom,(![X0]:(gufo_et_Kind(X0)=>gufo_et_Sortal(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#VariableCollection>)
fof(axiom94,axiom,(![X0]:~(gufo_o_FixedCollection(X0)&gufo_o_VariableCollection(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#EventType> <http://purl.org/nemo/gufo/types#SituationType>)
fof(axiom95,axiom,(![X0]:~(gufo_t_EventType(X0)&gufo_t_SituationType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Role> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom96,axiom,(![X0]:(gufo_et_Role(X0)=>gufo_et_AntiRigidType(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood>))
fof(axiom97,axiom,(![X,Y]:(gufo_s_standsInQualifiedParthood(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood>))
fof(axiom98,axiom,(![X,Y]:(gufo_s_standsInQualifiedParthood(X,Y)=>owl_Thing(Y)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/events#isEventProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom99,axiom,(![X0,X1]:(gufo_e_isEventProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#SubKind> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom100,axiom,(![X0]:(gufo_et_SubKind(X0)=>gufo_et_Sortal(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn> <http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode>)
fof(axiom101,axiom,(![X0,X1]:(gufo_ea_externallyDependsOn(X0,X1)=>gufo_ea_ExtrinsicMode(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/high-order-types#categorizes> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom102,axiom,(![X0,X1]:(gufo_ho_categorizes(X0,X1)=>gufo_i_Type(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#EventType>))
fof(axiom103,axiom,(![X]:(gufo_t_EventType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Role> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom104,axiom,(![X0]:(gufo_et_Role(X0)=>gufo_et_Sortal(X0)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/events#isEventProperPartOf>)
fof(axiom105,axiom,(![X0,X1,X2]:((gufo_e_isEventProperPartOf(X0,X1)&gufo_e_isEventProperPartOf(X1,X2))=>gufo_e_isEventProperPartOf(X0,X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom106,axiom,(![X0,X1]:(gufo_o_isSubQuantityOf(X0,X1)=>gufo_o_Quantity(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#contributedToTrigger>))
fof(axiom107,axiom,(![X,Y]:(gufo_e_contributedToTrigger(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#contributedToTrigger>))
fof(axiom108,axiom,(![X,Y]:(gufo_e_contributedToTrigger(X,Y)=>owl_Thing(Y)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/high-order-types#partitions> <http://purl.org/nemo/gufo/high-order-types#categorizes>)
fof(axiom109,axiom,(![X0,X1]:(gufo_ho_partitions(X0,X1)=>gufo_ho_categorizes(X0,X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Individual>)
fof(axiom110,axiom,(![X0]:(gufo_i_ConcreteIndividual(X0)=>gufo_i_Individual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#SemiRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>)
fof(axiom111,axiom,(![X0]:(gufo_et_SemiRigidType(X0)=>gufo_et_NonRigidType(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom112,axiom,(![X0,X1]:(gufo_s_standsInQualifiedInstantiation(X0,X1)=>gufo_i_Endurant(X0)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>)
fof(axiom113,axiom,(![X0,X1,X2]:((gufo_ia_inheresIn(X0,X1)&gufo_ia_inheresIn(X0,X2))=>(X1=X2)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/individuals#isProperPartOf> owl:Thing)
fof(axiom114,axiom,(![X0,X1]:(gufo_i_isProperPartOf(X0,X1)=>owl_Thing(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom115,axiom,(![X0,X1]:(gufo_s_standsInQualifiedInstantiation(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf>))
fof(axiom116,axiom,(![X,Y]:(gufo_o_isComponentOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf>))
fof(axiom117,axiom,(![X,Y]:(gufo_o_isComponentOf(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom118,axiom,(![X0,X1]:(gufo_o_isSubCollectionOf(X0,X1)=>gufo_o_Collection(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#NonRigidType>))
fof(axiom119,axiom,(![X]:(gufo_et_NonRigidType(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Individual> <http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual> )
fof(axiom120,axiom,(![X0]:(gufo_i_Individual(X0)<=>(gufo_i_AbstractIndividual(X0)|gufo_i_ConcreteIndividual(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Individual> <http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual> )
fof(axiom121,axiom,(![X1]:~(gufo_i_AbstractIndividual(X1)&gufo_i_ConcreteIndividual(X1)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom122,axiom,(![X0,X1]:(gufo_o_isObjectProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#historicallyDependsOn>))
fof(axiom123,axiom,(![X,Y]:(gufo_e_historicallyDependsOn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#historicallyDependsOn>))
fof(axiom124,axiom,(![X,Y]:(gufo_e_historicallyDependsOn(X,Y)=>owl_Thing(Y)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#Collection>))
fof(axiom125,axiom,(![X]:(gufo_o_Collection(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> ObjectSomeValuesFrom(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom126,axiom,(![X0]:(gufo_ea_ExtrinsicMode(X0)=>?[X1]:(gufo_ea_externallyDependsOn(X0,X1)&gufo_i_ConcreteIndividual(X1))))).

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect>))
fof(axiom127,axiom,(![X]:(gufo_ia_ExtrinsicAspect(X)=>owl_Thing(X)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> )
fof(axiom128,axiom,(![X0]:(gufo_i_Aspect(X0)<=>(gufo_ia_ExtrinsicAspect(X0)|gufo_ia_IntrinsicAspect(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> )
fof(axiom129,axiom,(![X1]:~(gufo_ia_ExtrinsicAspect(X1)&gufo_ia_IntrinsicAspect(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/events#Participation>))
fof(axiom130,axiom,(![X]:(gufo_e_Participation(X)=>owl_Thing(X)))).

% Declaration(Class(<http://www.w3.org/2006/time#Instant>))
fof(axiom131,axiom,(![X]:(time_Instant(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin> <http://purl.org/nemo/gufo/endurant-types#RoleMixin>)
fof(axiom132,axiom,(![X0]:~(gufo_et_PhaseMixin(X0)&gufo_et_RoleMixin(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom133,axiom,(![X0,X1]:(gufo_s_standsInQualifiedInstantiation(X0,X1)=>gufo_s_TemporaryInstantiationSituation(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>))
fof(axiom134,axiom,(![X]:(gufo_s_TemporaryConstitutionSituation(X)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>))
fof(axiom135,axiom,(![X,Y]:(gufo_o_isObjectProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>))
fof(axiom136,axiom,(![X,Y]:(gufo_o_isObjectProperPartOf(X,Y)=>owl_Thing(Y)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#manifestedIn>))
fof(axiom137,axiom,(![X,Y]:(gufo_e_manifestedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#manifestedIn>))
fof(axiom138,axiom,(![X,Y]:(gufo_e_manifestedIn(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex>)
fof(axiom139,axiom,(![X0,X1]:(gufo_o_isComponentOf(X0,X1)=>gufo_o_FunctionalComplex(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint>))
fof(axiom140,axiom,(![X,Y]:(gufo_qa_hasBeginPoint(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint>))
fof(axiom141,axiom,(![X,Y]:(gufo_qa_hasBeginPoint(X,Y)=>owl_Thing(Y)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom142,axiom,(![X0,X1]:(gufo_s_isSituationProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom143,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryInstantiationSituation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom144,axiom,(![X0,X1]:(gufo_s_concernsRelatedEndurant(X0,X1)=>gufo_i_Endurant(X1)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom145,axiom,(![X0,X1]:(gufo_s_concernsTemporaryWhole(X0,X1)=>gufo_i_Endurant(X1)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#participatedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom146,axiom,(![X0,X1]:(gufo_e_participatedIn(X0,X1)=>gufo_i_Event(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#isEventProperPartOf> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom147,axiom,(![X0,X1]:(gufo_e_isEventProperPartOf(X0,X1)=>gufo_i_Event(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>)
fof(axiom148,axiom,(![X0]:(gufo_et_AntiRigidType(X0)=>gufo_et_NonRigidType(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom149,axiom,(![X0,X1]:(gufo_s_isSituationProperPartOf(X0,X1)=>gufo_i_Situation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#historicallyDependsOn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom150,axiom,(![X0,X1]:(gufo_e_historicallyDependsOn(X0,X1)=>gufo_i_ConcreteIndividual(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#PhaseMixin>))
fof(axiom151,axiom,(![X]:(gufo_et_PhaseMixin(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#AbstractIndividual> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom152,axiom,(![X0]:~(gufo_i_AbstractIndividual(X0)&gufo_i_ConcreteIndividual(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn>))
fof(axiom153,axiom,(![X,Y]:(gufo_ea_externallyDependsOn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn>))
fof(axiom154,axiom,(![X,Y]:(gufo_ea_externallyDependsOn(X,Y)=>owl_Thing(Y)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom155,axiom,(![X0,X1,X2]:((gufo_i_isProperPartOf(X0,X1)&gufo_i_isProperPartOf(X1,X2))=>gufo_i_isProperPartOf(X0,X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom156,axiom,(![X0,X1]:(gufo_o_isObjectProperPartOf(X0,X1)=>gufo_i_Object(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/endurant-types#Sortal>)
fof(axiom157,axiom,(![X0]:~(gufo_et_NonSortal(X0)&gufo_et_Sortal(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom158,axiom,(![X0]:(gufo_ia_IntrinsicAspect(X0)=>gufo_i_Aspect(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#FixedCollection> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom159,axiom,(![X0]:(gufo_o_FixedCollection(X0)=>gufo_o_Collection(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Kind>))
fof(axiom160,axiom,(![X]:(gufo_et_Kind(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom> ObjectUnionOf(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType> <http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType>))
fof(axiom161,axiom,(![X0,X1]:(gufo_rt_isDerivedFrom(X0,X1)=>(gufo_rt_ComparativeRelationshipType(X0)|gufo_rt_MaterialRelationshipType(X0))))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom162,axiom,(![X0]:(gufo_s_TemporaryParthoodSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedParthood(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedParthood(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedParthood(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#RoleMixin> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom163,axiom,(![X0]:(gufo_et_RoleMixin(X0)=>gufo_et_AntiRigidType(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#constitutes>))
fof(axiom164,axiom,(![X,Y]:(gufo_i_constitutes(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#constitutes>))
fof(axiom165,axiom,(![X,Y]:(gufo_i_constitutes(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/individuals#constitutes> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom166,axiom,(![X0,X1]:(gufo_i_constitutes(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution> <http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>)
fof(axiom167,axiom,(![X0,X1]:(gufo_s_standsInQualifiedAttribution(X0,X1)=>gufo_s_QualityValueAttributionSituation(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#Phase> <http://purl.org/nemo/gufo/endurant-types#Role>)
fof(axiom168,axiom,(![X0]:~(gufo_et_Phase(X0)&gufo_et_Role(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom169,axiom,(![X0,X1]:(gufo_o_isComponentOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom170,axiom,(![X0]:~(gufo_et_NonRigidType(X0)&gufo_et_RigidType(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom171,axiom,(![X0,X1]:(gufo_rt_isDerivedFrom(X0,X1)=>gufo_t_EndurantType(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue> <http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>)
fof(axiom172,axiom,(![X0,X1]:(gufo_s_concernsReifiedQualityValue(X0,X1)=>gufo_s_QualityValueAttributionSituation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#Quality>))
fof(axiom173,axiom,(![X]:(gufo_ia_Quality(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Individual> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom174,axiom,(![X0]:~(gufo_i_Individual(X0)&gufo_i_Type(X0)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom175,axiom,(![X0,X1,X2]:((gufo_o_isObjectProperPartOf(X0,X1)&gufo_o_isObjectProperPartOf(X1,X2))=>gufo_o_isObjectProperPartOf(X0,X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#manifestedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom176,axiom,(![X0,X1]:(gufo_e_manifestedIn(X0,X1)=>gufo_i_Event(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Mixin> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType>)
fof(axiom177,axiom,(![X0]:(gufo_et_Mixin(X0)=>gufo_et_SemiRigidType(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf>))
fof(axiom178,axiom,(![X,Y]:(gufo_o_isCollectionMemberOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf>))
fof(axiom179,axiom,(![X,Y]:(gufo_o_isCollectionMemberOf(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom180,axiom,(![X0,X1]:(gufo_s_standsInQualifiedConstitution(X0,X1)=>gufo_i_Endurant(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom181,axiom,(![X0]:~(gufo_s_TemporaryInstantiationSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#participatedIn>))
fof(axiom182,axiom,(![X,Y]:(gufo_e_participatedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#participatedIn>))
fof(axiom183,axiom,(![X,Y]:(gufo_e_participatedIn(X,Y)=>owl_Thing(Y)))).

% Declaration(Datatype(xsd:date))
fof(axiom184,axiom,(![X]:(xsd_date(X)=>rdfs_Literal(X)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#isEventProperPartOf> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom185,axiom,(![X0,X1]:(gufo_e_isEventProperPartOf(X0,X1)=>gufo_i_Event(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#Quantity>))
fof(axiom186,axiom,(![X]:(gufo_o_Quantity(X)=>owl_Thing(X)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom187,axiom,(![X0,X1]:(gufo_s_isSituationProperPartOf(X0,X1)=>gufo_i_Situation(X1)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint> <http://www.w3.org/2006/time#Instant>)
fof(axiom188,axiom,(![X0,X1]:(gufo_qa_hasBeginPoint(X0,X1)=>time_Instant(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#historicallyDependsOn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom189,axiom,(![X0,X1]:(gufo_e_historicallyDependsOn(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom190,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#EndurantType>))
fof(axiom191,axiom,(![X]:(gufo_t_EndurantType(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#Relator> ObjectMinCardinality(2 <http://purl.org/nemo/gufo/extrinsic-aspects#mediates> <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom192,axiom,(![X0]:(gufo_ea_Relator(X0)=>?[X1,X2]:((X1!=X2)&gufo_ea_mediates(X0,X1)&gufo_i_Endurant(X1)&gufo_ea_mediates(X0,X2)&gufo_i_Endurant(X2))))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#participatedIn> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom193,axiom,(![X0,X1]:(gufo_e_participatedIn(X0,X1)=>gufo_i_Object(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom194,axiom,(![X0,X1]:(gufo_s_standsInQualifiedRelationship(X0,X1)=>gufo_s_TemporaryRelationshipSituation(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#SituationType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom195,axiom,(![X0]:(gufo_t_SituationType(X0)=>gufo_t_ConcreteIndividualType(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/individuals#constitutes> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom196,axiom,(![X0,X1]:(gufo_i_constitutes(X0,X1)=>gufo_i_ConcreteIndividual(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#isProperPartOf>))
fof(axiom197,axiom,(![X,Y]:(gufo_i_isProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/individuals#isProperPartOf>))
fof(axiom198,axiom,(![X,Y]:(gufo_i_isProperPartOf(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom199,axiom,(![X0]:(gufo_s_TemporaryConstitutionSituation(X0)=>gufo_i_Situation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Mixin>))
fof(axiom200,axiom,(![X]:(gufo_et_Mixin(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#contributedToTrigger> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom201,axiom,(![X0,X1]:(gufo_e_contributedToTrigger(X0,X1)=>gufo_i_Situation(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom202,axiom,(![X0,X1]:(gufo_s_standsInQualifiedRelationship(X0,X1)=>gufo_i_Endurant(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsNonRigidType> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom203,axiom,(![X0,X1]:(gufo_s_concernsNonRigidType(X0,X1)=>gufo_s_TemporaryInstantiationSituation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue> <http://purl.org/nemo/gufo/qualities-advanced#QualityValue>)
fof(axiom204,axiom,(![X0,X1]:(gufo_s_concernsReifiedQualityValue(X0,X1)=>gufo_qa_QualityValue(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom205,axiom,(![X0,X1]:(gufo_qa_hasAssociatedQualityValueType(X0,X1)=>gufo_t_EndurantType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>))
fof(axiom206,axiom,(![X]:(gufo_s_TemporaryParthoodSituation(X)=>owl_Thing(X)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsQualityType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom207,axiom,(![X0,X1]:(gufo_s_concernsQualityType(X0,X1)=>gufo_t_EndurantType(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsNonRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>))
fof(axiom208,axiom,(![X0]:(gufo_s_TemporaryInstantiationSituation(X0)=>(?[X1]:(gufo_s_concernsNonRigidType(X0,X1)&gufo_et_NonRigidType(X1))&![X2,X3]:((gufo_s_concernsNonRigidType(X0,X2)&gufo_et_NonRigidType(X2)&gufo_s_concernsNonRigidType(X0,X3)&gufo_et_NonRigidType(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> ObjectSomeValuesFrom(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant> <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom209,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>?[X1]:(gufo_s_concernsRelatedEndurant(X0,X1)&gufo_i_Endurant(X1))))).

% SubClassOf(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom210,axiom,(![X0]:(gufo_rt_ComparativeRelationshipType(X0)=>gufo_t_RelationshipType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Event>))
fof(axiom211,axiom,(![X]:(gufo_i_Event(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom212,axiom,(![X0]:(gufo_ia_ExtrinsicAspect(X0)=>gufo_i_Aspect(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom213,axiom,(![X0,X1]:(gufo_s_standsInQualifiedParthood(X0,X1)=>gufo_s_TemporaryParthoodSituation(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom214,axiom,(![X0,X1]:(gufo_o_isObjectProperPartOf(X0,X1)=>gufo_i_Object(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom215,axiom,(![X0]:(gufo_o_Collection(X0)=>gufo_i_Object(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue> <http://purl.org/nemo/gufo/qualities-advanced#QualityValue>)
fof(axiom216,axiom,(![X0,X1]:(gufo_qa_hasReifiedQualityValue(X0,X1)=>gufo_qa_QualityValue(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType>)
fof(axiom217,axiom,(![X0]:~(gufo_et_AntiRigidType(X0)&gufo_et_SemiRigidType(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution>))
fof(axiom218,axiom,(![X,Y]:(gufo_s_standsInQualifiedAttribution(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution>))
fof(axiom219,axiom,(![X,Y]:(gufo_s_standsInQualifiedAttribution(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom220,axiom,(![X0,X1]:(gufo_qa_hasEndPoint(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom221,axiom,(![X0]:(gufo_ia_IntrinsicAspect(X0)=>(?[X1]:(gufo_ia_inheresIn(X0,X1)&gufo_i_ConcreteIndividual(X1))&![X2,X3]:((gufo_ia_inheresIn(X0,X2)&gufo_i_ConcreteIndividual(X2)&gufo_ia_inheresIn(X0,X3)&gufo_i_ConcreteIndividual(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom222,axiom,(![X0]:(gufo_o_FunctionalComplex(X0)=>gufo_i_Object(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#Quality>)
fof(axiom223,axiom,(![X0]:~(gufo_ia_IntrinsicMode(X0)&gufo_ia_Quality(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Object> )
fof(axiom224,axiom,(![X0]:(gufo_i_Endurant(X0)<=>(gufo_i_Aspect(X0)|gufo_i_Object(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Object> )
fof(axiom225,axiom,(![X1]:~(gufo_i_Aspect(X1)&gufo_i_Object(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsIn>))
fof(axiom226,axiom,(![X,Y]:(gufo_s_standsIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsIn>))
fof(axiom227,axiom,(![X,Y]:(gufo_s_standsIn(X,Y)=>owl_Thing(Y)))).

% Declaration(Class(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType>))
fof(axiom228,axiom,(![X]:(gufo_rt_ComparativeRelationshipType(X)=>owl_Thing(X)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom229,axiom,(![X0,X1]:(gufo_o_isCollectionMemberOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant> <http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>)
fof(axiom230,axiom,(![X0,X1]:(gufo_s_concernsConstitutedEndurant(X0,X1)=>gufo_s_TemporaryConstitutionSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Sortal> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom231,axiom,(![X0]:(gufo_et_Sortal(X0)=>gufo_t_EndurantType(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf>))
fof(axiom232,axiom,(![X,Y]:(gufo_s_isSituationProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf>))
fof(axiom233,axiom,(![X,Y]:(gufo_s_isSituationProperPartOf(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom234,axiom,(![X0]:(gufo_et_NonSortal(X0)=>gufo_t_EndurantType(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#wasTerminatedIn> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom235,axiom,(![X0,X1]:(gufo_e_wasTerminatedIn(X0,X1)=>gufo_i_Event(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom236,axiom,(![X0]:(gufo_et_NonRigidType(X0)=>gufo_t_EndurantType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom237,axiom,(![X0]:(gufo_s_QualityValueAttributionSituation(X0)=>gufo_i_Situation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex>))
fof(axiom238,axiom,(![X]:(gufo_o_FunctionalComplex(X)=>owl_Thing(X)))).

% IrreflexiveObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn>)
fof(axiom239,axiom,(![X0]:~gufo_ea_externallyDependsOn(X0,X0))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf>))
fof(axiom240,axiom,(![X,Y]:(gufo_ia_isAspectProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf>))
fof(axiom241,axiom,(![X,Y]:(gufo_ia_isAspectProperPartOf(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom242,axiom,(![X0,X1]:(gufo_s_standsInQualifiedAttribution(X0,X1)=>gufo_i_Endurant(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution> <http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>)
fof(axiom243,axiom,(![X0,X1]:(gufo_s_standsInQualifiedConstitution(X0,X1)=>gufo_s_TemporaryConstitutionSituation(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom244,axiom,(![X0,X1]:(gufo_qa_hasReifiedQualityValue(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Mixin> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom245,axiom,(![X0]:(gufo_et_Mixin(X0)=>gufo_et_NonSortal(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom246,axiom,(![X0]:(gufo_t_EndurantType(X0)=>gufo_t_ConcreteIndividualType(X0)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant>)
fof(axiom247,axiom,(![X0,X1,X2]:((gufo_s_concernsRelatedEndurant(X0,X1)&gufo_s_concernsRelatedEndurant(X0,X2))=>(X1=X2)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#AbstractIndividualType>))
fof(axiom248,axiom,(![X]:(gufo_t_AbstractIndividualType(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isCollectionMemberOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom249,axiom,(![X0,X1]:(gufo_o_isCollectionMemberOf(X0,X1)=>gufo_i_Object(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom>))
fof(axiom250,axiom,(![X,Y]:(gufo_rt_isDerivedFrom(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/relationship-types#isDerivedFrom>))
fof(axiom251,axiom,(![X,Y]:(gufo_rt_isDerivedFrom(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant> <http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom252,axiom,(![X0]:(gufo_s_TemporaryConstitutionSituation(X0)=>(?[X1]:(gufo_s_concernsConstitutedEndurant(X0,X1)&gufo_i_Object(X1))&![X2,X3]:((gufo_s_concernsConstitutedEndurant(X0,X2)&gufo_i_Object(X2)&gufo_s_concernsConstitutedEndurant(X0,X3)&gufo_i_Object(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Situation> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom253,axiom,(![X0]:(gufo_i_Situation(X0)=>gufo_i_ConcreteIndividual(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom254,axiom,(![X0,X1]:(gufo_s_standsInQualifiedAttribution(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom255,axiom,(![X0]:(gufo_rt_MaterialRelationshipType(X0)=>gufo_t_RelationshipType(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom256,axiom,(![X0]:~(gufo_o_Collection(X0)&gufo_o_FunctionalComplex(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom257,axiom,(![X1]:~(gufo_o_Collection(X1)&gufo_o_Quantity(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/objects-and-parts#Collection> <http://purl.org/nemo/gufo/objects-and-parts#FunctionalComplex> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom258,axiom,(![X2]:~(gufo_o_FunctionalComplex(X2)&gufo_o_Quantity(X2)))).

% DisjointClasses(<http://purl.org/nemo/gufo/relationship-types#ComparativeRelationshipType> <http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType>)
fof(axiom259,axiom,(![X0]:~(gufo_rt_ComparativeRelationshipType(X0)&gufo_rt_MaterialRelationshipType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#NonSortal>))
fof(axiom260,axiom,(![X]:(gufo_et_NonSortal(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom261,axiom,(![X0,X1]:(gufo_o_isSubCollectionOf(X0,X1)=>gufo_o_Collection(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/qualities-advanced#QualityValue> <http://purl.org/nemo/gufo/individuals#AbstractIndividual>)
fof(axiom262,axiom,(![X0]:(gufo_qa_QualityValue(X0)=>gufo_i_AbstractIndividual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Category> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom263,axiom,(![X0]:(gufo_et_Category(X0)=>gufo_et_RigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode>))
fof(axiom264,axiom,(![X]:(gufo_ia_IntrinsicMode(X)=>owl_Thing(X)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#AntiRigidType>))
fof(axiom265,axiom,(![X]:(gufo_et_AntiRigidType(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator>)
fof(axiom266,axiom,(![X0,X1]:(gufo_ea_mediates(X0,X1)=>gufo_ea_Relator(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom267,axiom,(![X0]:(gufo_i_Endurant(X0)=>gufo_i_ConcreteIndividual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom268,axiom,(![X0]:(gufo_ea_ExtrinsicMode(X0)=>(?[X1]:(gufo_ia_inheresIn(X0,X1)&gufo_i_ConcreteIndividual(X1))&![X2,X3]:((gufo_ia_inheresIn(X0,X2)&gufo_i_ConcreteIndividual(X2)&gufo_ia_inheresIn(X0,X3)&gufo_i_ConcreteIndividual(X3))=>~(X2!=X3)))))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType> <http://purl.org/nemo/gufo/types#AbstractIndividualType>)
fof(axiom269,axiom,(![X0,X1]:(gufo_qa_hasAssociatedQualityValueType(X0,X1)=>gufo_t_AbstractIndividualType(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasTerminatedIn>))
fof(axiom270,axiom,(![X,Y]:(gufo_e_wasTerminatedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasTerminatedIn>))
fof(axiom271,axiom,(![X,Y]:(gufo_e_wasTerminatedIn(X,Y)=>owl_Thing(Y)))).

% Declaration(Class(<http://purl.org/nemo/gufo/objects-and-parts#FixedCollection>))
fof(axiom272,axiom,(![X]:(gufo_o_FixedCollection(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#VariableCollection> <http://purl.org/nemo/gufo/objects-and-parts#Collection>)
fof(axiom273,axiom,(![X0]:(gufo_o_VariableCollection(X0)=>gufo_o_Collection(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue>))
fof(axiom274,axiom,(![X,Y]:(gufo_s_concernsReifiedQualityValue(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue>))
fof(axiom275,axiom,(![X,Y]:(gufo_s_concernsReifiedQualityValue(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom276,axiom,(![X0]:(gufo_s_TemporaryInstantiationSituation(X0)=>gufo_i_Situation(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>)
fof(axiom277,axiom,(![X0]:~(gufo_ia_ExtrinsicAspect(X0)&gufo_ia_IntrinsicAspect(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Role>))
fof(axiom278,axiom,(![X]:(gufo_et_Role(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#SubKind> <http://purl.org/nemo/gufo/endurant-types#RigidType>)
fof(axiom279,axiom,(![X0]:(gufo_et_SubKind(X0)=>gufo_et_RigidType(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#RelationshipType>))
fof(axiom280,axiom,(![X]:(gufo_t_RelationshipType(X)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasCreatedIn>))
fof(axiom281,axiom,(![X,Y]:(gufo_e_wasCreatedIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#wasCreatedIn>))
fof(axiom282,axiom,(![X,Y]:(gufo_e_wasCreatedIn(X,Y)=>owl_Thing(Y)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant>))
fof(axiom283,axiom,(![X,Y]:(gufo_s_concernsConstitutedEndurant(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant>))
fof(axiom284,axiom,(![X,Y]:(gufo_s_concernsConstitutedEndurant(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#broughtAbout> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom285,axiom,(![X0,X1]:(gufo_e_broughtAbout(X0,X1)=>gufo_i_Event(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Aspect> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom286,axiom,(![X0]:(gufo_i_Aspect(X0)=>gufo_i_Endurant(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/extrinsic-aspects#externallyDependsOn> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom287,axiom,(![X0,X1]:(gufo_ea_externallyDependsOn(X0,X1)=>gufo_i_Endurant(X1)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom288,axiom,(![X0]:(gufo_i_ConcreteIndividual(X0)<=>(gufo_i_Endurant(X0)|gufo_i_Event(X0)|gufo_i_Situation(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom289,axiom,(![X1]:~(gufo_i_Endurant(X1)&gufo_i_Event(X1)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom290,axiom,(![X2]:~(gufo_i_Endurant(X2)&gufo_i_Situation(X2)))).

% DisjointUnion(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual> <http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation> )
fof(axiom291,axiom,(![X3]:~(gufo_i_Event(X3)&gufo_i_Situation(X3)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf>)
fof(axiom292,axiom,(![X0,X1,X2]:((gufo_ia_isAspectProperPartOf(X0,X1)&gufo_ia_isAspectProperPartOf(X1,X2))=>gufo_ia_isAspectProperPartOf(X0,X2)))).

% DisjointClasses(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/extrinsic-aspects#Relator>)
fof(axiom293,axiom,(![X0]:~(gufo_ea_ExtrinsicMode(X0)&gufo_ea_Relator(X0)))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf>)
fof(axiom294,axiom,(![X0,X1,X2]:((gufo_o_isSubCollectionOf(X0,X1)&gufo_o_isSubCollectionOf(X1,X2))=>gufo_o_isSubCollectionOf(X0,X2)))).

% Declaration(Class(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode>))
fof(axiom295,axiom,(![X]:(gufo_ea_ExtrinsicMode(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsQualityType> <http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>)
fof(axiom296,axiom,(![X0,X1]:(gufo_s_concernsQualityType(X0,X1)=>gufo_s_QualityValueAttributionSituation(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType> )
fof(axiom297,axiom,(![X0]:(gufo_et_NonRigidType(X0)<=>(gufo_et_AntiRigidType(X0)|gufo_et_SemiRigidType(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType> <http://purl.org/nemo/gufo/endurant-types#SemiRigidType> )
fof(axiom298,axiom,(![X1]:~(gufo_et_AntiRigidType(X1)&gufo_et_SemiRigidType(X1)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/events#broughtAbout> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom299,axiom,(![X0,X1]:(gufo_e_broughtAbout(X0,X1)=>gufo_i_Situation(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom300,axiom,(![X0]:(gufo_s_TemporaryParthoodSituation(X0)=>gufo_i_Situation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Type>))
fof(axiom301,axiom,(![X]:(gufo_i_Type(X)=>owl_Thing(X)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom302,axiom,(![X0,X1]:(gufo_ia_inheresIn(X0,X1)=>gufo_i_ConcreteIndividual(X1)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue>)
fof(axiom303,axiom,(![X0,X1,X2]:((gufo_s_concernsReifiedQualityValue(X0,X1)&gufo_s_concernsReifiedQualityValue(X0,X2))=>(X1=X2)))).

% Declaration(Class(<http://purl.org/nemo/gufo/relationship-types#MaterialRelationshipType>))
fof(axiom304,axiom,(![X]:(gufo_rt_MaterialRelationshipType(X)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>))
fof(axiom305,axiom,(![X,Y]:(gufo_ea_mediates(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/extrinsic-aspects#mediates>))
fof(axiom306,axiom,(![X,Y]:(gufo_ea_mediates(X,Y)=>owl_Thing(Y)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsQualityType>))
fof(axiom307,axiom,(![X,Y]:(gufo_s_concernsQualityType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsQualityType>))
fof(axiom308,axiom,(![X,Y]:(gufo_s_concernsQualityType(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom309,axiom,(![X0,X1]:(gufo_ia_isAspectProperPartOf(X0,X1)=>gufo_i_Aspect(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom310,axiom,(![X]:(gufo_i_Object(X)=>owl_Thing(X)))).

% Declaration(Class(<http://purl.org/nemo/gufo/types#ConcreteIndividualType>))
fof(axiom311,axiom,(![X]:(gufo_t_ConcreteIndividualType(X)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint>))
fof(axiom312,axiom,(![X,Y]:(gufo_qa_hasEndPoint(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint>))
fof(axiom313,axiom,(![X,Y]:(gufo_qa_hasEndPoint(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#ConcreteIndividualType> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom314,axiom,(![X0]:(gufo_t_ConcreteIndividualType(X0)=>gufo_i_Type(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant>))
fof(axiom315,axiom,(![X,Y]:(gufo_s_concernsRelatedEndurant(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant>))
fof(axiom316,axiom,(![X,Y]:(gufo_s_concernsRelatedEndurant(X,Y)=>owl_Thing(Y)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Category>))
fof(axiom317,axiom,(![X]:(gufo_et_Category(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsIn> owl:Thing)
fof(axiom318,axiom,(![X0,X1]:(gufo_s_standsIn(X0,X1)=>owl_Thing(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/endurant-types#Kind> <http://purl.org/nemo/gufo/endurant-types#SubKind>)
fof(axiom319,axiom,(![X0]:~(gufo_et_Kind(X0)&gufo_et_SubKind(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom320,axiom,(![X0,X1]:(gufo_s_standsInQualifiedConstitution(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% IrreflexiveObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>)
fof(axiom321,axiom,(![X0]:~gufo_ia_inheresIn(X0,X0))).

% TransitiveObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf>)
fof(axiom322,axiom,(![X0,X1,X2]:((gufo_o_isSubQuantityOf(X0,X1)&gufo_o_isSubQuantityOf(X1,X2))=>gufo_o_isSubQuantityOf(X0,X2)))).

% SubClassOf(<http://purl.org/nemo/gufo/events#Participation> <http://purl.org/nemo/gufo/individuals#Event>)
fof(axiom323,axiom,(![X0]:(gufo_e_Participation(X0)=>gufo_i_Event(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsIn> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom324,axiom,(![X0,X1]:(gufo_s_standsIn(X0,X1)=>gufo_i_Situation(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship>))
fof(axiom325,axiom,(![X,Y]:(gufo_s_standsInQualifiedRelationship(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship>))
fof(axiom326,axiom,(![X,Y]:(gufo_s_standsInQualifiedRelationship(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Phase> <http://purl.org/nemo/gufo/endurant-types#AntiRigidType>)
fof(axiom327,axiom,(![X0]:(gufo_et_Phase(X0)=>gufo_et_AntiRigidType(X0)))).

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#Quality> )
fof(axiom328,axiom,(![X0]:(gufo_ia_IntrinsicAspect(X0)<=>(gufo_ia_IntrinsicMode(X0)|gufo_ia_Quality(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#Quality> )
fof(axiom329,axiom,(![X1]:~(gufo_ia_IntrinsicMode(X1)&gufo_ia_Quality(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#broughtAbout>))
fof(axiom330,axiom,(![X,Y]:(gufo_e_broughtAbout(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/events#broughtAbout>))
fof(axiom331,axiom,(![X,Y]:(gufo_e_broughtAbout(X,Y)=>owl_Thing(Y)))).

% AsymmetricObjectProperty(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn>)
fof(axiom332,axiom,(![X0,X1]:~(gufo_ia_inheresIn(X0,X1)&gufo_ia_inheresIn(X1,X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom333,axiom,(![X0,X1]:(gufo_s_concernsRelationshipType(X0,X1)=>gufo_t_RelationshipType(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/extrinsic-aspects#Relator>))
fof(axiom334,axiom,(![X]:(gufo_ea_Relator(X)=>owl_Thing(X)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf> <http://purl.org/nemo/gufo/objects-and-parts#isObjectProperPartOf>)
fof(axiom335,axiom,(![X0,X1]:(gufo_o_isSubCollectionOf(X0,X1)=>gufo_o_isObjectProperPartOf(X0,X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole>))
fof(axiom336,axiom,(![X,Y]:(gufo_s_concernsTemporaryWhole(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole>))
fof(axiom337,axiom,(![X,Y]:(gufo_s_concernsTemporaryWhole(X,Y)=>owl_Thing(Y)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf>))
fof(axiom338,axiom,(![X,Y]:(gufo_o_isSubCollectionOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubCollectionOf>))
fof(axiom339,axiom,(![X,Y]:(gufo_o_isSubCollectionOf(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf> <http://purl.org/nemo/gufo/objects-and-parts#Quantity>)
fof(axiom340,axiom,(![X0,X1]:(gufo_o_isSubQuantityOf(X0,X1)=>gufo_o_Quantity(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/events#Participation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/events#participatedIn>) <http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom341,axiom,(![X0]:(gufo_e_Participation(X0)=>(?[X1]:(gufo_e_participatedIn(X1,X0)&gufo_i_Object(X1))&![X2,X3]:((gufo_e_participatedIn(X2,X0)&gufo_i_Object(X2)&gufo_e_participatedIn(X3,X0)&gufo_i_Object(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Aspect>))
fof(axiom342,axiom,(![X]:(gufo_i_Aspect(X)=>owl_Thing(X)))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>))
fof(axiom343,axiom,(![X]:(gufo_s_TemporaryInstantiationSituation(X)=>owl_Thing(X)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/events#wasCreatedIn> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom344,axiom,(![X0,X1]:(gufo_e_wasCreatedIn(X0,X1)=>gufo_i_Endurant(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#AbstractIndividual>))
fof(axiom345,axiom,(![X]:(gufo_i_AbstractIndividual(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/objects-and-parts#Quantity> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom346,axiom,(![X0]:(gufo_o_Quantity(X0)=>gufo_i_Object(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom347,axiom,(![X0,X1]:(gufo_ia_isAspectProperPartOf(X0,X1)=>gufo_i_Aspect(X1)))).

% SubClassOf(<http://purl.org/nemo/gufo/extrinsic-aspects#ExtrinsicMode> <http://purl.org/nemo/gufo/intrinsic-aspects#ExtrinsicAspect>)
fof(axiom348,axiom,(![X0]:(gufo_ea_ExtrinsicMode(X0)=>gufo_ia_ExtrinsicAspect(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#partitions>))
fof(axiom349,axiom,(![X,Y]:(gufo_ho_partitions(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#partitions>))
fof(axiom350,axiom,(![X,Y]:(gufo_ho_partitions(X,Y)=>owl_Thing(Y)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#categorizes>))
fof(axiom351,axiom,(![X,Y]:(gufo_ho_categorizes(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#categorizes>))
fof(axiom352,axiom,(![X,Y]:(gufo_ho_categorizes(X,Y)=>owl_Thing(Y)))).

% Declaration(Class(<http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>))
fof(axiom353,axiom,(![X]:(gufo_ia_IntrinsicAspect(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/intrinsic-aspects#Quality> <http://purl.org/nemo/gufo/intrinsic-aspects#IntrinsicAspect>)
fof(axiom354,axiom,(![X0]:(gufo_ia_Quality(X0)=>gufo_ia_IntrinsicAspect(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/intrinsic-aspects#isAspectProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom355,axiom,(![X0,X1]:(gufo_ia_isAspectProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/endurant-types#Sortal> )
fof(axiom356,axiom,(![X0]:(gufo_t_EndurantType(X0)<=>(gufo_et_NonSortal(X0)|gufo_et_Sortal(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonSortal> <http://purl.org/nemo/gufo/endurant-types#Sortal> )
fof(axiom357,axiom,(![X1]:~(gufo_et_NonSortal(X1)&gufo_et_Sortal(X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Individual>))
fof(axiom358,axiom,(![X]:(gufo_i_Individual(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>)
fof(axiom359,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryConstitutionSituation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#RoleMixin>))
fof(axiom360,axiom,(![X]:(gufo_et_RoleMixin(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/types#AbstractIndividualType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom361,axiom,(![X0]:~(gufo_t_AbstractIndividualType(X0)&gufo_t_RelationshipType(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf>))
fof(axiom362,axiom,(![X,Y]:(gufo_o_isSubQuantityOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/objects-and-parts#isSubQuantityOf>))
fof(axiom363,axiom,(![X,Y]:(gufo_o_isSubQuantityOf(X,Y)=>owl_Thing(Y)))).

% SubClassOf(<http://www.w3.org/2006/time#Instant> <http://purl.org/nemo/gufo/individuals#AbstractIndividual>)
fof(axiom364,axiom,(![X0]:(time_Instant(X0)=>gufo_i_AbstractIndividual(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom365,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedRelationship(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedRelationship(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedRelationship(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/endurant-types#Phase>))
fof(axiom366,axiom,(![X]:(gufo_et_Phase(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsTemporaryWhole> <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom367,axiom,(![X0]:(gufo_s_TemporaryParthoodSituation(X0)=>(?[X1]:(gufo_s_concernsTemporaryWhole(X0,X1)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_concernsTemporaryWhole(X0,X2)&gufo_i_Endurant(X2)&gufo_s_concernsTemporaryWhole(X0,X3)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/types#EventType> <http://purl.org/nemo/gufo/types#ConcreteIndividualType>)
fof(axiom368,axiom,(![X0]:(gufo_t_EventType(X0)=>gufo_t_ConcreteIndividualType(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/endurant-types#Category> <http://purl.org/nemo/gufo/endurant-types#NonSortal>)
fof(axiom369,axiom,(![X0]:(gufo_et_Category(X0)=>gufo_et_NonSortal(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/intrinsic-aspects#inheresIn> <http://purl.org/nemo/gufo/individuals#Aspect>)
fof(axiom370,axiom,(![X0,X1]:(gufo_ia_inheresIn(X0,X1)=>gufo_i_Aspect(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/objects-and-parts#isComponentOf> <http://purl.org/nemo/gufo/individuals#Object>)
fof(axiom371,axiom,(![X0,X1]:(gufo_o_isComponentOf(X0,X1)=>gufo_i_Object(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType>))
fof(axiom372,axiom,(![X,Y]:(gufo_qa_hasAssociatedQualityValueType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType>))
fof(axiom373,axiom,(![X,Y]:(gufo_qa_hasAssociatedQualityValueType(X,Y)=>owl_Thing(Y)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom374,axiom,(![X0]:~(gufo_i_Endurant(X0)&gufo_i_Event(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom375,axiom,(![X1]:~(gufo_i_Endurant(X1)&gufo_i_Situation(X1)))).

% DisjointClasses(<http://purl.org/nemo/gufo/individuals#Endurant> <http://purl.org/nemo/gufo/individuals#Event> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom376,axiom,(![X2]:~(gufo_i_Event(X2)&gufo_i_Situation(X2)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution>) <http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom377,axiom,(![X0]:(gufo_s_TemporaryConstitutionSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedConstitution(X1,X0)&gufo_i_Object(X1))&![X2,X3]:((gufo_s_standsInQualifiedConstitution(X2,X0)&gufo_i_Object(X2)&gufo_s_standsInQualifiedConstitution(X3,X0)&gufo_i_Object(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/individuals#Object> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom378,axiom,(![X0]:(gufo_i_Object(X0)=>gufo_i_Endurant(X0)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/high-order-types#partitions> ObjectIntersectionOf(<http://purl.org/nemo/gufo/individuals#Type> ObjectComplementOf(<http://purl.org/nemo/gufo/types#AbstractIndividualType>) ObjectComplementOf(<http://purl.org/nemo/gufo/types#ConcreteIndividualType>)))
fof(axiom379,axiom,(![X0,X1]:(gufo_ho_partitions(X0,X1)=>(gufo_i_Type(X0)&~gufo_t_AbstractIndividualType(X0)&owl_Thing(X0)&~gufo_t_ConcreteIndividualType(X0)&owl_Thing(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#RigidType> )
fof(axiom380,axiom,(![X0]:(gufo_t_EndurantType(X0)<=>(gufo_et_NonRigidType(X0)|gufo_et_RigidType(X0))))).

% DisjointUnion(<http://purl.org/nemo/gufo/types#EndurantType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType> <http://purl.org/nemo/gufo/endurant-types#RigidType> )
fof(axiom381,axiom,(![X1]:~(gufo_et_NonRigidType(X1)&gufo_et_RigidType(X1)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom382,axiom,(![X0,X1]:(gufo_s_standsInQualifiedRelationship(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#Situation>))
fof(axiom383,axiom,(![X]:(gufo_i_Situation(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/types#RelationshipType> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom384,axiom,(![X0]:(gufo_t_RelationshipType(X0)=>gufo_i_Type(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/individuals#ConcreteIndividual>))
fof(axiom385,axiom,(![X]:(gufo_i_ConcreteIndividual(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom386,axiom,(![X0]:~(gufo_s_TemporaryConstitutionSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

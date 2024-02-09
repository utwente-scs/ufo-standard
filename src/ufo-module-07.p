% ------------ gufo_s_QualityValueAttributionSituation ------------

% SubClassOf(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsQualityType> <http://purl.org/nemo/gufo/types#EndurantType>))
fof(axiom22,axiom,(![X0]:(gufo_s_QualityValueAttributionSituation(X0)=>(?[X1]:(gufo_s_concernsQualityType(X0,X1)&gufo_t_EndurantType(X1))&![X2,X3]:((gufo_s_concernsQualityType(X0,X2)&gufo_t_EndurantType(X2)&gufo_s_concernsQualityType(X0,X3)&gufo_t_EndurantType(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>))
fof(axiom59,axiom,(![X]:(gufo_s_QualityValueAttributionSituation(X)=>owl_Thing(X)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom62,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryParthoodSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom89,axiom,(![X0]:(gufo_s_QualityValueAttributionSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedAttribution(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedAttribution(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedAttribution(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom143,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryInstantiationSituation(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom190,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom237,axiom,(![X0]:(gufo_s_QualityValueAttributionSituation(X0)=>gufo_i_Situation(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation> <http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>)
fof(axiom359,axiom,(![X0]:~(gufo_s_QualityValueAttributionSituation(X0)&gufo_s_TemporaryConstitutionSituation(X0)))).


% ------------ gufo_s_TemporaryConstitutionSituation ------------

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom21,axiom,(![X0]:~(gufo_s_TemporaryConstitutionSituation(X0)&gufo_s_TemporaryInstantiationSituation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>))
fof(axiom134,axiom,(![X]:(gufo_s_TemporaryConstitutionSituation(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom199,axiom,(![X0]:(gufo_s_TemporaryConstitutionSituation(X0)=>gufo_i_Situation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant> <http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom252,axiom,(![X0]:(gufo_s_TemporaryConstitutionSituation(X0)=>(?[X1]:(gufo_s_concernsConstitutedEndurant(X0,X1)&gufo_i_Object(X1))&![X2,X3]:((gufo_s_concernsConstitutedEndurant(X0,X2)&gufo_i_Object(X2)&gufo_s_concernsConstitutedEndurant(X0,X3)&gufo_i_Object(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution>) <http://purl.org/nemo/gufo/individuals#Object>))
fof(axiom377,axiom,(![X0]:(gufo_s_TemporaryConstitutionSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedConstitution(X1,X0)&gufo_i_Object(X1))&![X2,X3]:((gufo_s_standsInQualifiedConstitution(X2,X0)&gufo_i_Object(X2)&gufo_s_standsInQualifiedConstitution(X3,X0)&gufo_i_Object(X3))=>~(X2!=X3)))))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom386,axiom,(![X0]:~(gufo_s_TemporaryConstitutionSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).


% ------------ gufo_s_TemporaryInstantiationSituation ------------

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom53,axiom,(![X0]:(gufo_s_TemporaryInstantiationSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedInstantiation(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedInstantiation(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedInstantiation(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom66,axiom,(![X0]:~(gufo_s_TemporaryInstantiationSituation(X0)&gufo_s_TemporaryParthoodSituation(X0)))).

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom181,axiom,(![X0]:~(gufo_s_TemporaryInstantiationSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsNonRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>))
fof(axiom208,axiom,(![X0]:(gufo_s_TemporaryInstantiationSituation(X0)=>(?[X1]:(gufo_s_concernsNonRigidType(X0,X1)&gufo_et_NonRigidType(X1))&![X2,X3]:((gufo_s_concernsNonRigidType(X0,X2)&gufo_et_NonRigidType(X2)&gufo_s_concernsNonRigidType(X0,X3)&gufo_et_NonRigidType(X3))=>~(X2!=X3)))))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom276,axiom,(![X0]:(gufo_s_TemporaryInstantiationSituation(X0)=>gufo_i_Situation(X0)))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>))
fof(axiom343,axiom,(![X]:(gufo_s_TemporaryInstantiationSituation(X)=>owl_Thing(X)))).


% ------------ gufo_s_TemporaryParthoodSituation ------------

% DisjointClasses(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom88,axiom,(![X0]:~(gufo_s_TemporaryParthoodSituation(X0)&gufo_s_TemporaryRelationshipSituation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom162,axiom,(![X0]:(gufo_s_TemporaryParthoodSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedParthood(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedParthood(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedParthood(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>))
fof(axiom206,axiom,(![X]:(gufo_s_TemporaryParthoodSituation(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom300,axiom,(![X0]:(gufo_s_TemporaryParthoodSituation(X0)=>gufo_i_Situation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsTemporaryWhole> <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom367,axiom,(![X0]:(gufo_s_TemporaryParthoodSituation(X0)=>(?[X1]:(gufo_s_concernsTemporaryWhole(X0,X1)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_concernsTemporaryWhole(X0,X2)&gufo_i_Endurant(X2)&gufo_s_concernsTemporaryWhole(X0,X3)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).


% ------------ gufo_s_TemporaryRelationshipSituation ------------

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> ObjectExactCardinality(1 <http://purl.org/nemo/gufo/situations#concernsRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>))
fof(axiom32,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>(?[X1]:(gufo_s_concernsRelationshipType(X0,X1)&gufo_t_RelationshipType(X1))&![X2,X3]:((gufo_s_concernsRelationshipType(X0,X2)&gufo_t_RelationshipType(X2)&gufo_s_concernsRelationshipType(X0,X3)&gufo_t_RelationshipType(X3))=>~(X2!=X3)))))).

% Declaration(Class(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>))
fof(axiom33,axiom,(![X]:(gufo_s_TemporaryRelationshipSituation(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom49,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>gufo_i_Situation(X0)))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> ObjectSomeValuesFrom(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant> <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom209,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>?[X1]:(gufo_s_concernsRelatedEndurant(X0,X1)&gufo_i_Endurant(X1))))).

% SubClassOf(<http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation> ObjectExactCardinality(1 ObjectInverseOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship>) <http://purl.org/nemo/gufo/individuals#Endurant>))
fof(axiom365,axiom,(![X0]:(gufo_s_TemporaryRelationshipSituation(X0)=>(?[X1]:(gufo_s_standsInQualifiedRelationship(X1,X0)&gufo_i_Endurant(X1))&![X2,X3]:((gufo_s_standsInQualifiedRelationship(X2,X0)&gufo_i_Endurant(X2)&gufo_s_standsInQualifiedRelationship(X3,X0)&gufo_i_Endurant(X3))=>~(X2!=X3)))))).


% ------------------------------------------------------------------------------------

% ------------ gufo_s_concernsConstitutedEndurant ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom55,axiom,(![X0,X1]:(gufo_s_concernsConstitutedEndurant(X0,X1)=>gufo_i_Endurant(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant> <http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>)
fof(axiom230,axiom,(![X0,X1]:(gufo_s_concernsConstitutedEndurant(X0,X1)=>gufo_s_TemporaryConstitutionSituation(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant>))
fof(axiom283,axiom,(![X,Y]:(gufo_s_concernsConstitutedEndurant(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsConstitutedEndurant>))
fof(axiom284,axiom,(![X,Y]:(gufo_s_concernsConstitutedEndurant(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_s_concernsNonRigidType ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsNonRigidType>))
fof(axiom26,axiom,(![X,Y]:(gufo_s_concernsNonRigidType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsNonRigidType>))
fof(axiom27,axiom,(![X,Y]:(gufo_s_concernsNonRigidType(X,Y)=>owl_Thing(Y)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsNonRigidType>)
fof(axiom72,axiom,(![X0,X1,X2]:((gufo_s_concernsNonRigidType(X0,X1)&gufo_s_concernsNonRigidType(X0,X2))=>(X1=X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsNonRigidType> <http://purl.org/nemo/gufo/endurant-types#NonRigidType>)
fof(axiom79,axiom,(![X0,X1]:(gufo_s_concernsNonRigidType(X0,X1)=>gufo_et_NonRigidType(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsNonRigidType> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom203,axiom,(![X0,X1]:(gufo_s_concernsNonRigidType(X0,X1)=>gufo_s_TemporaryInstantiationSituation(X0)))).


% ------------ gufo_s_concernsQualityType ------------

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsQualityType>)
fof(axiom78,axiom,(![X0,X1,X2]:((gufo_s_concernsQualityType(X0,X1)&gufo_s_concernsQualityType(X0,X2))=>(X1=X2)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsQualityType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom207,axiom,(![X0,X1]:(gufo_s_concernsQualityType(X0,X1)=>gufo_t_EndurantType(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsQualityType> <http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>)
fof(axiom296,axiom,(![X0,X1]:(gufo_s_concernsQualityType(X0,X1)=>gufo_s_QualityValueAttributionSituation(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsQualityType>))
fof(axiom307,axiom,(![X,Y]:(gufo_s_concernsQualityType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsQualityType>))
fof(axiom308,axiom,(![X,Y]:(gufo_s_concernsQualityType(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_s_concernsReifiedQualityValue ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue> <http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>)
fof(axiom172,axiom,(![X0,X1]:(gufo_s_concernsReifiedQualityValue(X0,X1)=>gufo_s_QualityValueAttributionSituation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue> <http://purl.org/nemo/gufo/qualities-advanced#QualityValue>)
fof(axiom204,axiom,(![X0,X1]:(gufo_s_concernsReifiedQualityValue(X0,X1)=>gufo_qa_QualityValue(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue>))
fof(axiom274,axiom,(![X,Y]:(gufo_s_concernsReifiedQualityValue(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue>))
fof(axiom275,axiom,(![X,Y]:(gufo_s_concernsReifiedQualityValue(X,Y)=>owl_Thing(Y)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsReifiedQualityValue>)
fof(axiom303,axiom,(![X0,X1,X2]:((gufo_s_concernsReifiedQualityValue(X0,X1)&gufo_s_concernsReifiedQualityValue(X0,X2))=>(X1=X2)))).


% ------------ gufo_s_concernsRelatedEndurant ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom52,axiom,(![X0,X1]:(gufo_s_concernsRelatedEndurant(X0,X1)=>gufo_s_TemporaryRelationshipSituation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom144,axiom,(![X0,X1]:(gufo_s_concernsRelatedEndurant(X0,X1)=>gufo_i_Endurant(X1)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant>)
fof(axiom247,axiom,(![X0,X1,X2]:((gufo_s_concernsRelatedEndurant(X0,X1)&gufo_s_concernsRelatedEndurant(X0,X2))=>(X1=X2)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant>))
fof(axiom315,axiom,(![X,Y]:(gufo_s_concernsRelatedEndurant(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelatedEndurant>))
fof(axiom316,axiom,(![X,Y]:(gufo_s_concernsRelatedEndurant(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_s_concernsRelationshipType ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsRelationshipType> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom24,axiom,(![X0,X1]:(gufo_s_concernsRelationshipType(X0,X1)=>gufo_s_TemporaryRelationshipSituation(X0)))).

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelationshipType>)
fof(axiom30,axiom,(![X0,X1,X2]:((gufo_s_concernsRelationshipType(X0,X1)&gufo_s_concernsRelationshipType(X0,X2))=>(X1=X2)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelationshipType>))
fof(axiom69,axiom,(![X,Y]:(gufo_s_concernsRelationshipType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsRelationshipType>))
fof(axiom70,axiom,(![X,Y]:(gufo_s_concernsRelationshipType(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsRelationshipType> <http://purl.org/nemo/gufo/types#RelationshipType>)
fof(axiom333,axiom,(![X0,X1]:(gufo_s_concernsRelationshipType(X0,X1)=>gufo_t_RelationshipType(X1)))).


% ------------ gufo_s_concernsTemporaryWhole ------------

% FunctionalObjectProperty(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole>)
fof(axiom20,axiom,(![X0,X1,X2]:((gufo_s_concernsTemporaryWhole(X0,X1)&gufo_s_concernsTemporaryWhole(X0,X2))=>(X1=X2)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom34,axiom,(![X0,X1]:(gufo_s_concernsTemporaryWhole(X0,X1)=>gufo_s_TemporaryParthoodSituation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom145,axiom,(![X0,X1]:(gufo_s_concernsTemporaryWhole(X0,X1)=>gufo_i_Endurant(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole>))
fof(axiom336,axiom,(![X,Y]:(gufo_s_concernsTemporaryWhole(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#concernsTemporaryWhole>))
fof(axiom337,axiom,(![X,Y]:(gufo_s_concernsTemporaryWhole(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_s_isSituationProperPartOf ------------

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf> <http://purl.org/nemo/gufo/individuals#isProperPartOf>)
fof(axiom142,axiom,(![X0,X1]:(gufo_s_isSituationProperPartOf(X0,X1)=>gufo_i_isProperPartOf(X0,X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom149,axiom,(![X0,X1]:(gufo_s_isSituationProperPartOf(X0,X1)=>gufo_i_Situation(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom187,axiom,(![X0,X1]:(gufo_s_isSituationProperPartOf(X0,X1)=>gufo_i_Situation(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf>))
fof(axiom232,axiom,(![X,Y]:(gufo_s_isSituationProperPartOf(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#isSituationProperPartOf>))
fof(axiom233,axiom,(![X,Y]:(gufo_s_isSituationProperPartOf(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_s_standsIn ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsIn>))
fof(axiom226,axiom,(![X,Y]:(gufo_s_standsIn(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsIn>))
fof(axiom227,axiom,(![X,Y]:(gufo_s_standsIn(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsIn> owl:Thing)
fof(axiom318,axiom,(![X0,X1]:(gufo_s_standsIn(X0,X1)=>owl_Thing(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsIn> <http://purl.org/nemo/gufo/individuals#Situation>)
fof(axiom324,axiom,(![X0,X1]:(gufo_s_standsIn(X0,X1)=>gufo_i_Situation(X1)))).


% ------------ gufo_s_standsInQualifiedAttribution ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution> <http://purl.org/nemo/gufo/situations#QualityValueAttributionSituation>)
fof(axiom167,axiom,(![X0,X1]:(gufo_s_standsInQualifiedAttribution(X0,X1)=>gufo_s_QualityValueAttributionSituation(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution>))
fof(axiom218,axiom,(![X,Y]:(gufo_s_standsInQualifiedAttribution(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution>))
fof(axiom219,axiom,(![X,Y]:(gufo_s_standsInQualifiedAttribution(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom242,axiom,(![X0,X1]:(gufo_s_standsInQualifiedAttribution(X0,X1)=>gufo_i_Endurant(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedAttribution> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom254,axiom,(![X0,X1]:(gufo_s_standsInQualifiedAttribution(X0,X1)=>gufo_s_standsIn(X0,X1)))).


% ------------ gufo_s_standsInQualifiedConstitution ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution>))
fof(axiom40,axiom,(![X,Y]:(gufo_s_standsInQualifiedConstitution(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution>))
fof(axiom41,axiom,(![X,Y]:(gufo_s_standsInQualifiedConstitution(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom180,axiom,(![X0,X1]:(gufo_s_standsInQualifiedConstitution(X0,X1)=>gufo_i_Endurant(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution> <http://purl.org/nemo/gufo/situations#TemporaryConstitutionSituation>)
fof(axiom243,axiom,(![X0,X1]:(gufo_s_standsInQualifiedConstitution(X0,X1)=>gufo_s_TemporaryConstitutionSituation(X1)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedConstitution> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom320,axiom,(![X0,X1]:(gufo_s_standsInQualifiedConstitution(X0,X1)=>gufo_s_standsIn(X0,X1)))).


% ------------ gufo_s_standsInQualifiedInstantiation ------------

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation>))
fof(axiom28,axiom,(![X,Y]:(gufo_s_standsInQualifiedInstantiation(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation>))
fof(axiom29,axiom,(![X,Y]:(gufo_s_standsInQualifiedInstantiation(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom112,axiom,(![X0,X1]:(gufo_s_standsInQualifiedInstantiation(X0,X1)=>gufo_i_Endurant(X0)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom115,axiom,(![X0,X1]:(gufo_s_standsInQualifiedInstantiation(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedInstantiation> <http://purl.org/nemo/gufo/situations#TemporaryInstantiationSituation>)
fof(axiom133,axiom,(![X0,X1]:(gufo_s_standsInQualifiedInstantiation(X0,X1)=>gufo_s_TemporaryInstantiationSituation(X1)))).


% ------------ gufo_s_standsInQualifiedParthood ------------

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom31,axiom,(![X0,X1]:(gufo_s_standsInQualifiedParthood(X0,X1)=>gufo_s_standsIn(X0,X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom42,axiom,(![X0,X1]:(gufo_s_standsInQualifiedParthood(X0,X1)=>gufo_i_Endurant(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood>))
fof(axiom97,axiom,(![X,Y]:(gufo_s_standsInQualifiedParthood(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood>))
fof(axiom98,axiom,(![X,Y]:(gufo_s_standsInQualifiedParthood(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedParthood> <http://purl.org/nemo/gufo/situations#TemporaryParthoodSituation>)
fof(axiom213,axiom,(![X0,X1]:(gufo_s_standsInQualifiedParthood(X0,X1)=>gufo_s_TemporaryParthoodSituation(X1)))).


% ------------ gufo_s_standsInQualifiedRelationship ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship> <http://purl.org/nemo/gufo/situations#TemporaryRelationshipSituation>)
fof(axiom194,axiom,(![X0,X1]:(gufo_s_standsInQualifiedRelationship(X0,X1)=>gufo_s_TemporaryRelationshipSituation(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship> <http://purl.org/nemo/gufo/individuals#Endurant>)
fof(axiom202,axiom,(![X0,X1]:(gufo_s_standsInQualifiedRelationship(X0,X1)=>gufo_i_Endurant(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship>))
fof(axiom325,axiom,(![X,Y]:(gufo_s_standsInQualifiedRelationship(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship>))
fof(axiom326,axiom,(![X,Y]:(gufo_s_standsInQualifiedRelationship(X,Y)=>owl_Thing(Y)))).

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/situations#standsInQualifiedRelationship> <http://purl.org/nemo/gufo/situations#standsIn>)
fof(axiom382,axiom,(![X0,X1]:(gufo_s_standsInQualifiedRelationship(X0,X1)=>gufo_s_standsIn(X0,X1)))).

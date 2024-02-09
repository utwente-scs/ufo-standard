% ------------ gufo_qa_QualityValue ------------

% Declaration(Class(<http://purl.org/nemo/gufo/qualities-advanced#QualityValue>))
fof(axiom35,axiom,(![X]:(gufo_qa_QualityValue(X)=>owl_Thing(X)))).

% SubClassOf(<http://purl.org/nemo/gufo/qualities-advanced#QualityValue> <http://purl.org/nemo/gufo/individuals#AbstractIndividual>)
fof(axiom262,axiom,(![X0]:(gufo_qa_QualityValue(X0)=>gufo_i_AbstractIndividual(X0)))).


% ------------ time_Instant ------------

% Declaration(Class(<http://www.w3.org/2006/time#Instant>))
fof(axiom131,axiom,(![X]:(time_Instant(X)=>owl_Thing(X)))).

% SubClassOf(<http://www.w3.org/2006/time#Instant> <http://purl.org/nemo/gufo/individuals#AbstractIndividual>)
fof(axiom364,axiom,(![X0]:(time_Instant(X0)=>gufo_i_AbstractIndividual(X0)))).


% ------------------------------------------------------------------------------------

% ------------ gufo_qa_hasAssociatedQualityValueType ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType> <http://purl.org/nemo/gufo/types#EndurantType>)
fof(axiom205,axiom,(![X0,X1]:(gufo_qa_hasAssociatedQualityValueType(X0,X1)=>gufo_t_EndurantType(X0)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType> <http://purl.org/nemo/gufo/types#AbstractIndividualType>)
fof(axiom269,axiom,(![X0,X1]:(gufo_qa_hasAssociatedQualityValueType(X0,X1)=>gufo_t_AbstractIndividualType(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType>))
fof(axiom372,axiom,(![X,Y]:(gufo_qa_hasAssociatedQualityValueType(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasAssociatedQualityValueType>))
fof(axiom373,axiom,(![X,Y]:(gufo_qa_hasAssociatedQualityValueType(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_qa_hasReifiedQualityValue ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue> <http://purl.org/nemo/gufo/qualities-advanced#QualityValue>)
fof(axiom216,axiom,(![X0,X1]:(gufo_qa_hasReifiedQualityValue(X0,X1)=>gufo_qa_QualityValue(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom244,axiom,(![X0,X1]:(gufo_qa_hasReifiedQualityValue(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue>))
fof(axiom90,axiom,(![X,Y]:(gufo_qa_hasReifiedQualityValue(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasReifiedQualityValue>))
fof(axiom91,axiom,(![X,Y]:(gufo_qa_hasReifiedQualityValue(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_qa_hasBeginPoint ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom61,axiom,(![X0,X1]:(gufo_qa_hasBeginPoint(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint>))
fof(axiom140,axiom,(![X,Y]:(gufo_qa_hasBeginPoint(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint>))
fof(axiom141,axiom,(![X,Y]:(gufo_qa_hasBeginPoint(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasBeginPoint> <http://www.w3.org/2006/time#Instant>)
fof(axiom188,axiom,(![X0,X1]:(gufo_qa_hasBeginPoint(X0,X1)=>time_Instant(X1)))).


% ------------ gufo_qa_hasEndPoint ------------

% ObjectPropertyRange(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint> <http://www.w3.org/2006/time#Instant>)
fof(axiom44,axiom,(![X0,X1]:(gufo_qa_hasEndPoint(X0,X1)=>time_Instant(X1)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint> <http://purl.org/nemo/gufo/individuals#ConcreteIndividual>)
fof(axiom220,axiom,(![X0,X1]:(gufo_qa_hasEndPoint(X0,X1)=>gufo_i_ConcreteIndividual(X0)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint>))
fof(axiom312,axiom,(![X,Y]:(gufo_qa_hasEndPoint(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/qualities-advanced#hasEndPoint>))
fof(axiom313,axiom,(![X,Y]:(gufo_qa_hasEndPoint(X,Y)=>owl_Thing(Y)))).

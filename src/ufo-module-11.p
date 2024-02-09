% ------------ gufo_ho_categorizes ------------

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/high-order-types#categorizes> ObjectIntersectionOf(<http://purl.org/nemo/gufo/individuals#Type> ObjectComplementOf(<http://purl.org/nemo/gufo/types#AbstractIndividualType>) ObjectComplementOf(<http://purl.org/nemo/gufo/types#ConcreteIndividualType>)))
fof(axiom74,axiom,(![X0,X1]:(gufo_ho_categorizes(X0,X1)=>(gufo_i_Type(X0)&~gufo_t_AbstractIndividualType(X0)&owl_Thing(X0)&~gufo_t_ConcreteIndividualType(X0)&owl_Thing(X0))))).

% ObjectPropertyRange(<http://purl.org/nemo/gufo/high-order-types#categorizes> <http://purl.org/nemo/gufo/individuals#Type>)
fof(axiom102,axiom,(![X0,X1]:(gufo_ho_categorizes(X0,X1)=>gufo_i_Type(X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#categorizes>))
fof(axiom351,axiom,(![X,Y]:(gufo_ho_categorizes(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#categorizes>))
fof(axiom352,axiom,(![X,Y]:(gufo_ho_categorizes(X,Y)=>owl_Thing(Y)))).


% ------------ gufo_ho_partitions ------------

% SubObjectPropertyOf(<http://purl.org/nemo/gufo/high-order-types#partitions> <http://purl.org/nemo/gufo/high-order-types#categorizes>)
fof(axiom109,axiom,(![X0,X1]:(gufo_ho_partitions(X0,X1)=>gufo_ho_categorizes(X0,X1)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#partitions>))
fof(axiom349,axiom,(![X,Y]:(gufo_ho_partitions(X,Y)=>owl_Thing(X)))).

% Declaration(ObjectProperty(<http://purl.org/nemo/gufo/high-order-types#partitions>))
fof(axiom350,axiom,(![X,Y]:(gufo_ho_partitions(X,Y)=>owl_Thing(Y)))).

% ObjectPropertyDomain(<http://purl.org/nemo/gufo/high-order-types#partitions> ObjectIntersectionOf(<http://purl.org/nemo/gufo/individuals#Type> ObjectComplementOf(<http://purl.org/nemo/gufo/types#AbstractIndividualType>) ObjectComplementOf(<http://purl.org/nemo/gufo/types#ConcreteIndividualType>)))
fof(axiom379,axiom,(![X0,X1]:(gufo_ho_partitions(X0,X1)=>(gufo_i_Type(X0)&~gufo_t_AbstractIndividualType(X0)&owl_Thing(X0)&~gufo_t_ConcreteIndividualType(X0)&owl_Thing(X0))))).

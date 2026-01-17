action def test {
	
// Action declarations: define the action usages a, b, c, d as steps within this action
// (their execution order is specified later using 'first ... then ...')
	action a; 
	action b;
	action c;
	action d;
	
	//Inline Notation first ... then ...y ;
	first start then a;
	first a then b;
	
	succession 'from b to c' first b then c;  

	//line notation 
	//
	first c;
	then d; 
	
	first d;
	then done; // 'start'/'done' are keywords (built-in actions), not user-defined elements.
		

	}
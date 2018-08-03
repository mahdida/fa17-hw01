pragma solidity ^0.4.16;


contract Greeter {
	/* Add one variable to hold our greeting */
	string []greeting;
	uint count=0;

	function Greeter(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greeting.push(_greeting);
		count = count+1;
	}
	
	function Getgreeting(string _greeting) public {
		/* Write one line of code for the contract to set our greeting */
		greeting.push(_greeting);
		count = count+1;
	}

	function greet(uint _count) constant returns (string)  {
		/* Write one line of code to allow the contract to return our greeting */
		return greeting[_count];
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function(){
	    
	}
	
}

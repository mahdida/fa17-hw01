pragma solidity ^0.4.16;


contract Fibonacci {
    
    mapping(uint => uint) FibonacciList;
    event FibonacciMade (uint p , uint r);
    
	function calculate(uint position) returns (uint result) {
		/* Carry out calculations to find the nth Fibonacci number */
		require(position >=0);
		if(position ==0){
		    return 0;
		}
		else if(position ==1){
		    return 1;
		}
		else{
		    if(FibonacciList[position] !=0){
		        return FibonacciList[position];
		    }
		}
		
		result = calculate(position-1) + calculate(position-2);
		FibonacciList[position] = result;
		FibonacciMade(position,result);
		return FibonacciList[position];
		
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function(){
	    
	}

}

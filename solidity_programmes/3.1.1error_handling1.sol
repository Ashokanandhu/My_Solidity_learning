//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Error {
    function testRequire(uint _i) public pure
    {
        //Require should be used to validate condition such as:
        //-inputs
        //-conditions before execution
        //-return values from calls to other functions
        require(_i>10, "inputs must be greater than 10");
    }
    function testRvert(uint _i)public pure
     {
        // Revert is usefull when the  condition to check is complex.
        // This code does the exact samething as the example above
        if(_i<=10){
            revert("input must be greater than 10");
        }
     }
     uint public num;
function testAssert() public view {
    // assert should only be used to test for internal errors.
    //and to check inbvariants
    // here we assert that num is always equal to 0.
    //since it is impossible to update the value of num.
    assert(num==0);
}
//custom error
    error InsufficientBalance(uint balance,uint withdrawAmount);
    function testCostumError(uint _withdrawAmount) public pure {
    uint bal=100000;
    if(bal<_withdrawAmount){
        revert InsufficientBalance({balance:bal,withdrawAmount:_withdrawAmount});
    }
    }
}
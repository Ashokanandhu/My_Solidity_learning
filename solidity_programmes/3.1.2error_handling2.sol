//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Errorhandling
{
    function testRequire(uint _number1,uint _number2) external pure
    {
        require(_number1>=_number2,"If number1 is greater than number2 then revert the transaction to the initial state");
    }
}
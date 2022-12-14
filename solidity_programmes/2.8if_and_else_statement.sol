//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Conditionalstatements
{
    function ifelsestatement(uint number1) external pure returns(uint)
    {
        if(number1<10)
        {
            return 1;
        }
        else if(number1<20)
        {
            return 2;
        }
        else
        {
            return 3;
        }
    }
    function Ternaryoperator(uint number1) external pure returns(uint)
    {
        return number1>1? 10:20;
        //condition ? the value to be returne if true: the value to be return if false
    }
    function simpleifstatement(uint number1) external pure returns(uint)
    {
        if (number1>0)
        {
            return 1;
        }
        return 0;
    }
    function simpleternaryoperator(uint number1) external pure returns(uint)
    {
        return number1>0? 1: 0;
    }
}
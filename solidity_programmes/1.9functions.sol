//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Functions
{
    function add(uint num1,uint num2) external pure returns(uint)
    {
        return num1+num2;
    }
    function sub(uint num1,uint num2) external pure returns(uint)
    {
        return num1-num2;
    }
    function mul(uint num1,uint num2) external pure returns(uint)
    {
        return num1*num2;
    }
    function div(uint num1,uint num2) external pure returns(uint)
    {
        return num1/num2;
    }
    function mod(uint num1,uint num2) external pure returns(uint)
    {
        return num1%num2;
    }
}
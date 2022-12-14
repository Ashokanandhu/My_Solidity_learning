//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Localvariables
{
    uint public firstvariable;
    bool public secondvariable;
    address public myaddress;
    function localvarables() external
    {
        uint mynumber=123;
        bool myboolean=false;
        mynumber=mynumber+123;
        myboolean=true;
        firstvariable=123;
        secondvariable=true;
        myaddress=address(1);

    }
}
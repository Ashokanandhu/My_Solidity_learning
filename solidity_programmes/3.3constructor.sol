//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract ConstructorExample
{
    address public myownerAddress;
    uint public number;
    string public myname;
    constructor(string memory _myname,uint _number)
    {
        myownerAddress=msg.sender;
        myname=_myname;
        number=_number;
    }
}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Datalocations
{
    uint public number1;
    uint public myarray;
    struct Mystruct
    {
        uint rollno;//0
        string myname;//0
    }
    mapping(address=>Mystruct) public myStructs;
    function Inputs(uint[] calldata num,string calldata name) external returns(uint[] memory)
    {
        myStructs[msg.sender]=Mystruct
        (
            {
                rollno:1206,
                myname:"Anandhu"
            }
        );
        Mystruct storage MyStruct=myStructs[msg.sender];
        MyStruct.myname="Amar Misra";
        uint[] memory Arraymemory=new uint[](3);
        Arraymemory[0]=1205;
        return Arraymemory;

    }
    function set(address _address,string calldata _myname) external
    {
        Mystruct storage myStruct=myStructs[_address];
        myStruct.myname=_myname;
    }
    function get(address _address) external view returns(string memory)
    {
        return myStructs[_address].myname;
    }
}
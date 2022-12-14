//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract storageMemory
{
    uint[] public myarray=[10,20,30,40,50];
    function storageFunction() public 
    {
        uint[] storage mystorageArray=myarray;
        mystorageArray[0]=60;
    }
    function mymemoryFunction() public view  returns(uint,uint)
    {
        uint[] memory mymemoryArray= myarray;
        mymemoryArray[0]=70;
        return (myarray[0],mymemoryArray[0]);
        
    }
}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract memoryCalldata
{
    function memoryFunction(string memory mystring,uint[] memory myarray) public
    {
        getmemoryFunction(myarray);
        //getmemoryFunction(myarray);
        // the gas fees charged here is:25253

    }
    function calldataFunction(string calldata mystring ,uint[] calldata myarray) public
    {
        getmemoryFunction(myarray);
        getcalldataFunction(myarray);
        //the gas fees charged here is :23229
    }
    function getmemoryFunction(uint[] memory myarray) public
    {

    }
    function getcalldataFunction(uint[] calldata myarray) public
    {

    }
}
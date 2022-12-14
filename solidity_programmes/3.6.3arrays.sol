//Solidity program to demonstrate
//creating a dynamic array
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
//creating a contract
contract DynamicArray
{
    //Declaring state variables
    //of type array one is fixed-size
    //and the other is dynamic array
    uint[] data=[10,20,30,40,50];
    int[] data1;
    //Defining function to
    //assign values to dynamic array 
    function dynamic_array() public returns(uint[] memory,int[] memory)
    {
        data1=[int(-60),70,-80,-100,-120,-140,-160];
        return (data,data1);
    }
}

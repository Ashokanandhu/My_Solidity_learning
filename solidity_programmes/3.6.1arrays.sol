//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract ArrayElements
{
    //Several ways to initialize array
    uint[] public myFirstarray;
    uint[] public mySecondarray=[1,2,3];
    //Fixed size array all elements initialize to zero
    uint[3] public Fixedsizearray;
    //insert,read,update and delete
    function operationarrays() external  returns(uint,uint,uint)
    {
        //insert- add new element to end of array
        myFirstarray.push(1);
        //read
        uint firstelement=myFirstarray[0];
        //update
        myFirstarray[0]=123;
        uint updatedElement=myFirstarray[0];

        //Delete does not change the arraylength
        //It resets the value at index to it's default value, in this case 0
        delete myFirstarray[0];
        //Get length of array
        uint myarraylength=myFirstarray.length;
        //push inserts an element into array
        myFirstarray.push(10);
        myFirstarray.push(20);
        //pop removes last element
        //20 is removed
        myFirstarray.pop();
        //Fixed size array can be created in memory
        uint[] memory a=new uint[](3);
        //push and pop are not available
        //a.push(1)
        //a.pop(0)
        a[0]=1;
        return(firstelement,updatedElement,myarraylength);
    }
    function get(uint elements) external view returns(uint)
    {
        return myFirstarray[elements];
    }
    function push(uint Newelement) external
    {
        myFirstarray.push(Newelement);
    }
    function remove(uint DeleteElement) external
    {
        delete myFirstarray[DeleteElement];
    }
    function getLength() external view returns(uint)
    {
        return myFirstarray.length;
    }


}
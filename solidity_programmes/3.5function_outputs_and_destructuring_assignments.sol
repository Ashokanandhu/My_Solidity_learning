//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Functionoutputs
{
    // Functions can return multiple outputs
    function returnManyoutputs() public pure returns(uint,bool)
    {
        return(1,true);
    }
    //outputs can be named
    function namedoutputs() public pure returns(uint number,bool Myboolstatus)
    {
        return(1,true);

    }
    //outputs can be assigned to their names
    // here return statement can be omitted
    function AssignedOutput() public pure returns(uint number,bool Myboolstatus)
    {
        number=1;
        Myboolstatus=true;
    }
    //Using destructuring assignment when calling another
    //function that returns multiple outputs
    function DestructuringAssignments() public pure 
    {
        (uint number,bool myboolstatus) = returnManyoutputs();
        //Outputs can be left out 
        (,bool Myanotherboolstatus) = returnManyoutputs();
    }
    function Samplefunction() external view returns(address,bool)
    {
        return(msg.sender,true);
    }
}
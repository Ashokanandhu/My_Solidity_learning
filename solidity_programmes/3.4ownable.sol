//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Ownable
{
    address public Firstowner;
    constructor()
    {
        Firstowner=msg.sender;
        //0x5A86858aA3b595FD6663c2296741eF4cd8BC4d01=Contract address

    }
    modifier onlyFirstowner()
    {
        require(msg.sender==Firstowner,"You are not the Owner of this Contract");
        _;
    }
    function setAnotherowner(address _newOwner) external onlyFirstowner
    {
        //Check that _newOwner is not address(0) and throw an error " The new owner is at zero address" if it is.
        require(_newOwner !=address(0),"The owner is at address zero");
        Firstowner=_newOwner;
    }
}
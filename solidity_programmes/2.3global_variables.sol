//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Globalvariables
{
    function Myglobalvariables() external view returns(address,uint,uint,bytes32)
    {
        address sender=msg.sender;
        //address that called this function
        uint timestamp=block.timestamp;
        //timestamp (in seconds) of current block
        uint blockNum=block.number;
        //current block number
        bytes32 blockHash=blockhash(block.number);
        //hash of given block 
        //here we get the hash of the current block
        //WARNING:only works for 256 recent blocks
        return(sender,timestamp,blockNum,blockHash);
    }
    function returnsender() external view returns(address)
    {
        return msg.sender;
    }
}
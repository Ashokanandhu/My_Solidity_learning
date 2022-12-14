//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Iterativestatements
{
    function sum(uint _number) external pure returns(uint)
    {
        uint total;
        for(uint i=1; i<=_number;i++)
        {
            total +=i;
        }
        return total;
    }
}
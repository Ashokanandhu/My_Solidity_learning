//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Counter
{
    uint public count;
    function increment() external
    {
        count+=1;
    }
    function decrement() external
    {
        count-=1;
    }
}
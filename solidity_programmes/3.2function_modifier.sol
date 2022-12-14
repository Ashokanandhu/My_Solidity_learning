//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Functionmodifier
{
    bool public functionisPaused;
    uint public count;
    modifier whenFunctionisnotPaused()
    {
        require(!functionisPaused,"You cennot modify when it is paused");
        _;
    }
    function setPause(bool _functionisPaused) external
    {
        functionisPaused=_functionisPaused;
    }
    function Increment() external whenFunctionisnotPaused
    {
        count =count+1;
    }
    function Decrement() external whenFunctionisnotPaused
    {
        count =count-1;
    }
    modifier whenFunctionisPaused()
    {
        require(!functionisPaused,"You can modify when it is not paused");
        _;
    }
    function reset() external whenFunctionisPaused
    {
        count = 0;
    }
    modifier check(uint _number1)
    {
        require(_number1<10,"Number1 must be less than or equal to 10");
        _;
    }
    function IncrementbyNumber(uint _number1) external whenFunctionisnotPaused check(_number1)
    {
        count = count +_number1;
    }

}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract Functions
{
    uint public mynumber;
    function setMynumber(uint _mynumber) external
    {
        mynumber=_mynumber;
    }
    function resetMynumber() external
    {
        mynumber=0;
    }
    function getMynumber() external view returns(uint)
    {
        return mynumber;
    }
    function getMynumberplusone() external view returns(uint)
    {
        return mynumber+1;
    }

}
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
contract StatusoftheOrder
{
    enum status
    {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    }
    status public Status;
    function get() external view returns(status)
    {
        return(Status);
    }
    function set(status _status) external
    {
        Status=_status;
    }
    function cancel() external
    {
        Status=status.Cancelled;
    }
    function reject() external
    {
        Status=status.Rejected;
    }
    function shipping() external
    {
        Status=status.Shipped;
    }
    function reset() external
    {
        delete Status;
    }
}
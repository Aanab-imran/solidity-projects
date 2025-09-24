// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Subscription {
    struct User {
        uint256 nextPayment; 
    }
    mapping(address => User) public subscribers;
    uint256 public monthlyFee = 1 ether;

    function subscribe() public payable {
        require(msg.value == monthlyFee, "Pay full fee"); 
        subscribers[msg.sender].nextPayment = block.timestamp + 30 days; 
    }

    function canUseService() public view returns (bool) {
        return block.timestamp <= subscribers[msg.sender].nextPayment; 
    }
}
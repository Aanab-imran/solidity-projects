// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimplePiggyBank {
    address public owner;
    uint public unlockTime;

    constructor(uint _waitTime) {
        owner = msg.sender;
        unlockTime = block.timestamp + _waitTime;
    }
    receive() external payable {}

    function withdraw() public {
        require(msg.sender == owner, "Not owner");
        require(block.timestamp >= unlockTime, "Too early");
        payable(owner).transfer(address(this).balance);
    }
}
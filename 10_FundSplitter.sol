// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FundSplitter {
    address payable public person1;
    address payable public person2;

    constructor(address payable _p1, address payable _p2) {
        person1 = _p1;
        person2 = _p2;
    }

    receive() external payable {
        uint half = msg.value / 2;
        person1.transfer(half);
        person2.transfer(msg.value - half); 
    }
}
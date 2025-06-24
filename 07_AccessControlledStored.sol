// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AccessControlledStorage {
    address public owner;
    uint public storedData;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner!");
        _;
    }

    function updateData(uint _newData) public onlyOwner {
        storedData = _newData;
    }

    function viewData() public view returns (uint) {
        return storedData;
    }
}
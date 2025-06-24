// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicNFT {
    uint public nextId = 1;
    mapping(uint => address) public ownerOf;

    function mint() public {
        ownerOf[nextId] = msg.sender;
        nextId++;
    }

    function checkOwner(uint _id) public view returns (address) {
        return ownerOf[_id];
    }
}
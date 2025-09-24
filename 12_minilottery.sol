// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MiniLottery {
    address[] public players;

    function enter() public payable {
        require(msg.value == 0.1 ether, "Entry fee 0.1 ETH"); 
        players.push(msg.sender); 
    }

    function pickWinner() public view returns (address) {
        require(players.length > 0, "No players"); 
        uint256 index = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty))) % players.length;
        return players[index]; 
    }
}

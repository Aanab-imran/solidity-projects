// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicAuction {
    address public highestBidder;   // Sabse zyada bid dene wale ka address
    uint256 public highestBid;      // Sabse zyada bid ki amount

    function bid() public payable {
        require(msg.value > highestBid, "Bid too low"); // New bid purani se badi honi chahiye
        highestBidder = msg.sender;   // Naya bidder save karo
        highestBid = msg.value;       // Nayi amount save karo
    }
}

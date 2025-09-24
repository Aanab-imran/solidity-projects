// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BasicAuction {
    address public highestBidder;   
    uint256 public highestBid;     

    function bid() public payable {
        require(msg.value > highestBid, "Bid too low"); 
        highestBidder = msg.sender;  
        highestBid = msg.value;   
    }
}

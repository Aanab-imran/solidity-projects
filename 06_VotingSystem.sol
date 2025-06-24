// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract votingSystem {
    uint public  Candidate1voted;
    uint public Candidate2voted;
    mapping (address => bool) public hasVoted;

    function vote(uint _choice) public {
        require(hasVoted[msg.sender] == false, "You have already voted!");
        hasVoted [msg.sender] =true;
    
if (_choice ==1) {
    Candidate1voted++;
} else if (_choice ==2) {
    Candidate2voted++;
}  else {
    revert ("Invalid choice! Please vote 1 or 2.");
}
}
}
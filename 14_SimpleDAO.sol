// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleDAO {
    struct Proposal {
        string text;
        uint votes;
        bool done;
    }

    Proposal[] public proposals;
    mapping(uint => mapping(address => bool)) public voted;

    function add(string calldata _text) external {
        proposals.push(Proposal(_text, 0, false));
    }

    function vote(uint id) external {
        require(!voted[id][msg.sender], "Already voted");
        voted[id][msg.sender] = true;
        proposals[id].votes++;
    }

    function execute(uint id, uint minVotes) external {
        Proposal storage p = proposals[id];
        require(!p.done, "Already executed");
        require(p.votes >= minVotes, "Not enough votes");
        p.done = true;
    }
}

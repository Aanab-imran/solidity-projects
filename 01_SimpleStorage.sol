// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleStorage {
    uint myNumber;
    function set(uint _num) public {
        myNumber = _num;
    }
    function get ()public view returns (uint){
        return myNumber;
    }
}
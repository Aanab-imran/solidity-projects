// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReferralProgram {
    struct User {
        uint256 referrals;
        bool registered;
    }

    mapping(address => User) public users;

    function register(address _referrer) public {
        require(!users[msg.sender].registered, "Already registered"); 
        users[msg.sender].registered = true;

        if(_referrer != address(0)){
            users[_referrer].referrals += 1; 
        }
    }

    function getReferrals(address _user) public view returns (uint256) {
        return users[_user].referrals; 
    }
}

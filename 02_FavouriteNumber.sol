// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FavouriteNumber {
    mapping (string => uint) public favouriteNumbers;

function setFavouriteNumber (string memory _name, uint number) public{
    favouriteNumbers [_name] = number;

}
function getFavouriteNumber (string memory _name )view public returns (uint) {
    return favouriteNumbers[_name];
}
}
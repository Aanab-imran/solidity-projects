// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract SimpleCounter {
    uint public counter = 2;

    function increment () public {
        counter += 1;
    }
    function decrement () public {
          require(counter > 0,"counter cannot be below 0");
        counter -= 1;
    }
    function reset() public{
      
    counter = 0;
    }

}
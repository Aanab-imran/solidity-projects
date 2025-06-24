// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToDoList {
    struct Task {
        string text;
        bool done;
    }

    Task[] public tasks;

    function add(string memory _text) public {
        tasks.push(Task(_text, false));
    }

    function markDone(uint _i) public {
        tasks[_i].done = true;
    }
}
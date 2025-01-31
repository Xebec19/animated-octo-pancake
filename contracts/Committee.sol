// SPDX-License-Identifier: MIT
pragma solidity ^0.4.17;

contract Committee {
    address manager;
    address[] members;

    constructor() public {
        manager = msg.sender;
    }
}
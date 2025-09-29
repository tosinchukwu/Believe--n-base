// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BelieveInBase {
    string public message = "I Believe in Base 🚀";

    // Event when someone shows belief
    event Believed(address believer, string note);

    // Function for anyone to declare belief
    function believe(string calldata note) external {
        emit Believed(msg.sender, note);
    }

    // Update the message (optional, only contract deployer)
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function updateMessage(string calldata newMessage) external {
        require(msg.sender == owner, "Not owner");
        message = newMessage;
    }
}

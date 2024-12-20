// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTransfer {
    event Transfer(address indexed from, address indexed to, uint256 amount);

    // Function to transfer Ether
    function transfer(address payable recipient) external payable {
        require(msg.value > 0, "Transfer amount must be greater than zero");
        require(recipient != address(0), "Invalid recipient address");

        recipient.transfer(msg.value);
        emit Transfer(msg.sender, recipient, msg.value);
    }
}

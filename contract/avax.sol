// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EGOO is ERC20, Ownable {
    // Constructor to initialize the token with a name and symbol
    constructor() ERC20("EGO", "ego") Ownable(msg.sender) {}

    // Function to mint new tokens. Only the owner can call this function.
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to allow users to burn their own tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Function to allow users to transfer tokens
    function transfer(
        address to,
        uint256 amount
    ) public override returns (bool) {
        require(amount <= balanceOf(msg.sender), "Insufficient balance");
        _transfer(msg.sender, to, amount);
        return true;
    }
}

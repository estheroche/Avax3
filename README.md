# Contract Details

An ERC-20 token named "EGO" with the symbol "ego." Let me break down the code for you:

`SPDX-License-Identifier: MIT`: This is a special comment that indicates the license under which the code is released. In this case, it's the MIT license, which is a permissive open-source license.

`pragma solidity ^0.8.0;`: This statement specifies that the code should be compiled using a Solidity compiler version equal to or greater than 0.8.0 but less than 0.9.0.

`import "@openzeppelin/contracts/token/ERC20/ERC20.sol";`: This imports the ERC20 token standard from the OpenZeppelin library. ERC20 is a widely used standard for implementing fungible tokens on the Ethereum blockchain.

`import "@openzeppelin/contracts/access/Ownable.sol";`: This imports the Ownable contract from the OpenZeppelin library. The Ownable contract provides basic authorization control functions, simplifying the implementation of user permissions.

##  `contract EGOO is ERC20, Ownable { ... }`: 

This declares a new contract named "EGOO" that inherits from both the ERC20 and Ownable contracts. This means that the EGOO contract will have all the functionalities of ERC20 and Ownable.

`constructor() ERC20("EGO", "ego") Ownable(msg.sender) {}`:

 This is the constructor function that initializes the EGOO token. It calls the constructors of both ERC20 and Ownable contracts with the specified parameters. The name of the token is set to "EGO," and its symbol is set to "ego." The contract owner is set to the address that deploys the contract (msg.sender).

## Functions

`function mint(address to, uint256 amount) public onlyOwner { ... }`:

 This function allows the owner (the one who deployed the contract) to mint new EGOO tokens and assign them to a specified address (to). The onlyOwner modifier ensures that only the owner can call this function.

`function burn(uint256 amount) public { ... }`:

 This function allows users to burn (destroy) their own EGOO tokens. Users can specify the amount of tokens they want to burn, reducing the total supply. This function does not have any access control, so any token holder can burn their own tokens.

`function transfer(address to, uint256 amount) public override returns (bool) { ... }`:

 This function overrides the ERC20's transfer function. It allows users to transfer EGOO tokens to another address. The require statement ensures that the sender has a sufficient balance before the transfer occurs.




## Authors
[@metacraftersio]()

[Oche Esther](https://twitter.com/Estheroche1)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
```

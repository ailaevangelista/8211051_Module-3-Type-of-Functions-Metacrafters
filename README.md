# Module 3 Type of Functions Metacrafters
The MyToken contract is a custom implementation of an ERC20 token utilizing the OpenZeppelin library to ensure robust and secure standard functionality. This smart contract includes additional features for minting and burning tokens, with special access control mechanisms for these operations.

## Usage

This contract is suitable for deploying an ERC20 token with advanced control over token minting and burning, making it ideal for use cases where a central authority (the owner) needs to manage the token supply.

### Key Features

1. Standard ERC20 Compliance: Inherits from OpenZeppelin's ERC20 contract, providing standard token functionalities including transfers and approvals.
2. Ownership and Access Control: The contract designates an owner upon deployment, who has exclusive rights to mint new tokens.
3. Minting Capability: The contract owner can create new tokens and assign them to any specified address.
4. Burning Capability: Any token holder can burn their own tokens, reducing the total supply.
5. Custom Transfer Functions: Overrides the default transfer and transferFrom functions to ensure they work seamlessly with the contract's internal logic.

#### License

This project is licensed under the MIT License - see the LICENSE file for details.

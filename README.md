# ETH-prooject
# Overview
MyToken is a simple ERC-20-like token implemented in Solidity. This smart contract allows for minting and burning of tokens, and keeps track of balances for each address.

# Features
Token Details:

Name: tikku
Symbol: TK
Initial Total Supply: 100
Minting: Create new tokens and add them to an address's balance.

Burning: Destroy tokens from an address's balance.

# Contract Details
Public Variables
string public tokenName: The name of the token.
string public tokenAbbrv: The symbol/abbreviation of the token.
uint256 public totalSupply: The total supply of the tokens.
# Mapping
mapping(address => uint) public balances: Stores the token balance for each address.
# Functions
mint(address _address, uint _value)
Increases the total supply and the balance of the specified address.

# Parameters:
_address: The address to which new tokens will be added.
_value: The amount of tokens to be minted.
burn(address _address, uint _value)
Decreases the total supply and the balance of the specified address, if the address has enough tokens.

Parameters:
_address: The address from which tokens will be burned.
_value: The amount of tokens to be burned.
# Example Usage
Minting Tokens

solidity
Copy code
mint(0xABC, 50);
// Total supply: 150
// Balance of 0xABC: 50
Burning Tokens

solidity
Copy code
burn(0xABC, 20);
// Total supply: 130
// Balance of 0xABC: 30
Checking Balances

solidity
Copy code
uint aliceBalance = balances(0xABC); // Returns 30
# License
This project is licensed under the MIT License - see the LICENSE file for details.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    // Public variables to store token details
    string public tokenName = "tikku";
    string public tokenAbbrv = "TK";
    uint256 public totalSupply = 100;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Burn function to destroy tokens
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        } else {
            revert("Insufficient balance to burn");
        }
    }
}

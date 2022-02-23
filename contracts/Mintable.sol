// SPDX-License-Identifier: GPL-3.0 //
pragma solidity ^0.8.0;

import "./Token.sol";

contract MintableToken is Token {
    // Excercise 3: custom initialization //
    // Create a scenario, where echidna_caller (0x00a329c0648769a73afac7f9381e08fb43dbea70) becomes the owner of the contract at construction, and totalMintable is set to 10,000. Recall that Echidna needs a constructor without argument.
    // Add a property to check if echidna_caller cannot mint more than 10,000 tokens.
    int256 totalMintable;
    int256 totalMinted;

    constructor(int256 _totalMintable) {
        totalMintable = _totalMintable;
    }

    function mint(uint256 value) public isOwner {
        require(int256(value) + totalMinted < totalMintable);
        totalMinted += int256(value);
        balances[msg.sender] += value;
    }
}

contract TestToken is MintableToken {
    address echidna_caller = 0x00a329C0648769a73afAC7F9381e08fb43DBEA70;

    constructor() MintableToken(10000) {
        owner = echidna_caller;
    }

    function echidna_test_balance() public view returns (bool) {
        return balances[msg.sender] <= 10000;
    }
}

// SPDX-License-Identifier: GPL-3.0//
pragma solidity ^0.8.0;

import "./Token.sol";

contract TestToken is Token {
    address echidna_caller = 0x00a329C0648769a73afAC7F9381e08fb43DBEA70;

    constructor() public {
        // allot 1000 tokens to caller address for testing//
        balances[echidna_caller] = 1000;
    }

    function echidna_test_transfer() public view returns (bool) {}
}

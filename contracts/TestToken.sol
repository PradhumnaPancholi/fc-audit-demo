// SPDX-License-Identifier: GPL-3.0//
pragma solidity ^0.8.0;

import "./Token.sol";

contract TestToken is Token {
    address echidna_caller = 0x00a329C0648769a73afAC7F9381e08fb43DBEA70;

    // Exercise 1: test transfer with the condition that echidna_caller can't have more than 1000 tokens//
    // constructor() public {
    //     // allot 1000 tokens to caller address for testing//
    //     balances[echidna_caller] = 1000;
    // }

    // // property - echidna_caller should not have more than 1000 tokens;
    // function echidna_test_transfer() public view returns (bool) {
    //     return balances[echidna_caller] <= 1000;
    // }

    // Excercise 2: Test access control //
    // Consider paused() to be called at deployment, and the ownership removed.
    // Add a property to check that the contract cannot be unpaused.
    // constructor() {
    //     pause(); //pause the contract //
    //     owner = address(0x0); //revoked ownership //
    // }

    // function echidna_test_no_transfer_at_pause() public view returns (bool) {
    //     return is_paused == true;
    // }
}

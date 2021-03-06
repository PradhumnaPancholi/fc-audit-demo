// SPDX-License-Identifier: GPL-3.0 //
pragma solidity ^0.8.0;

contract Ownable {
    address owner = msg.sender;

    function Owner() public {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(owner == msg.sender);
        _;
    }
}

contract Pausable is Ownable {
    bool is_paused;

    modifier ifNotPaused() {
        require(!is_paused);
        _;
    }

    function pause() public isOwner {
        is_paused = true;
    }

    function resume() public isOwner {
        is_paused = false;
    }
}

contract Token is Pausable {
    mapping(address => uint256) public balances;

    function transfer(address to, uint256 value) public ifNotPaused {
        balances[msg.sender] -= value;
        balances[to] += value;
    }
}

pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

//StudentDiscordID = BobZedF#2556
//Task 2.3.2 Mappings
// I can't remove is Ownable without the contract not working so I've left it

contract YourContract is Ownable {


mapping(address => uint256) public balance;

function deposit(uint256 _uint) public {
    balance[msg.sender] += _uint;
}

function checkBalance() public returns (uint256) {
    return msg.sender.balance;
}

    
}
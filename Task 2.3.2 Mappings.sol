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

//tagged the function with view as requested since function only returns a value and does not modify contract state
//I still however can't read the balance without manually entering msg.sender 
//changed msg.sender.balance to balance[msg.sender]so as to NOT return the balance of msg.sender's wallet

function checkBalance() public view returns (uint256) {
    return balance[msg.sender];
}

    
}

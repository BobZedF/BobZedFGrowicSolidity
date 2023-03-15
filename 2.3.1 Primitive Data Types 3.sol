pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

//StudentDiscordID = BobZedF#2556
//Task 2.3.1 Primitive Data Types
//Part 3 (bytes)
//I can't remove is Ownable without the contract not working so I've left it
//The contract below requires me to input 0x00 or equivalent.  Later I need to be 
//able to change this to a real name.

contract YourContract is Ownable {

    bytes public ThisWeeksWinner;
    
    function setData(bytes memory _winner) public {
        ThisWeeksWinner = _winner;
    }
    
    function getWinner() public view returns (bytes memory) {
        return ThisWeeksWinner;
    }
    

}
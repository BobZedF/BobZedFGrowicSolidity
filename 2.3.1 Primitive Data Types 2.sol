pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

//StudentDiscordID = BobZedF#2556
//Task 2.3.1 Primitive Data Types
//Part 2 (enums, bytes)
// I can't remove is Ownable without the contract not working so I've left

contract YourContract is Ownable {

// example enum

   enum FavouriteColour {blue, red, pink, orange, yellow}

    FavouriteColour public favouriteColour;

	function setFavouriteColour(uint colour) public {
    favouriteColour = FavouriteColour(colour);
    }

//  It works but the value shows rather than the colour  
//  A later step would be to show the actual colour

}
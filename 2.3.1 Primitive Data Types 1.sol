pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; 
// https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract is Ownable {

//Task 2.3.1 Primitive Data Types
//Part 1 (int, uint, bool, address)
//StudentDiscordID = BobZedF#2556
//I wasn't yet able to have result1 and result2 autopopulate in the modal.  
//A bit too much for me right now
//I tried to use ENUM also but I need a break now and may do that in a separate file.


    uint256 uint1 = 7;
    uint256 uint2 = 3;
   
    function add1() public view returns (uint256) {
        uint256 result1 = uint1 + uint2;
        return result1;
    }
    uint256 uint3 = 3;
    uint256 uint4 = 7;

    function add2() public view returns (uint) {
       uint256 result2 = uint3 + uint4;
        return result2;
    }
    error wrongaddress();

    address BobZedF = 0xDb391C0C82E881430b58A7f0a75523154a3904C6;

    function compare1(uint256 result1, uint256 result2) public view returns (bool) {
        if (BobZedF!= msg.sender) {
        revert wrongaddress();
        }
        return result1 == result2;
    }
}
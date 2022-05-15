// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] listOfSenders;
    constructor() {
        console.log("Yo yo, I am a smart shnookie");
    }
    // public enables our functions to become available to be called on the blockchain
     function wave() public {
        totalWaves += 1;
        listOfSenders.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getListOfSenders() public view returns (address[] memory) {
        for (uint i=0; i<listOfSenders.length; i++) {
            console.log("Current list of all senders: ", listOfSenders[i]);
        }
        return listOfSenders;
    }
}
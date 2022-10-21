// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Enums and functions in Solidity 
// (1) Create Enum
// (2) Set and Get values of Enum
// (3) Reset values of Enum


contract Enum {
    
    // Tourist Destination of user
    enum Destination {
        India,    // 0
        France,   // 1
        Spain,    // 2
        Russia,   // 3
        China,    // 4
        Turkey    // 5
    }

    // Default value set to India- the first option
    Destination public destination;

    // return the destination of user
    function getDestination() public view returns (Destination) {
        return destination;
    }

    // update the destinaiton of user
    function setDestination(Destination _destination) public {
        destination = _destination;
    }

    // set destination of user to home- India
    function goHome() public {
        destination = Destination.India;
    }

    // reset the destination of user to default
    function resetDestination() public {
        delete destination;
    }
}
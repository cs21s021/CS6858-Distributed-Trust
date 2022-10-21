// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Mapping in Solidity 
// (1) Create Mapping (setter and getter methods).
// (2) Create Nested Mapping (setter and getter methods).
// (3) Remove elements from Mapping

contract Mapping {

    // Mapping from address of Student to (uint) marks
    mapping(address => uint) public mapMarks;

    // Return values stored in mappings
    function returnMarks(address _addr) public view returns (uint) {
        return mapMarks[_addr];
    }

    // Add element to mappings
    function setMarks(address _addr, uint _marks) public {
        mapMarks[_addr] = _marks;
    }

    // Remove element from mappings
    function removeAddress(address _addr) public {
        delete mapMarks[_addr];
    }
}

contract NestedMapping {

    // Map the address of student with subjects and comments
    mapping(address => mapping(uint => string)) public mapSubjectComments;

    // Given address and subject number
    // Return comment
    function getComments(address _addr1, uint _subject) public view returns (string memory) {
        return mapSubjectComments[_addr1][_subject];
    }
    // Set comment for a subject for an address
    function setComments(address _addr1, uint _subject, string memory _comment ) public {
        mapSubjectComments[_addr1][_subject] = _comment;
    }

    // Remove comments for a subject of an address
    function removeSubject(address _addr1, uint _subject) public {
        delete mapSubjectComments[_addr1][_subject];
    }
}

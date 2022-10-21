// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// Demostration of arrays in Solidity
// Array operations :
// (1) Add an element to array.
// (2) Remove an element from array
// (3) Push to array
// (4) Pop from array
// (5) Get element from array

// Experimenting with fixed-length arrays
contract Arrays {

    // Create a fixed size array
    uint[10] arrFixed = [0,1,2,3,4,5,6,7,8,9];

    // Get full array
    function getArray() public view returns (uint[10] memory) {
        return arrFixed;
    }

    // Return length of array
    function getLength() public view returns (uint) {
        return arrFixed.length;
    }

    // Update element of the fixed array at a particular index
    function updateElementToIndex(uint element,uint index) public {
        arrFixed[index] = element;
    }

    // Reset element at an index in array to 0
    // hint: what does delete keyword do?
    function reset(uint index) public {
        delete arrFixed[index];
    }

}

//Example of stack using array
contract Stacks {

    uint[] stack;

    // Get element from array at index i
    function getElement(uint i) public view returns (uint) {
        return stack[i];
    }

    // Get full Stack
    function getStack() public view returns (uint[] memory) {
        return stack;
    }

    // Push element to stack
    // This will add element i to end of array
    function pushElement(uint i) public {
        stack.push(i);
    }

    // Pop from Stack
    // removes the last item from stack
    function popElement() public {
        stack.pop();
    }

    // Return length of Stack
    function getLength() public view returns (uint) {
        return stack.length;
    }

}
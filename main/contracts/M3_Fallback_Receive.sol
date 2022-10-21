// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// fallback() and receive() in Solidity 
/*
           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()

*/


contract ReceiveEther {
    event Log(string func, address sender, uint value, bytes data);


    // Function to receive Ether. msg.data must be empty
    receive() external payable {
        emit Log("receive", msg.sender,msg.value,"");
    }

    // Fallback function is called when msg.data is not empty
    fallback() external payable {
        emit Log("fallback",msg.sender, msg.value,msg.data);
    }

    // Return the balance
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}


contract SendEther {
    function sendViaCall(address payable _to) public payable {
        // Call returns a boolean value indicating success or failure.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
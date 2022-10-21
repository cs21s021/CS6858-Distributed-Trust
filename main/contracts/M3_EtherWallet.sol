// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "hardhat/console.sol";

// Functions with Ethereum address
// (1) Withdraw amount
// (2) Get Balance 

contract EtherWallet {
    address payable public owner;


    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {}
    
    // Function to withdraw amount
    function withdraw(uint _amount) external returns(string memory){
        
       
        bool success;
        
        // Check the caller is owner
        // Transfer the amount
        if( msg.sender == owner)
        {
            payable(msg.sender).transfer(_amount);
            success = true;
        }
        else{
            success = false;
        }
        
        if(success == false)
        {
            return "Caller is not owner";
        }
       return "Caller is owner"; 
        
    }

    // Function to get the Balance of contract
    function getBalance() external view returns (uint) {

        console.log("Sender address: ",msg.sender);  
        return address(this).balance;
    }
}

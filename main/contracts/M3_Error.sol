// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

/*
* The contract defines 2 errors. 
* Complete the contract by allowing accounts
* deposit funds to this contract.
* Hint: use payable to receive ether. 
*/

//Unauthorized user error
error Unauthorized();

//Insufficient Balance error
error InsufficientBalance(uint256 available, uint256 required);

contract VendingMachine {
    address payable owner = payable(msg.sender);
    mapping(address => uint) balance;

    //Unauthorized Error without parameters 
    function withdraw() public {
        if (msg.sender != owner)
        
            revert Unauthorized();

        owner.transfer(address(this).balance);
    }


    // InsufficientBalance Error with parameters 
    function transfer(address to, uint256 amount) public {
        if (amount > balance[msg.sender])
            // Error call using named parameters. Equivalent to
            // revert InsufficientBalance(balance[msg.sender], amount);
            revert InsufficientBalance({
                available: balance[msg.sender],
                required: amount
            });
        balance[msg.sender] -= amount;
        balance[to] += amount;

    }
}
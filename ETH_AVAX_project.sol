// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
//Requirement-
//write a smart contract that implements the require(), assert() and revert() statements.

//Make a wallet that can store upto 10000 ETX by implementing  the require(), assert() and revert() statements.


contract ETXWallet {
    address public owner;
    uint256 public ETXinWallet;
    //Mapping owner to balance
    mapping(address => uint256) public bal;

    constructor() {
        owner = msg.sender;
        ETXinWallet = 0;
    }
    //Deposit function add ETX into wallet
    function deposit(uint256 AmtOfETX) public {
        // Use require to validate inputs or conditions
        require(AmtOfETX > 0, "Amount of ETX must be greater than zero.");

        // Use revert to handle custom error messages
        if (bal[msg.sender] + AmtOfETX > 10000) {
            revert("You cannot store more than 10000 ETX");
        }

        // Use assert for internal errors that should never occur
        assert(ETXinWallet + AmtOfETX >= ETXinWallet);

        bal[msg.sender] += AmtOfETX;
        ETXinWallet += AmtOfETX;
    }
  
}

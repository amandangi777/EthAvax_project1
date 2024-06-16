# EthAvax_project1
# Functions and Errors 

This Solidity program is a simple "Error handling " program that demonstrates the basic syntax and functionality of error handing in the Solidity programming language. The purpose of this program to demonstrate how error handling is done using require, revert and assert keywords.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions first one demonstrates the use of require keyword, the second one demonstrates the use of the revert keyword and third one demonstrates the use of assert . This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ETHAvax.sol). Copy and paste the following code into the file:

```
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
```
To compile the code, press CRTL+ SHIFT+P  then select Solidity compile contract and the program is compile sucessfully will be shown in console 
## Authors

Aman Dangi


## License

This project is licensed under the MIT License - see the LICENSE.md file for details

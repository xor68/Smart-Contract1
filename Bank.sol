// SPDX-License-Identifier: MIT
        pragma solidity ^0.8.4; 

        contract Bank { 
          mapping(address => uint) balance;
          address owner; 
          uint256 public totBalance;

        struct reFund {
          address myadd;
          uint256 fund;
        }

        struct transferFund {
          address from;
          address to;
          uint256 trfund;
        }

        reFund[] refund;
        transferFund[] transferfund;

          constructor() { 
            owner = msg.sender; 
          // address that deploys contract will be the owner 
            totBalance = 0;
          } 
/**
        function addBalance(uint _toAdd) public returns(uint) {
          require(msg.sender == owner); //only owner can add balance
          balance[msg.sender] += _toAdd; 
          return balance[msg.sender]; 
        } 
**/
        function getBalance() public view returns(uint) {
          return balance[msg.sender]; 
        } 

        function transfer(address recipient, uint amount) public { 
          require(balance[msg.sender]>=amount, "Insufficient Balance"); 
          require(msg.sender != recipient, "You can't send money to yourself!");
          _transfer(msg.sender, recipient, amount); 
          transferfund.push(transferFund(msg.sender,recipient,amount));
        } 

        function _transfer(address from, address to, uint amount) private { 
          balance[from] -= amount; 
          balance[to] += amount; 
        }

        function addFund() public payable returns(uint256) {
        //require(msg.value > 1e18, "Didn't send enough!");

        refund.push(reFund(msg.sender, msg.value));
        balance[msg.sender] += msg.value;
        totBalance += msg.value;
        return balance[msg.sender];  
        }

        function tottreFund() public view returns (uint) {
          return refund.length;
        }

        function tottransferFund() public view returns (uint) {
          return transferfund.length;
        }

        }

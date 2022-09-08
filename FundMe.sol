// SPDX-License-Identifier: MIT

// Get funds from users
// The simplest transaction is transferring ETH from one account to another

    pragma solidity ^0.8.8;

    contract FundMe {

        uint256 public mvalue;
        address public myadd;

      function fund() public payable returns(uint256) {
        //require(msg.value > 1e18, "Didn't send enough!");
        myadd = msg.sender; // address of the sender
        return mvalue = msg.value;  

      }

    }
  

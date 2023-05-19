// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract PayGoods {

// Define the Owner of the smart contract
address public owner;

constructor() {
    owner = msg.sender;
}

// Create Struct and Mapping for request, transaction, and name
struct request {
    address requestor;
    uint256 amount;
    string name;
    string message;
}

mapping(address => request[]) requests; 

// Add a name to wallet address

// Create a Request

// Pay a Request

// Get all requests sent to a User

// Fet all historic transactions user has been apart of
}
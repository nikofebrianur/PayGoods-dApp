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

struct sendReceive {
    string action;
    uint256 amount;
    string message;
    address otherPartyAddress;
    string otherPartyName;
}

struct userName {
    string name;
    bool hasName;
}

mapping(address => request[]) requests; 
mapping(address => sendReceive[]) history;
mapping(address => userName) names;

// Add a name to wallet address
function addName(string memory _name) public {
    userName storage newUserName = names[msg.sender];
    newUserName.name = _name;
    newUserName.hasName = true;
}
// Create a Request

// Pay a Request

// Get all requests sent to a User

// Fet all historic transactions user has been apart of
}
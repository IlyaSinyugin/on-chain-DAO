// SPDX-License-Identifier: might
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    uint256 private value; 

    // When stored value changes, then emitted
    event ValueChanged(uint256 newValue);

    // New value is stored in the contract
    function store(uint256 newValue) public onlyOwner {
        value = newValue;
        emit ValueChanged(newValue);
    }

    // Reads the last stored value 
    function retrieve() public view returns (uint256) {
        return value;
    }
}
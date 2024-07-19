// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 private storedNumber;

    function setNumber(uint256 newNumber) public {
        storedNumber = newNumber;
    }

    function getStoredNumber() public view returns (uint256) {
        return storedNumber;
    }
}

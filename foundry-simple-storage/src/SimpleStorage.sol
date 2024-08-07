// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/**
 * @title SimpleStorage
 * @author monmon
 * @dev A simple smart contract for storing and retrieving a uint256 value.
 */
contract SimpleStorage {
    uint256 private storedNumber;

    /**
     * @notice Sets the stored number to a new value.
     * @param newNumber The new value to be stored.
     */
    function setNumber(uint256 newNumber) public {
        storedNumber = newNumber;
    }

    /**
     * @notice Retrieves the stored number.
     * @return The stored uint256 value.
     */
    function getStoredNumber() public view returns (uint256) {
        return storedNumber;
    }
}

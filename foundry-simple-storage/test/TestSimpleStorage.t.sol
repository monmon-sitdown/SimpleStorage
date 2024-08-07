// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";

/**
 * @title SimpleStorageTest
 * @author monmon
 * @dev Test suite for the SimpleStorage contract.
 */
contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    /// @notice Sets up the test environment by deploying a new SimpleStorage contract.
    function setUp() public {
        DeploySimpleStorage deployer = new DeploySimpleStorage();
        simpleStorage = deployer.run();
    }

    /// Tests the setNumber and getStoredNumber functions.
    function testSetAndGet() public {
        uint256 expectedValue = 10;
        simpleStorage.setNumber(expectedValue);

        assert(expectedValue == simpleStorage.getStoredNumber());
    }

    /// Tests updating the stored number.
    function testUpdateNumber() public {
        uint256 initValue = 5;
        uint256 newValue = 100;

        simpleStorage.setNumber(initValue);
        simpleStorage.setNumber(newValue);
        assert(newValue == simpleStorage.getStoredNumber());
    }
}

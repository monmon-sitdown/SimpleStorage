// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        DeploySimpleStorage deployer = new DeploySimpleStorage();
        simpleStorage = deployer.run();
    }

    function testSetAndGet() public {
        uint256 expectedValue = 10;
        simpleStorage.setNumber(expectedValue);

        assert(expectedValue == simpleStorage.getStoredNumber());
    }

    function testUpdateNumber() public {
        uint256 initValue = 5;
        uint256 newValue = 100;

        simpleStorage.setNumber(initValue);
        simpleStorage.setNumber(newValue);
        assert(newValue == simpleStorage.getStoredNumber());
    }
}

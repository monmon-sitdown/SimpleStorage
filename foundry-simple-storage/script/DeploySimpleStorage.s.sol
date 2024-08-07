// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

/**
 * @title DeploySimpleStorage
 * @author monmon
 * @dev Script for deploying the SimpleStorage contract
 */
contract DeploySimpleStorage is Script {
    function setUp() public {}

    /**
     * @notice Deploys the SimpleStorage contract
     * @return The address of the deployed SimpleStorage contract.
     */
    function run() public returns (SimpleStorage) {
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();
        return simpleStorage;
    }
}

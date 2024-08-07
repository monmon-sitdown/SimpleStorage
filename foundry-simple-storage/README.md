# SimpleStorage Project

## Project Overview

This project is a simple smart contract written in Solidity. The SimpleStorage contract allows users to set and retrieve a stored number. The project uses the Foundry toolchain for development, deployment, and testing.

## Project Structure

```bash
/src
  └── SimpleStorage.sol          # Solidity smart contract source code
/script
  └── DeploySimpleStorage.s.sol  # Deployment script
/test
  └── TestSimpleStorage.t.sol    # Testing script
```

### /src/SimpleStorage.sol

This is the main file for the smart contract, which contains the implementation of the SimpleStorage contract. The contract allows users to set and retrieve a stored number.

```solidity
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
```

### /script/DeploySimpleStorage.s.sol

This is the script used for deploying the SimpleStorage contract. It utilizes Foundry's forge-std library and the Script class for deployment.

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {Script, console} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function setUp() public {}

    function run() public returns (SimpleStorage) {
        vm.startBroadcast();

        SimpleStorage simpleStorage = new SimpleStorage();

        vm.stopBroadcast();
        return simpleStorage;
    }
}
```

### /test/TestSimpleStorage.t.sol

This is the testing script for the SimpleStorage contract. It includes basic functionality tests to ensure that the setNumber and getStoredNumber methods work correctly.

```solidity
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
```

## How to Deploy to a Test Network

1. Install Foundry: Make sure you have Foundry installed. You can follow the Foundry documentation for installation instructions.

2. Compile the Contract:

```bash
forge build
```

3. Configure Network: Edit the foundry.toml configuration file to include network settings for a test network (e.g., Sepolia). Add your Infura or Alchemy API key and network URL.

4. Deploy the Contract:

```bash
forge script script/DeploySimpleStorage.s.sol --network <network-name>
```

Replace <network-name> with the name of your configured network (e.g., sepolia).

5. Verify Deployment: After deployment, verify the contract address and interact with it using a tool like Etherscan or a frontend interface.

## Running Tests

To run the tests, use the following command:

```bash
forge test
```

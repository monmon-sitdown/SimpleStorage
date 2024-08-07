# SimpleStorage Project

## Project Overview

The SimpleStorage Project is a straightforward smart contract project written in Solidity. It includes deployment scripts, test scripts, and a React application to interact with the smart contract from the front end.

### Directory Structure

```
simple/
├── foundry-simple-storage/
│   ├── src/
│   │   └── SimpleStorage.sol
│   ├── script/
│   │   └── DeploySimpleStorage.s.sol
│   ├── test/
│   │   └── TestSimpleStorage.t.sol
├── simple-storage-frontend/
│   ├── src/
│   │   ├── App.js
│   │   └── SimpleStorage.js
│   ├── public/
│   ├── package.json
│   ├── README.md
```

### Smart Contract Files

#### `SimpleStorage.sol`

- The `SimpleStorage` contract is used to store and retrieve a `uint256` value.
- The `setNumber` function allows users to set the stored value.
- The `getStoredNumber` function allows users to retrieve the current stored value.

#### `DeploySimpleStorage.s.sol`

- The `DeploySimpleStorage` script is used to deploy the `SimpleStorage` contact

#### `TestSimpleStorage.t.sol`

- The `SimpleStorageTest` contract is used to test the `SimpleStorage` contract functionality.

### Front End Files

#### `App.js`

- The `App` component is the main React component that renders the SimpleStorage component.

#### `SimpleStorage.js`

- The `SimpleStorage` component is used to interact with the SimpleStorage smart contract.
- The `handleGetValue` function fetches the current stored value and displays it.
- The `handleSetValue` function allows the user to set a new stored value.

### Deployment and Running

A live demo of this project can be found at the following link:
https://simplestoragefrontend.netlify.app/
The contract is deployed on the Sepolia Testnet.

**Important:** The app will request permission to connect your wallet. To set or get values, you'll need a connected wallet with some ETH on the Sepolia Testnet.

**Note:** There may be a slight delay after clicking the "Set Value" button before the current value updates to reflect your change.

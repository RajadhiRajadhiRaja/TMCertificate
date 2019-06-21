# Certificate Issuance on Eleven01 Blockchain Platform

The Objective of this project is to issue the Certificates on Blockchain by using Eleven01 Blockchain Platform.

## Functionality:
1. Issue Certificate
2. Verify Issued Certificate

Developers can use any tech stack of their choice (ex: React, Angular, etc), however, we have made this DApp with a simple HTML, JavaScript & CSS.

## Techstack
1. HTML & CSS
2. JavaScript
3. Web3.js ```npm install web3@1.0.0-beta.41```
4. Solidity ```npm install solidity@0.4.25```
5. Truffle ```npm install -g truffle@4.1.15```
6. node.js (v8.15.0 or above)

## Pre-requisites:
1. Remix IDE
2. Code Editor
3. MetaMask pointed to Eleven01 RPC end point (http://104.40.3.236:8083/api/node/rpc)

## Process
1. Clone the Repo (https://github.com/eleven01team/e01_reference_dapps.git)
2. run ```npm init``` to create package.json
3. Install npm packages ```npm install```
4. Install lite-server package ```npm lite-server```
5. You can deploy the contract to Eleven01 Blockchain network in many ways, however, in this project we are going to deploy by Remix IDE. Copy the contract code & open https://remix.ethereum.org and paste the contract, select Environment as Web3Provier in Run tab. Enter Eleven01 RPC endpoint in Web3 Provider Endpoint Popup
6. Select the compiler version mentioned in contract code (1st line) and click on Deploy in Run tab
7. Copy the contract address and replace in Index.html file
8. Copy the contract ABI and replace in Index.html file & save the file
9. We are all set to go!
10.   Open terminal & type the command ```“npm run dev”``` to start the development server

### Screenshots

#### Issue Certificate
![Updated UI](https://user-images.githubusercontent.com/46481618/58169654-e5056300-7cae-11e9-80b3-bd01bb70dd48.PNG)

#### Verify Certificate
![Updated UI2](https://user-images.githubusercontent.com/46481618/58169655-e5056300-7cae-11e9-805d-50c839689d24.PNG)

var HDWalletProvider = require("truffle-hdwallet-provider");
var Web3 = require("web3");



var RPC_ENDPOINT = "http://13.83.91.1:8083/api/node/rpc";
var MNEMONIC = "fiscal blood lecture entry such choice transfer mother venue circle oak borrow";

module.exports = {
networks: {
development: {
host: "localhost",
port: 8545,
network_id: "*"
},
eleven01: {
provider: function() {
return new HDWalletProvider(MNEMONIC, RPC_ENDPOINT)
},
solc: {
    optimizer: { // Turning on compiler optimization that removes some local variables during compilation
      enabled: true,
      runs: 200
    },
network_id: "*",
gasPrice: 0,
gas: 4500000,
}
}
}
}
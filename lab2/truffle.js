var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "build twin torch clinic scale govern exit squeeze box salad enlist awake";

module.exports = {
     // See <http://truffleframework.com/docs/advanced/configuration>
     // to customize your Truffle configuration!
     networks: {
          ganache: {
               host: "localhost",
               port: 8545,
               network_id: "*" // Match any network id
          }
     },
     compilers: {
          solc: {
               version: "0.4.23",  
          }
     }
};

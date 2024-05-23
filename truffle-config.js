// module.exports = {
//   networks: {
//     development: {
//       host: "127.0.0.1",
//       port: 7545,
//       network_id: "*", // Match any network id
//     },
//     advanced: {
//       websockets: true, // Enable EventEmitter interface for web3 (default: false)
//     },
//   },
//   contracts_build_directory: "./src/contracts/",
//   compilers: {
//     solc: {
//       optimizer: {
//         enabled: true,
//         runs: 200,
//       },
//       version: "^0.6.0"
//     },
//   },
// };
const HDWalletProvider = require("@truffle/hdwallet-provider");

const infuraProjectId = "ebd0643e1224432a8b5fe68c5c81b467";
const mnemonic = "cost run awake category silent double arrange idle milk sketch need chest";

module.exports = {
  networks: {
    development: {
      // ...
    },
    advanced: {
      websockets: true, // Enable EventEmitter interface for web3 (default: false)
    },
    sepolia: {
      provider: () => new HDWalletProvider(mnemonic, `https://sepolia.infura.io/v3/ebd0643e1224432a8b5fe68c5c81b467`),
      network_id: 11155111,
      gas: 4000000
    }
  },
  contracts_build_directory: "./src/contracts/",
  compilers: {
    solc: {
      optimizer: {
        enabled: true,
        runs: 200,
      },
      version: "^0.6.0"
    },
  },
};
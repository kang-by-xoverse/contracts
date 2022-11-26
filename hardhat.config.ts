import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "dotenv/config";

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    goerli: {
      url: "https://goerli.infura.io/v3/63750a373503450dbe2177ee16608f13",
      accounts: [process.env.PRIVATE_KEY || ""],
    },
  },
};

export default config;

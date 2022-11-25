import { ethers } from "hardhat";

async function main() {
  const Contract = await ethers.getContractFactory("MetaFactory");
  const contract = await Contract.deploy();
  await contract.deployed();
  console.log(`deployed to ${contract.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

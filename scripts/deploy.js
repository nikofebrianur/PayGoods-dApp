const hre = require("hardhat");

async function main() {
  const PayGoods = await hre.ethers.getContractFactory("PayGoods");
  const payGoods = await PayGoods.deploy();

  await payGoods.deployed();

  console.log("PayGoods deployed to:", payGoods.address);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

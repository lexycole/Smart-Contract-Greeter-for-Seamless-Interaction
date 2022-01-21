const hre = require("hardhat");

async function main() {

  // We get the contract to deploy
  const Greeter = await hre.ethers.getContractFactory("Greeter");
  const greeter = await Greeter.deploy("Hello, React London!");

  const Token = await hre.ethers.getContractFactory("Token");
  const token = await Token.deploy("Lazy Cats Token", "LCT");

  await greeter.deployed();
  await token.deployed();

  console.log("Greeter deployed to:", greeter.address);
  console.log("Token deployed to:", token.address);
}


main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });

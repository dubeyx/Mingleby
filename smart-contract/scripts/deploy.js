const { ethers } = require('hardhat')

const main = async () => {
  const MinglebyFactory = await ethers.getContractFactory('minglebyERC721')
  const MinglebyContract = await MinglebyFactory.deploy()

  console.log('Mingleby CONTRACT ADDRESS:', MinglebyContract.address)
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.log('Error in deploying Contract >> ', error)
    process.exit(1)
  })
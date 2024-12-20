const SimpleTransfer = artifacts.require("SimpleTransfer");

module.exports = function (deployer) {
  deployer.deploy(SimpleTransfer);
};

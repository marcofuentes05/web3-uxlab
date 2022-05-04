const ConvertLib = artifacts.require("ConvertLib");
const Storage = artifacts.require("Storage");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, Storage);
  deployer.deploy(Storage);
};

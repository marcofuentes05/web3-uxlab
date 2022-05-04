const ConvertLib = artifacts.require("ConvertLib");
const UXLAB = artifacts.require("UXLAB");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, UXLAB);
  deployer.deploy(UXLAB);
};

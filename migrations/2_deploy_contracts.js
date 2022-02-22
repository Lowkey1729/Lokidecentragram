const lokiDecentraliseGram = artifacts.require("LokiDecentraliseGram");

module.exports = function (deployer) {
    deployer.deploy(lokiDecentraliseGram);
};
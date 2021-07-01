var BnbPricePredictionBet = artifacts.require("BnbPricePredictionBet");
module.exports = function(deployer) {
    deployer.deploy(
      BnbPricePredictionBet
    );
    // Additional contracts can be deployed here
};
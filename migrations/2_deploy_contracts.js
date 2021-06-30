var BnbPricePredictionBet = artifacts.require("BnbPricePredictionBet");
module.exports = function(deployer) {
    deployer.deploy(
      BnbPricePredictionBet, 
      '0x14A59Fe1a2aAE8A4D119E4080F11Be1Bf1B1D786',
      60,
      15,
      100000000,
      1
    );
    // Additional contracts can be deployed here
};
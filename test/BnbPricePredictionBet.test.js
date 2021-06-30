const BnbPricePredictionBet = artifacts.require('BnbPricePredictionBet');
const { expect } = require('chai');
const {
  BN,           // Big Number support
  constants,    // Common constants, like the zero address and largest integers
  expectEvent,  // Assertions for emitted events
  expectRevert, // Assertions for transactions that should fail
} = require('@openzeppelin/test-helpers');
const timeTraveler = require('ganache-time-traveler');

const weiAmount = amount =>
  new BN(amount).mul(new BN(10).pow(new BN(8)));

contract('::BnbPricePredictionBet', async accounts => {
  let predictionBet;
  const [alice, bob, carl] = accounts;

  beforeEach(async () => {
    predictionBet = await BnbPricePredictionBet.new(bob, new BN(60), new BN(15), weiAmount(1), new BN(2));
  });

  describe('Round', async () => {
    it('genesisStartRound', async () => {
      expectEvent(await predictionBet.genesisStartRound({from: bob}), 'StartRound');
      
      timeTraveler.advanceTime(15);
      // expectEvent(await predictionBet.genesisLockRound({from: bob}), 'LockRound');
    });
  });
});


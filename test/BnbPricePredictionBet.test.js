const BnbPricePredictionBet = artifacts.require('BnbPricePredictionBet');
const BnbTest = artifacts.require('BnbTest');
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

contract('::BnbTest', async accounts => {
  let predictionBet;
  const [alice, bob, carl] = accounts;

  beforeEach(async () => {
    predictionBet = await BnbTest.new();
  });

  describe('Round', async () => {
    it('genesisStartRound', async () => {
      // await predictionBet.genesisStartRound({from: bob});
      expectEvent(await predictionBet.genesisStartRound({from: bob}), 'StartRound');
      
      timeTraveler.advanceTime(12);
      expectEvent(await predictionBet.betDown({from: bob, value: 10000000}), 'BetDown', {sender: bob, currentEpoch: new BN(1), amount: new BN(10000000)});     
      timeTraveler.advanceTime(65);
      expectEvent(await predictionBet.betUp({from: bob, value: 10000000}), 'BetUp', {sender: bob, currentEpoch: new BN(1), amount: new BN(10000000)});
    });
  });
});


pragma solidity ^0.8.0;


// SPDX-License-Identifier: MIT
// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.
/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is no longer needed starting with Solidity 0.8. The compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor () {
        address msgSender = _msgSender();
        _owner = msgSender;
        emit OwnershipTransferred(address(0), msgSender);
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

interface AggregatorV3Interface {

  function decimals()
    external
    view
    returns (
      uint8
    );

  function description()
    external
    view
    returns (
      string memory
    );

  function version()
    external
    view
    returns (
      uint256
    );

  // getRoundData and latestRoundData should both raise "No data present"
  // if they do not have data to report, instead of returning unset values
  // which could be misinterpreted as actual reported values.
  function getRoundData(
    uint80 _roundId
  )
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );

}

contract BnbPricePredictionBet is Ownable {
    using SafeMath for uint256;
    enum Position {Up, Down}
    struct Round {
        uint256 epoch;
        uint256 startTime;
        uint256 lockTime;
        uint256 endTime;
        int256 startPrice;
        int256 closePrice;
        uint256 totalAmount;
        uint256 upAmount;
        uint256 downAmount;
        uint256 rewardBaseCalAmount;
        bool status;
        bool oracleCalled;
    }
    struct BetInfo {
        uint256 upAmount;
        uint256 downAmount;
        bool claimed; // default false
    }

    mapping(uint256 => Round) public rounds;
    mapping(uint256 => mapping(address => BetInfo)) public ledger;
    mapping(address => uint256[]) public userRounds;
    uint256 public currentEpoch;
    uint256 public roundTime = 60;
    uint256 public betTime = 15;
    uint256 public bufferTime = 2;
    uint256 public constant TOTAL_RATE = 100; // 100%
    uint256 public rewardRate = 96; // 96%
    uint256 public treasuryRate = 4; // 4%
    uint256 public minBetAmount = 0;

    address public adminAddress;
    uint256 public treasuryAmount;
    AggregatorV3Interface internal oracle;
    uint256 public oracleLatestRoundId;    

    bool public genesisStartOnce = false;
    bool public genesisLockOnce = false;

    event StartRound(uint256 indexed epoch, uint256 startTime, int256 price);
    event EndRound(uint256 indexed epoch, uint256 blockTime, int256 price);

    event BetUp(address indexed sender, uint256 indexed currentEpoch, uint256 amount);
    event BetDown(address indexed sender, uint256 indexed currentEpoch, uint256 amount);
    event Claim(address indexed sender, uint256 indexed currentEpoch, uint256 amount);
    event ClaimTreasury(uint256 amount);
    event RewardsCalculated(
        uint256 indexed epoch,
        uint256 rewardBaseCalAmount,
        uint256 rewardAmount,
        uint256 treasuryAmount
    );

    constructor() {
        oracle = AggregatorV3Interface(0x2514895c72f50D8bd4B4F9b1110F0D6bD2c97526);
        adminAddress = _msgSender();       
    }

    /**
     * @dev Start genesis round
     */
    function genesisStartRound() external {
        require(!genesisStartOnce, "Can only run genesisStartRound once");
        currentEpoch = currentEpoch + 1;
        _startRound(currentEpoch);
        genesisStartOnce = true;
    }

    /**
     * @dev Start round     
     */
    function _safeStartRound() internal {
        require(genesisStartOnce, "Can only run after genesisStartRound is triggered");
        require(block.timestamp >= rounds[currentEpoch].endTime, "Can only start new round after round n-1 endTime");
        currentEpoch = currentEpoch + 1;
        _startRound(currentEpoch);
    }

    function _startRound(uint256 epoch) internal {
        Round storage round = rounds[epoch];
        round.startTime = block.timestamp;
        round.lockTime = block.timestamp.add(betTime);
        round.endTime = block.timestamp.add(roundTime + betTime);
        round.epoch = epoch;
        round.totalAmount = 0;
        int256 currentPrice = _getPriceFromOracle();
        // int256 currentPrice = 12345;
        round.startPrice = currentPrice;
        round.status = true;

        emit StartRound(epoch, block.timestamp, round.startPrice);
    }

    function getStatus() external view returns (uint256, uint256, uint256, int256, int256, bool, uint256) {
        require(genesisStartOnce, "Can only run after genesisStartRound is triggered");
        ( , int256 price, , , ) = oracle.latestRoundData();   
        bool roundStatus = false;
        if(rounds[currentEpoch].lockTime < block.timestamp) roundStatus = true;  
        return (
                currentEpoch,
                rounds[currentEpoch].upAmount,
                rounds[currentEpoch].downAmount,
                price,
                rounds[currentEpoch].startPrice,
                roundStatus,
                rounds[currentEpoch].endTime
            );
    }

    /**
     * @dev End round
     */
    function _safeEndRound() internal {
        require(block.timestamp >= rounds[currentEpoch].endTime, "Can only end round after endTime");
        int256 currentPrice = _getPriceFromOracle();
        Round storage round = rounds[currentEpoch];
        round.closePrice = currentPrice;
        round.status = false;
        round.oracleCalled = true;

        emit EndRound(currentEpoch, block.timestamp, round.closePrice);

        _safeStartRound();
    }   

    /**
     * @dev Bet bear position
     */
    function betDown() external payable {
        if(block.timestamp >= rounds[currentEpoch].endTime) {
            uint tempCurrentEpoch = currentEpoch;
            _safeEndRound();
            claim(tempCurrentEpoch);
        }
        require(_bettable(currentEpoch), "Round not bettable");
        require(msg.value >= minBetAmount, "Bet amount must be greater than minBetAmount");
        // require(ledger[currentEpoch][msg.sender].amount == 0, "Can only bet once per round");

        // Update round data
        uint256 amount = msg.value;
        Round storage round = rounds[currentEpoch];
        round.totalAmount = round.totalAmount.add(amount);
        round.downAmount = round.downAmount.add(amount);

        // Update user data
        BetInfo storage betInfo = ledger[currentEpoch][msg.sender];
        // betInfo.position = Position.Down;
        betInfo.downAmount = betInfo.downAmount.div(amount);
        userRounds[msg.sender].push(currentEpoch);

        emit BetDown(msg.sender, currentEpoch, amount);
    }

    /**
     * @dev Bet bull position
     */
    function betUp() external payable {
        if(block.timestamp >= rounds[currentEpoch].endTime) {
            uint tempCurrentEpoch = currentEpoch;
            _safeEndRound();
            claim(tempCurrentEpoch);
        }
        require(_bettable(currentEpoch), "Round not bettable");
        require(msg.value >= minBetAmount, "Bet amount must be greater than minBetAmount");
        // require(ledger[currentEpoch][msg.sender].amount == 0, "Can only bet once per round");

        // Update round data
        uint256 amount = msg.value;
        Round storage round = rounds[currentEpoch];
        round.totalAmount = round.totalAmount.add(amount);
        round.upAmount = round.upAmount.add(amount);

        // Update user data
        BetInfo storage betInfo = ledger[currentEpoch][msg.sender];
        // betInfo.position = Position.Up;
        betInfo.upAmount = betInfo.upAmount.add(amount);
        userRounds[msg.sender].push(currentEpoch);

        emit BetUp(msg.sender, currentEpoch, amount);
    }

    function stopRound() external {
        for(uint i = currentEpoch; i > 0; i--){
            delete rounds[i];
        }
        currentEpoch = 0;
        genesisStartOnce = false;
    }

    /**
     * @dev Claim reward
     */
    function claim(uint256 epoch) internal {
        require(rounds[epoch].startTime != 0, "Round has not started");
        require(block.timestamp > rounds[epoch].endTime, "Round has not ended");
        require(!ledger[epoch][msg.sender].claimed, "Rewards claimed");

        uint256 reward;        
        // Round valid, claim rewards
        if (rounds[epoch].oracleCalled) {
            require(claimable(epoch, msg.sender), "Not eligible for claim");
            Round memory round = rounds[epoch];
            if(rounds[epoch].closePrice > rounds[epoch].startPrice) {
                require(ledger[epoch][msg.sender].upAmount > 0, "It is 0 bet");
                uint256 rewardAmount = round.totalAmount.mul(rewardRate).div(TOTAL_RATE);
                reward = ledger[epoch][msg.sender].upAmount.mul(rewardAmount).div(round.rewardBaseCalAmount);
            }
            else if (rounds[epoch].closePrice < rounds[epoch].startPrice) {
                require(ledger[epoch][msg.sender].downAmount > 0, "It is 0 bet");
                uint256 rewardAmount = round.totalAmount.mul(rewardRate).div(TOTAL_RATE);
                reward = ledger[epoch][msg.sender].downAmount.mul(rewardAmount).div(round.rewardBaseCalAmount);
            }
            else {
                require(ledger[epoch][msg.sender].downAmount.add(ledger[epoch][msg.sender].upAmount) > 0, "It is 0 bet");
                uint256 rewardAmount = round.totalAmount.mul(rewardRate).div(TOTAL_RATE);
                uint256 totalBet = ledger[epoch][msg.sender].downAmount.add(ledger[epoch][msg.sender].upAmount);
                reward = totalBet.mul(rewardAmount).div(round.rewardBaseCalAmount);
            }          
        }
        // Round invalid, refund bet amount
        else {
            require(refundable(epoch, msg.sender), "Not eligible for refund");
            uint256 totalBet = ledger[epoch][msg.sender].downAmount.add(ledger[epoch][msg.sender].upAmount);
            reward = totalBet;
        }

        BetInfo storage betInfo = ledger[epoch][msg.sender];
        betInfo.claimed = true;
        _safeTransferBNB(address(msg.sender), reward);

        emit Claim(msg.sender, epoch, reward);
    }

    /**
     * @dev Claim all rewards in treasury
     * callable by admin
     */
    function claimTreasury() internal {
        uint256 currentTreasuryAmount = treasuryAmount;
        treasuryAmount = 0;
        _safeTransferBNB(adminAddress, currentTreasuryAmount);

        // emit ClaimTreasury(currentTreasuryAmount);
    }
   
    /**
     * @dev Get the claimable stats of specific epoch and user account
     */
    function claimable(uint256 epoch, address user) public view returns (bool) {
        BetInfo memory betInfo = ledger[epoch][user];
        Round memory round = rounds[epoch];      
        return round.oracleCalled;
    }

    /**
     * @dev Get the refundable stats of specific epoch and user account
     */
    function refundable(uint256 epoch, address user) public view returns (bool) {
        BetInfo memory betInfo = ledger[epoch][user];
        Round memory round = rounds[epoch];
        return !round.oracleCalled && block.timestamp > round.endTime.add(bufferTime);
    }   

    /**
     * @dev Calculate rewards for round
     */
    function _calculateRewards(uint256 epoch) internal {
        require(rewardRate.add(treasuryRate) == TOTAL_RATE, "rewardRate and treasuryRate must add up to TOTAL_RATE");
        require(rounds[epoch].rewardBaseCalAmount == 0, "Rewards calculated");
        Round storage round = rounds[epoch];
        uint256 rewardBaseCalAmount;
        uint256 rewardAmount;
        uint256 treasuryAmt;

        rewardAmount = round.totalAmount.mul(rewardRate).div(TOTAL_RATE);
        treasuryAmt = round.totalAmount.mul(treasuryRate).div(TOTAL_RATE);
        // Up wins
        if (round.closePrice > round.startPrice) {
            rewardBaseCalAmount = round.upAmount;
        }
        // Down wins
        else if (round.closePrice < round.startPrice) {
            rewardBaseCalAmount = round.downAmount;
        }
        // House wins
        else {
            rewardBaseCalAmount = round.totalAmount;
        }
        round.rewardBaseCalAmount = rewardBaseCalAmount;

        // Add to treasury
        treasuryAmount = treasuryAmount.add(treasuryAmt);

        emit RewardsCalculated(epoch, rewardBaseCalAmount, round.totalAmount.mul(rewardRate).div(TOTAL_RATE), treasuryAmt);
    }

    /**
     * @dev Get latest recorded price from oracle
     * If it falls below allowed buffer or has not updated, it would be invalid
     */
    function _getPriceFromOracle() internal returns (int256) {
        (uint80 roundId, int256 price, , uint256 timestamp, ) = oracle.latestRoundData();
        oracleLatestRoundId = uint256(roundId);
        return price;
    }

    function _safeTransferBNB(address to, uint256 value) internal {
        (bool success, ) = to.call{gas: 23000, value: value}("");
        require(success, "TransferHelper: BNB_TRANSFER_FAILED");
    }
   
    /**
     * @dev Determine if a round is valid for receiving bets
     * Round must have started and locked
     * Current time must be within startTime and endTime
     */
    function _bettable(uint256 epoch) internal view returns (bool) {
        return
            rounds[epoch].startTime != 0 &&
            rounds[epoch].lockTime != 0 &&
            block.timestamp > rounds[epoch].startTime &&
            block.timestamp < rounds[epoch].lockTime;
    }
}
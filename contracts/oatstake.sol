

// SPDX-License-Identifier: MIT
pragma solidity 0.7.5;


interface IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    
    function approve(address spender, uint256 amount) external returns (bool);


    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);


    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}


library SafeMath {

    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }

    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b > a) return (false, 0);
        return (true, a - b);
    }

    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {

        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }


    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }


    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }


    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        return a - b;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) return 0;
        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
        return c;
    }


    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        return a / b;
    }


    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: modulo by zero");
        return a % b;
    }


    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        return a - b;
    }


    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a / b;
    }


    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        return a % b;
    }
}


library Address {

    function isContract(address account) internal view returns (bool) {
 

        uint256 size;
        // solhint-disable-next-line no-inline-assembly
        assembly { size := extcodesize(account) }
        return size > 0;
    }


    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }


    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }


    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }


    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }


    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: value }(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }


    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    function functionStaticCall(address target, bytes memory data, string memory errorMessage) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.staticcall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }


    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }


    function functionDelegateCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return _verifyCallResult(success, returndata, errorMessage);
    }

    function _verifyCallResult(bool success, bytes memory returndata, string memory errorMessage) private pure returns(bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}


library SafeERC20 {
    using SafeMath for uint256;
    using Address for address;

    function safeTransfer(IERC20 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
    }

    function safeApprove(IERC20 token, address spender, uint256 value) internal {

        require((value == 0) || (token.allowance(address(this), spender) == 0),
            "SafeERC20: approve from non-zero to non-zero allowance"
        );
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
    }

    function safeIncreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).add(value);
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }

    function safeDecreaseAllowance(IERC20 token, address spender, uint256 value) internal {
        uint256 newAllowance = token.allowance(address(this), spender).sub(value, "SafeERC20: decreased allowance below zero");
        _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }


    function _callOptionalReturn(IERC20 token, bytes memory data) private {
   

        bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
        if (returndata.length > 0) { // Return data is optional
            // solhint-disable-next-line max-line-length
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }
}


abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}


abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor ()  {
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



/// @title StakeChamps
/// @notice The stake Champs contract for staking and unstaking Champs
contract StakeChamps is Ownable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    // Champs Contract Address
    // solhint-disable-next-line var-name-mixedcase
    IERC20 public ChampsContract;

    // List of Stakers, helpful when fetching stakers report
    address[] public stakers;

    // APY
    uint256 public constant APY = 250;

    struct Staker {
        bool isPresent;
        uint256 stakedAtTimestamp;
        uint256 unstakedAtTimestamp;
        uint256 rewardRedeemedAt;
        uint256 reward;
        uint256 claimedRewards;
        uint256 unstakeAmount;
        uint256 amount;
    }

    uint256 public totalChampsStaked;
    mapping(address => Staker) public stakerInfo;

    event Stake(address indexed staker, uint256 amount, uint256 stakedAtTimestamp);
    event Unstake(address indexed staker, uint256 amount, uint256 unstakedAtTimestamp);
    event Withdraw(address indexed staker, uint256 amount, uint256 withdrawnAt);
    event ClaimRewards(address indexed staker, uint256 amount, uint256 redeemedAt);

    constructor(IERC20 champsContractAddress) {
        require(address(champsContractAddress) != address(0), "Cannot be address zero");
        ChampsContract = champsContractAddress;
    }

    receive() external payable {}

    fallback() external payable {}


    function claimRewards() external {
        Staker memory _staker = stakerInfo[msg.sender];
        require(_staker.isPresent, "No rewards: not a staker");

        uint256 rewardsEarned = 0;
        if ((_staker.unstakeAmount > 0) && (_staker.rewardRedeemedAt == 0)) {
            rewardsEarned = _staker.reward.add(calculateRewards(_staker.unstakedAtTimestamp, _staker.amount));
        } else if (_staker.rewardRedeemedAt > 0) {
            rewardsEarned = _staker.reward.add(calculateRewards(_staker.rewardRedeemedAt, _staker.amount));
        } else {
            rewardsEarned = _staker.reward.add(calculateRewards(_staker.stakedAtTimestamp, _staker.amount));
        }

        _staker.rewardRedeemedAt = block.timestamp;

        require(
            ChampsContract.balanceOf(address(this)) >= rewardsEarned,
            "claimRewards: Insufficient contract balance"
        );

        ChampsContract.safeTransfer(msg.sender, rewardsEarned);

        _staker.reward = 0;
        _staker.claimedRewards = _staker.claimedRewards.add(rewardsEarned);
        stakerInfo[msg.sender] = _staker; // Write Staker info to contract storage

        emit ClaimRewards(msg.sender, rewardsEarned, block.timestamp); //solhint-disable-line not-rely-on-time
    }


    function stake(uint256 amount) external {
        require(amount > 0, "Stake amount must be > 0");

        uint256 stakerChampsBalance = ChampsContract.balanceOf(msg.sender);
        require(stakerChampsBalance >= amount, "stake: Insufficient user balance");

        Staker memory _staker = stakerInfo[msg.sender];
        if (!_staker.isPresent) {
            _staker.isPresent = true;
            stakers.push(msg.sender);
            //solhint-disable-next-line not-rely-on-time
            _staker.stakedAtTimestamp = block.timestamp;
        }
  
        uint256 previousStake = _staker.amount;
        if (previousStake > 0) {
            // Reward for previousStake amount
            _staker.reward = calculateRewards(_staker.stakedAtTimestamp, previousStake);
            //solhint-disable-next-line not-rely-on-time
            _staker.stakedAtTimestamp = block.timestamp;
        }

        ChampsContract.safeTransferFrom(msg.sender, address(this), amount);

        totalChampsStaked = totalChampsStaked.add(amount);

        // Updates Total Stake amount
        _staker.amount = _staker.amount.add(amount);
        stakerInfo[msg.sender] = _staker; // Write Staker info to contract storage

        emit Stake(msg.sender, amount, _staker.stakedAtTimestamp);
    }

    function unstake(uint256 amount) external {
        require(amount > 0, "Unstake amount must be > 0");

        Staker memory _staker = stakerInfo[msg.sender];
        require(_staker.amount > 0, "No Stakes");
        require(amount <= _staker.amount, "Unstake amt > staked amt");

        _staker.unstakedAtTimestamp = block.timestamp; //solhint-disable-line not-rely-on-time

        _staker.reward = calculateRewards(_staker.unstakedAtTimestamp, (_staker.amount.sub(amount)));
        _staker.unstakeAmount = _staker.unstakeAmount.add(amount);
        _staker.amount = _staker.amount.sub(amount);

        totalChampsStaked = totalChampsStaked.sub(amount);

        stakerInfo[msg.sender] = _staker; // Write Staker info to contract storage

        emit Unstake(msg.sender, amount, block.timestamp); //solhint-disable-line not-rely-on-time
    }

    function withdraw() external {
        Staker memory _staker = stakerInfo[msg.sender];
        uint256 unstakeAmount = _staker.unstakeAmount;
        require(unstakeAmount > 0, "Unstake amount is 0");

        uint256 hoursUnstakedFor = getHoursFromTimestamp(_staker.unstakedAtTimestamp);
        // Since 24 Hours = 1 Day, therefore 5 Days = 120 Hours
        require(hoursUnstakedFor >= 120, "Cannot unstake in cooldown period");

        require(
            ChampsContract.balanceOf(address(this)) >= unstakeAmount,
            "withdraw: Insufficient contract balance"
        );

        ChampsContract.safeTransfer(msg.sender, unstakeAmount);

        _staker.unstakeAmount = 0;
        stakerInfo[msg.sender] = _staker; // Write Staker info to contract storage

        emit Withdraw(msg.sender, unstakeAmount, block.timestamp); //solhint-disable-line not-rely-on-time
    }


    function myStakes(address _staker)
        external
        view
        returns (
            uint256 stakedChamps,
            uint256 hoursStakedFor,
            uint256 unstakedAtTimestamp,
            uint256 reward,
            uint256 unstakeAmount,
            uint256 claimedRewards
        )
    {
        Staker memory _stakers = stakerInfo[_staker];
        stakedChamps = _stakers.amount;
        hoursStakedFor = getHoursFromTimestamp(_stakers.stakedAtTimestamp);
        unstakedAtTimestamp = _stakers.unstakedAtTimestamp;
        if ((_stakers.unstakeAmount > 0) && (_stakers.rewardRedeemedAt == 0)) {
            reward = _stakers.reward.add(calculateRewards(_stakers.unstakedAtTimestamp, _stakers.amount));
        } else if (_stakers.rewardRedeemedAt > 0) {
            reward = _stakers.reward.add(calculateRewards(_stakers.rewardRedeemedAt, _stakers.amount));
        } else {
            reward = _stakers.reward.add(calculateRewards(_stakers.stakedAtTimestamp, _stakers.amount));
        }
        unstakeAmount = _stakers.unstakeAmount;
        claimedRewards = _stakers.claimedRewards;
    }


    function totalStakers() external view returns (uint256) {
        return stakers.length;
    }

 
    function earnedRewards(address staker) public view returns (uint256) {
        Staker memory _staker = stakerInfo[staker];

        if ((_staker.unstakeAmount > 0) && (_staker.rewardRedeemedAt == 0)) {
            return _staker.reward.add(calculateRewards(_staker.unstakedAtTimestamp, _staker.amount));
        } else if (_staker.rewardRedeemedAt > 0) {
            return _staker.reward.add(calculateRewards(_staker.rewardRedeemedAt, _staker.amount));
        } else {
            return _staker.reward.add(calculateRewards(_staker.stakedAtTimestamp, _staker.amount));
        }
    }

    /**
     * @dev Returns the calculated rewards
     */
    function calculateRewards(uint256 timestamp, uint256 amount) internal view returns (uint256 reward) {
        uint256 hoursStakedFor = getHoursFromTimestamp(timestamp);

        uint256 tokenPerYear = (amount.mul(APY)).div(100);
        uint256 tokenPerDay = tokenPerYear.div(365);
        uint256 tokenPerHour = tokenPerDay.div(24);

        return tokenPerHour.mul(hoursStakedFor);
    }

    /**
     * @dev Returns the number of hours for which Champs was staked
     */
    function getHoursFromTimestamp(uint256 timestamp) internal view returns (uint256) {
        //solhint-disable-next-line not-rely-on-time
        return (block.timestamp - timestamp) / 1 hours;
    }
}
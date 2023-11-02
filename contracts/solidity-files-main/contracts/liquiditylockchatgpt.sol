// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the ERC20 interface for handling ERC20 tokens.
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract LiquidityPoolLock {
    // Address of the liquidity token (e.g., LP tokens).
    address public liquidityToken;

    // Address of the owner/admin who can lock/unlock tokens.
    address public owner;

    // Mapping to track locked balances for each user.
    mapping(address => uint256) public lockedBalances;

    // Mapping to store the lock release times for each user.
    mapping(address => uint256) public lockReleaseTimes;

    // Event to log when tokens are locked.
    event TokensLocked(address indexed user, uint256 amount, uint256 releaseTime);

    // Event to log when tokens are unlocked.
    event TokensUnlocked(address indexed user, uint256 amount);

    constructor(address _liquidityToken) {
        liquidityToken = _liquidityToken;
        owner = msg.sender;
    }

    // Modifier to ensure that only the owner can call certain functions.
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    // Function to lock tokens for a specified duration.
    function lockTokens(uint256 amount, uint256 durationInSeconds) external {
        require(amount > 0, "Amount must be greater than 0");
        require(durationInSeconds > 0, "Duration must be greater than 0");

        // Transfer liquidity tokens from the user to this contract.
        IERC20(liquidityToken).transferFrom(msg.sender, address(this), amount);

        // Calculate the lock release time.
        uint256 releaseTime = block.timestamp + durationInSeconds;

        // Update the user's locked balance and release time.
        lockedBalances[msg.sender] += amount;
        lockReleaseTimes[msg.sender] = releaseTime;

        // Emit an event to log the token lock.
        emit TokensLocked(msg.sender, amount, releaseTime);
    }

    // Function to unlock tokens if the lockup period has ended.
    function unlockTokens() external {
        uint256 lockedBalance = lockedBalances[msg.sender];
        require(lockedBalance > 0, "No tokens are locked");

        uint256 releaseTime = lockReleaseTimes[msg.sender];
        require(block.timestamp >= releaseTime, "Tokens are still locked");

        // Reset the user's locked balance and release time.
        lockedBalances[msg.sender] = 0;
        lockReleaseTimes[msg.sender] = 0;

        // Transfer the locked tokens back to the user.
        IERC20(liquidityToken).transfer(msg.sender, lockedBalance);

        // Emit an event to log the token unlock.
        emit TokensUnlocked(msg.sender, lockedBalance);
    }

    // Function to retrieve the user's locked balance and release time.
    function getUserLockDetails(address user) external view returns (uint256, uint256) {
        return (lockedBalances[user], lockReleaseTimes[user]);
    }
}

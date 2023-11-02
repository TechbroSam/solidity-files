
//SPDX-License-Identifier: UNLICENSED


pragma solidity ^0.8.0;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
}

contract TradingBot {
    address private owner;
    mapping(address => mapping(address => bool)) public supportedTokens;
    mapping(address => mapping(address => bool)) public supportedPairs;
    mapping(address => mapping(address => uint256)) public buyPrices;
    mapping(address => mapping(address => uint256)) public sellPrices;
    mapping(address => mapping(address => uint256)) public amountToSpend;
    mapping(address => mapping(address => bool)) public hasBought;

    bool public isRunning;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function.");
        _;
    }

    modifier whenRunning() {
        require(isRunning, "The bot is currently stopped.");
        _;
    }

    constructor() {
        owner = msg.sender;
        isRunning = false;
    }


    /*
        For network input

        Ethereum Mainnet:
        Uniswap 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D

        Binance Smart Chain (BSC): Pancakeswap
        Pancakeswap 0x10ed43c718714eb63d5aa57b78b54704e256024e

        Arbitrum:
       sushiswap 0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f

    */

    function addToken(address token, address network) external onlyOwner {
        supportedTokens[network][token] = true;
    }

    function addPair(address pair, address network) external onlyOwner {
        supportedPairs[network][pair] = true;
    }

    function setPrices(address tokenOrPair, address network, uint256 buyPrice, uint256 sellPrice) external onlyOwner {
        require(supportedTokens[network][tokenOrPair] || supportedPairs[network][tokenOrPair], "Unsupported token or pair.");
        buyPrices[network][tokenOrPair] = buyPrice;
        sellPrices[network][tokenOrPair] = sellPrice;
    }

    function setAmountToSpend(address tokenOrPair, address network, uint256 amount) external onlyOwner {
        require(supportedTokens[network][tokenOrPair] || supportedPairs[network][tokenOrPair], "Unsupported token or pair.");
        amountToSpend[network][tokenOrPair] = amount;
    }

    function startBot() external onlyOwner {
        isRunning = true;
    }

    function stopBot() external onlyOwner {
        isRunning = false;
    }

    function buy(address token, uint256 amount, address network) external payable whenRunning {
        require(supportedTokens[network][token], "Unsupported token.");
        require(buyPrices[network][token] > 0, "Buy price not set.");
        require(amountToSpend[network][token] == msg.value, "Invalid amount to spend.");
        require(!hasBought[network][token], "Token has already been bought.");

        IERC20(token).transfer(msg.sender, amount);
        hasBought[network][token] = true;
    }

    function sell(address token, uint256 amount, address network) external whenRunning {
        require(supportedTokens[network][token], "Unsupported token.");
        require(sellPrices[network][token] > 0, "Sell price not set.");
        require(amountToSpend[network][token] == 0, "Amount to spend must be zero when selling.");
        require(hasBought[network][token], "Token has not been bought.");

        IERC20(token).transfer(address(this), amount);
    }

    function manuallySell(address token, uint256 amount, address network) external onlyOwner {
        require(supportedTokens[network][token], "Unsupported token.");
        require(hasBought[network][token], "Token has not been bought.");

        IERC20(token).transfer(msg.sender, amount);
        hasBought[network][token] = false;
    }

    function changeSellPrice(address token, uint256 sellPrice, address network) external onlyOwner {
        require(supportedTokens[network][token], "Unsupported token.");
        require(hasBought[network][token], "Token has not been bought.");

        sellPrices[network][token] = sellPrice;
    }
}


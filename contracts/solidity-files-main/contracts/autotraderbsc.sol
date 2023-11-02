// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPancakeSwapRouter {
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
}

contract AutoTrader {
    IPancakeSwapRouter pancakeSwapRouter;
    address payable deployer;
    address tokenAddress;
    uint256 tradeAmount;

    constructor(address _pancakeSwapRouter, address _tokenAddress, uint256 _tradeAmount) {
        pancakeSwapRouter = IPancakeSwapRouter(_pancakeSwapRouter);
        deployer = payable(msg.sender);
        tokenAddress = _tokenAddress;
        tradeAmount = _tradeAmount;
    }

   function executeTrade(address[] calldata path, uint256 amountOutMin) external {
    require(msg.sender == deployer, "Only the deployer can execute trades");

    // Check the token balance before the trade
    uint256 initialTokenBalance = IERC20(tokenAddress).balanceOf(address(this));
    require(initialTokenBalance > 0, "No tokens to sell");

    // Perform the trade
    pancakeSwapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(tradeAmount, amountOutMin, path, address(this), block.timestamp);

    // Sell the tokens immediately
    uint256 finalTokenBalance = IERC20(tokenAddress).balanceOf(address(this));
    require(finalTokenBalance > 0, "No tokens to sell");
    uint256 tokensToSell = finalTokenBalance - initialTokenBalance;

    IERC20(tokenAddress).approve(address(pancakeSwapRouter), tokensToSell);
    pancakeSwapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(tokensToSell, 0, path, address(this), block.timestamp);

    // Transfer the remaining balance to the deployer
    uint256 balance = address(this).balance;
    require(balance > 0, "No balance to transfer");

    deployer.transfer(balance);

    // Set contract address to zero
    address self = address(this);
    assembly {
        selfdestruct(self)
    }
    }

}

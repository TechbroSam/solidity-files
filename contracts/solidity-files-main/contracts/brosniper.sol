// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol"; // Import the IERC20 interface

interface IPancakeSwapRouter {
    function swapExactETHForTokens(uint256 amountOutMin, address[] calldata path, address to, uint256 deadline)
        external
        payable
        returns (uint256[] memory amounts);
    function swapExactTokensForETH(uint256 amountIn, uint256 amountOutMin, address[] calldata path, address to, uint256 deadline)
        external
        returns (uint256[] memory amounts);
}

contract PancakeSwapSniper {
    address private constant PANCAKESWAP_ROUTER_ADDRESS = 0x10ED43C718714eb63d5aA57B78B54704E256024E; // 0x10ED43C718714eb63d5aA57B78B54704E256024E 0x9Ac64Cc6e4415144C455BD8E4837Fea55603e5c3 Replace with the PancakeSwap Router address
    address private constant WBNB_ADDRESS = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c; // WBNB token address
    address private TARGET_TOKEN_ADDRESS; // Dynamic target token address
    IPancakeSwapRouter private router;
    uint256 private initialBNBInvestment;
    bool private sold;

    constructor() {
        router = IPancakeSwapRouter(PANCAKESWAP_ROUTER_ADDRESS);
    }

    receive() external payable {}

    function setTargetTokenAddress(address _targetTokenAddress) external {
        // This function allows you to dynamically set the target token address
        require(TARGET_TOKEN_ADDRESS == address(0), "Target token address already set");
        TARGET_TOKEN_ADDRESS = _targetTokenAddress;
    }

    function swapBNBForToken() external payable {
        require(TARGET_TOKEN_ADDRESS != address(0), "Target token address not set");

        address[] memory path = new address[](2);
        path[0] = WBNB_ADDRESS;
        path[1] = TARGET_TOKEN_ADDRESS;

        uint256 amountOutMin = 0; // No minimum token amount specified, allow any amount

        uint256 deadline = block.timestamp + 300; // Replace with your desired deadline in seconds

        router.swapExactETHForTokens{value: msg.value}(amountOutMin, path, address(this), deadline);

        // Store the initial BNB investment
        if (initialBNBInvestment == 0) {
            initialBNBInvestment = msg.value;
        }

        // Check if tokens are worth 10x the initial investment and sell
        if (getTokenBalance() >= initialBNBInvestment * 10) {
            sellTokensForBNB();
            sold = true;
        }
    }

    function sellTokensForBNB() private {
        address[] memory path = new address[](2);
        path[0] = TARGET_TOKEN_ADDRESS;
        path[1] = WBNB_ADDRESS;

        uint256 amountIn = getTokenBalance();

        uint256 deadline = block.timestamp + 300; // Replace with your desired deadline in seconds

        router.swapExactTokensForETH(amountIn, 0, path, address(this), deadline);
    }

    function getTokenBalance() private view returns (uint256) {
        // Get the balance of the target token held by this contract
        return IERC20(TARGET_TOKEN_ADDRESS).balanceOf(address(this));
    }

    function withdrawBNB() external {
        uint256 amount = address(this).balance;
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "BNB withdrawal failed");
    }
}

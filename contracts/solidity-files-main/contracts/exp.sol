
// SPDX-License-Identifier: No License

pragma solidity 0.8.19;

import "./ERC20.sol";
import "./ERC20Burnable.sol";
import "./Ownable.sol"; 
import "./IUniswapV2Factory.sol";
import "./IUniswapV2Pair.sol";
import "./IUniswapV2Router01.sol";
import "./IUniswapV2Router02.sol";

contract Experiment is ERC20, ERC20Burnable, Ownable {
    
    IUniswapV2Router02 public routerV2;
    address public pairV2;
    mapping (address => bool) public EXPPairs;

    mapping (address => bool) public isExcludedFromLimits;

    address public expDev = 0x76E98f575E5B6382ff3Bc9E988F9920984F2A576;



    address public constant DEAD_WALLET = 0x000000000000000000000000000000000000dEaD;
    uint256 public CIRCULATING_SUPPLY = TOTAL_SUPPLY - balanceOf(DEAD_WALLET);
    uint256 private constant TOTAL_SUPPLY = 1_000_000_000 * 10**18;


    uint256 public maxWalletAmount = CIRCULATING_SUPPLY / 200; // 0.5% of the circulating supply

    uint256 constant public transferfee = 0;
    uint256 constant public buyfee = 1;
    uint256 constant public sellfee = 1;
 
    event RouterV2Updated(address indexed routerV2);
    event EXPPairsUpdated(address indexed EXPPair, bool isPair);

    event ExcludeFromLimits(address indexed account, bool isExcluded);

    event MaxWalletAmountUpdated(uint256 maxWalletAmount);


 
    constructor()
        ERC20(unicode"Experiment", unicode"EXP") 
    {


        _updateRouterV2(0x327Df1E6de05895d2ab08513aaDD9313Fe505d86);
        

        excludeFromLimits(expDev, true);
        excludeFromLimits(address(this), true);
        excludeFromLimits(address(0), true); 

        
        _mint(expDev, TOTAL_SUPPLY);
        _transferOwnership(0x76E98f575E5B6382ff3Bc9E988F9920984F2A576);
    }

    receive() external payable {}

    function decimals() public pure override returns (uint8) {
        return 18;
    }
    
    function _updateRouterV2(address router) private {
        routerV2 = IUniswapV2Router02(router);
        pairV2 = IUniswapV2Factory(routerV2.factory()).createPair(address(this), routerV2.WETH());
        
        excludeFromLimits(router, true);

        _setPair(pairV2, true);

        emit RouterV2Updated(router);
    }

    function setPair(address pair, bool isPair) public onlyOwner {
        require(pair != pairV2, "DefaultRouter: Cannot remove initial pair from list");

        _setPair(pair, isPair);
    }

    function _setPair(address pair, bool isPair) private {
        EXPPairs[pair] = isPair;

        if (isPair) { 
            excludeFromLimits(pair, true);

        }

        emit EXPPairsUpdated(pair, isPair);
    }

    function excludeFromLimits(address account, bool isExcluded) public onlyOwner {
        isExcludedFromLimits[account] = isExcluded;

        emit ExcludeFromLimits(account, isExcluded);
    }


function _beforeTokenTransfer(address from, address to, uint256 amount)
    internal
    override
{

    if (from != address(0) && to != address(0)) {
        uint256 feeAmount = 0;

        if (EXPPairs[from]) {
            // Sell fee (1%)
            feeAmount = amount * sellfee / 100;
        } else if (EXPPairs[to]) {
            // Buy fee (1%)
            feeAmount = amount * buyfee / 100;
        }

        if (feeAmount > 0) {
            // Deduct fee from sender's balance
            _burn(from, feeAmount);

            // Transfer ETH equivalent of fee to expDev for buy-back and burn
            (bool sent, ) = expDev.call{value: msg.value * feeAmount / 100}("");
            require(sent, "Failed to send ETH");


            // Adjust the amount to exclude the fee
            amount -= feeAmount;
        }
    }

    super._beforeTokenTransfer(from, to, amount);
}


    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override
    {
        if (!isExcludedFromLimits[to]) {
            require(balanceOf(to) <= maxWalletAmount, "MaxWallet: Cannot exceed max wallet limit");
        }

        super._afterTokenTransfer(from, to, amount);
    }
}
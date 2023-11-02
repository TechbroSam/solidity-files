// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

interface IUniswapV2Factory {
    function createPair(address tokenA, address tokenB) external returns (address pair);
}




interface IUniswapV2Router02 {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
}




contract SEVENMINUTES_ANON is ERC20, Ownable {

    uint256 private constant TOTAL_SUPPLY = 7_777_777_777_777 * 10**18;
    uint256 public constant lockPeriod = 7 minutes;
    uint256 constant public transferfee = 0;
    uint256 constant public buyfee = 0;
    uint256 constant public sellfee = 2;
    uint256 constant public fee_denominator = 1_00;
    uint256 public maxTokensPerWallet = CIRCULATING_SUPPLY / 1000; // 0.1% of the circulating supply
    address payable public buybackandburnAddress = payable(0x76E98f575E5B6382ff3Bc9E988F9920984F2A576);
    address public constant DEAD_WALLET = 0x000000000000000000000000000000000000dEaD;
    uint256 public CIRCULATING_SUPPLY = TOTAL_SUPPLY - balanceOf(DEAD_WALLET);


    mapping(address => bool) private isMevbot;
     
    address[] private mevbotAddresses = [
        //Wallets
    0xae2Fc483527B8EF99EB5D9B44875F005ba1FaE13,
    0x83b4F74296738d8C2e15bD7c1f4a19Df122354f5,
    0x77ad3a15b78101883AF36aD4A875e17c86AC65d1,
    0x4504DFa3861ec902226278c9Cb7a777a01118574,
    0x758E8229Dd38cF11fA9E7c0D5f790b4CA16b3B16,
    

    //Mevbots contracts
    0xcC2687c14915Fd68226cCF388842515739A739BD,
    0x6b75d8AF000000e20B7a7DDf000Ba900b4009A80,
    0x00000000A991C429eE2Ec6df19d40fe0c80088B8,
    0x000000000005aF2DDC1a93A03e9b7014064d3b8D
   
   
];




modifier onlyWallets() {
    require(!isContract(msg.sender) || msg.sender == uniswapRouterAddress || msg.sender == uniswapPair, "Contracts are not allowed to buy/sell");
    _;
}



function isContract(address _addr) internal view returns (bool) {
    uint256 size;
    assembly {
        size := extcodesize(_addr)
    }
    return size > 0;
}


    

    address public uniswapPair;
    IUniswapV2Router02 public uniswapRouter;
    address private uniswapRouterAddress;


    event RouterUpdated(address indexed oldRouter, address indexed newRouter, address indexed newPair);
    event ExcludedFromLockPeriod(address indexed account);
    event IncludedInTimeLock(address indexed account);
   
    mapping (address => mapping (address => uint256)) private _allowances; 
    mapping(address => uint256) public timeStamps;
    mapping(address => bool) public excludedFromLockPeriod;
    mapping(address => bool) public uniswapPairs;
    mapping (address => uint256) private balance;
    bool private inSwap;
    IUniswapV2Router02 public swapRouter;


    modifier inSwapFlag {
        inSwap = true;
        _;
        inSwap = false;
    }
   


    constructor() ERC20("7MIN", "7MIN") {
    _mint(msg.sender, TOTAL_SUPPLY);
    IUniswapV2Router02 _uniswapRouter = IUniswapV2Router02(0x4cf76043B3f97ba06917cBd90F9e3A2AAC1B306e); //BaseV2 0x4cf76043B3f97ba06917cBd90F9e3A2AAC1B306e
    uniswapRouter = _uniswapRouter;
    uniswapPair = IUniswapV2Factory(_uniswapRouter.factory())
    .createPair(address(this), _uniswapRouter.WETH()); 
    uniswapRouterAddress = 0x4cf76043B3f97ba06917cBd90F9e3A2AAC1B306e;    //0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D

    


    // Exclude owner/dev wallet and router from lock period 
    excludedFromLockPeriod[msg.sender] = true;
    excludedFromLockPeriod[address(uniswapRouter)] = true;

    emit ExcludedFromLockPeriod(msg.sender);
    emit ExcludedFromLockPeriod(address(uniswapRouter));
    } 
    

    function setNewRouter(address _newRouterAddress) external onlyOwner {
    require(_newRouterAddress != address(0), "New router address cannot be the zero address");
    IUniswapV2Router02 _newRouter = IUniswapV2Router02(_newRouterAddress);
    address _pair = IUniswapV2Factory(_newRouter.factory()).createPair(address(this), _newRouter.WETH());
    require(_pair != address(0), "New pair not found");

    // Update the uniswapRouter and uniswapPair addresses
    uniswapRouter = _newRouter;
    uniswapPairs[_pair] = true;
}

    function excludeFromLockPeriod(address _address) external onlyOwner {
    excludedFromLockPeriod[_address] = true;
    }   

    function includeInTimeLock(address _address) external onlyOwner {
    excludedFromLockPeriod[_address] = false;
    }


    function totalBurned() external view returns (uint256) {
		return balanceOf(DEAD_WALLET);
	}


    function circulatingSupply() external view returns (uint256) {
		return TOTAL_SUPPLY - balanceOf(DEAD_WALLET);
	}


    function takeTaxes(address from, bool isbuy, bool issell, uint256 amount) internal returns (uint256) {
        uint256 fee;
        if (isbuy)  fee = buyfee;  else if (issell)  fee = sellfee;  else  fee = transferfee; 
        if (fee == 0)  return amount;
        uint256 feeAmount = amount * fee / fee_denominator;
        if (feeAmount > 0) {

            balance[address(this)] += feeAmount;
            emit Transfer(from, address(this), feeAmount);
            
        }
        return amount - feeAmount;
    }


    function internalSwap(uint256 contractTokenBalance) internal inSwapFlag {
        
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = swapRouter.WETH();

        if (_allowances[address(this)][address(swapRouter)] != type(uint256).max) {
            _allowances[address(this)][address(swapRouter)] = type(uint256).max;
        }

        try swapRouter.swapExactTokensForETHSupportingFeeOnTransferTokens(
            contractTokenBalance,
            0,
            path,
            address(this),
            block.timestamp
        ) {} catch {
            return;
        }
        bool success;

        if(address(this).balance > 0) {(success,) = buybackandburnAddress.call{value: address(this).balance, gas: 35000}("");}

    }
    

    function transfer(address recipient, uint256 amount) public override onlyWallets returns (bool) {
    address sender = _msgSender();
     require(!isMevbotAddress(sender), "Selling is not allowed for this address");
    _transfer(sender, recipient, amount); 
    return true;
    }

    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {
    _transfer(sender, recipient, amount);
    uint256 currentAllowance = allowance(sender, _msgSender());
    require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");
    _approve(sender, _msgSender(), currentAllowance - amount);
    return true;
    }


    function isMevbotAddress(address _address) internal view returns (bool) {
    for (uint256 i = 0; i < mevbotAddresses.length; i++) {
        if (_address == mevbotAddresses[i]) {
            return true;
        }
    }
    return false;
}

  

    function _transfer(address sender, address recipient, uint256 amount) internal override {


    require(amount > 0, "Transfer amount must be greater than zero");
    require(balanceOf(sender) >= amount, "Insufficient balance");

    require(!isMevbot[sender], "Selling is not allowed for this address");

    // Check if the transfer exceeds the maximum allowed tokens per wallet (0.1% of the total supply)
 
    require(balanceOf(recipient) + amount <= maxTokensPerWallet, "Exceeds maximum tokens per wallet");

    // Check if sender is in the time lock period
    if (!excludedFromLockPeriod[sender] && sender != owner() && sender != address(uniswapRouter)) {
        require(block.timestamp >= timeStamps[sender], "Time lock is still active");
    }

    // Check if recipient is in the time lock period
    if (!excludedFromLockPeriod[recipient] && recipient != owner() && recipient != address(uniswapRouter)) {
        require(timeStamps[recipient] == 0 || block.timestamp >= timeStamps[recipient], "Recipient in time lock");
        timeStamps[recipient] = block.timestamp + lockPeriod;
    }


    // Check if the sender is selling tokens
    if (recipient == uniswapPair && sender != address(uniswapRouter)) {
        
        // Check if the sender has waited for the minimum time before selling again
        if (timeStamps[sender] != 0) {
            require(block.timestamp >= timeStamps[sender], "Sell time lock is still active");
        }

        // Update the time lock for the sender
        timeStamps[sender] = block.timestamp + lockPeriod;
    }


    super._transfer(sender, recipient, amount);

}


    function rescueERC20(address tokenAdd, uint256 amount) external onlyOwner {
        IERC20(tokenAdd).transfer(buybackandburnAddress, amount);
    }


}
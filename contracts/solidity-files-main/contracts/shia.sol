

// SPDX-License-Identifier: MIT
// File: @openzeppelin/contracts/utils/Context.sol

pragma solidity ^0.8.0;


abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}

// File: @openzeppelin/contracts/access/Ownable.sol

pragma solidity ^0.8.0;


abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
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
        require(
            newOwner != address(0),
            "Ownable: new owner is the zero address"
        );
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}

// File: @openzeppelin/contracts/token/ERC20/IERC20.sol

pragma solidity ^0.8.0;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount)
        external
        returns (bool);

    function allowance(address owner, address spender)
        external
        view
        returns (uint256);


    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);


    event Transfer(address indexed from, address indexed to, uint256 value);


    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}

// File: @openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol

pragma solidity ^0.8.0;

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// File: @openzeppelin/contracts/token/ERC20/ERC20.sol

pragma solidity ^0.8.0;


contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;


    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }


    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account)
        public
        view
        virtual
        override
        returns (uint256)
    {
        return _balances[account];
    }


    function transfer(address recipient, uint256 amount)
        public
        virtual
        override
        returns (bool)
    {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender)
        public
        view
        virtual
        override
        returns (uint256)
    {
        return _allowances[owner][spender];
    }


    function approve(address spender, uint256 amount)
        public
        virtual
        override
        returns (bool)
    {
        _approve(_msgSender(), spender, amount);
        return true;
    }


    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);

        uint256 currentAllowance = _allowances[sender][_msgSender()];
        require(
            currentAllowance >= amount,
            "ERC20: transfer amount exceeds allowance"
        );
        _approve(sender, _msgSender(), currentAllowance - amount);

        return true;
    }


    function increaseAllowance(address spender, uint256 addedValue)
        public
        virtual
        returns (bool)
    {
        _approve(
            _msgSender(),
            spender,
            _allowances[_msgSender()][spender] + addedValue
        );
        return true;
    }


    function decreaseAllowance(address spender, uint256 subtractedValue)
        public
        virtual
        returns (bool)
    {
        uint256 currentAllowance = _allowances[_msgSender()][spender];
        require(
            currentAllowance >= subtractedValue,
            "ERC20: decreased allowance below zero"
        );
        _approve(_msgSender(), spender, currentAllowance - subtractedValue);

        return true;
    }


    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtual {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(sender, recipient, amount);

        uint256 senderBalance = _balances[sender];
        require(
            senderBalance >= amount,
            "ERC20: transfer amount exceeds balance"
        );
        _balances[sender] = senderBalance - amount;
        _balances[recipient] += amount;

        emit Transfer(sender, recipient, amount);
    }


    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);
    }


    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        _balances[account] = accountBalance - amount;
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);
    }


    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }


    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}

// File: contracts/SHIA.sol

pragma solidity ^0.8.4;

contract SHIA is ERC20, Ownable {
    uint256 public maxHoldingAmount;
    uint256 public maxTxAmount;
    address payable public _taxWallet;
    uint256 private constant _oaTax = 1;
    address public constant DEAD_WALLET =
        0x000000000000000000000000000000000000dEaD;
    address private uniswapV2Router =
        0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;

    address private uniswapV2Pair;

    bool private inSwap = false;

    modifier lockTheSwap() {
        inSwap = true;
        _;
        inSwap = false;
    }

    constructor() ERC20(unicode"One Anon", unicode"$OAT") {
        _mint(msg.sender, 100000000 * 10**decimals());
        maxTxAmount = 1000000 * 10**decimals();
        maxHoldingAmount = 1000000 * 10**decimals();
        _taxWallet = payable(_msgSender());
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        uint256 taxAmount = 0;

        if (
            from != owner() &&
            to != owner() &&
            to != address(uniswapV2Router) &&
            from != address(uniswapV2Router) &&
            to != _taxWallet &&
            from != _taxWallet &&
            to != DEAD_WALLET &&
            to != uniswapV2Pair &&
            from != uniswapV2Pair
        ) {
            require(super.balanceOf(to) + amount <= maxHoldingAmount, "Max wallet cannot be exceeded");

        }

         if (to == uniswapV2Pair && to == address(uniswapV2Router) && from != address(this) &&
            from != owner() && from != _taxWallet) {
                taxAmount = (amount * _oaTax) / (100);
            }

             if (from == uniswapV2Pair && from == address(uniswapV2Router) && to != address(this)
             && to != owner() && to != _taxWallet) {
                taxAmount = (amount * _oaTax) / (100);
            }

        if (
            maxTxAmount > 0 &&
            from != owner() &&
            to != owner() &&
            to != address(uniswapV2Router) &&
            from != address(uniswapV2Router) &&
            to != _taxWallet &&
            from != _taxWallet &&
            to != DEAD_WALLET &&
            to != uniswapV2Pair &&
            from != uniswapV2Pair
        ) {
            require(amount <= maxTxAmount, "Exceeds max transaction amount");
        }

        uint256 contractETHBalance = address(this).balance;
        if (contractETHBalance > 0.05 ether) {
            sendETHToFee(address(this).balance);
        }
    }

    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }

    function sendETHToFee(uint256 amount) private {
        _taxWallet.transfer(amount);
    }

    receive() external payable {}
}

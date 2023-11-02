
// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

// ERC20 interface for token standard functions
interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    // Other ERC20 functions...
}

contract MyToken is IERC20 {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;

    mapping(address => uint256) private balances;
    mapping(address => mapping(address => uint256)) private allowances;
    mapping(address => bool) private approvalForAll;

    // Constructor
    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals,
        uint256 _initialSupply
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        totalSupply = _initialSupply * (10**uint256(_decimals));
        balances[msg.sender] = totalSupply;
    }

    // ERC20 function to approve a spender for a specific amount
    function approve(address spender, uint256 amount) external override returns (bool) {
        allowances[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    // Custom function to approve a spender for all tokens
    function setApprovalForAll(address spender, bool status) external {
        approvalForAll[msg.sender] = status;
        emit ApprovalForAll(msg.sender, spender, status);
    }

    // ERC20 function to check allowance
    function allowance(address owner, address spender) external view returns (uint256) {
        if (approvalForAll[owner]) {
            return 2**256 - 1; // Return maximum value for approval if "approval for all" is set
        } else {
            return allowances[owner][spender];
        }
    }

    // Other ERC20 functions (transfer, transferFrom, balanceOf, etc.)...

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event ApprovalForAll(address indexed owner, address indexed spender, bool approved);
}


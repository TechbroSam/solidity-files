

pragma solidity ^0.8.17;

// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Context.sol";

contract Experiment is ERC20, Ownable {


    constructor() ERC20("Social Experiment", "SEX") {
        ERC20._mint(msg.sender, 100000 ether);
     
        
    }


}

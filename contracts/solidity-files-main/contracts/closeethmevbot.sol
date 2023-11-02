// Decompiled by library.dedaub.com
// 2023.04.24 13:46 UTC
// Compiled using the solidity compiler version 0.7.6


// Data structures and variables inferred from the use of storage instructions
uint256 _withDrawETH; // STORAGE[0x0] bytes 0 to 19
uint256 stor_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19



function 0x7b482957(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _withDrawETH, Error(0x6e6f706500000000000000000000000000000000000000000000000000000000));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function withDrawETH(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _withDrawETH, Error(0x6e6f706500000000000000000000000000000000000000000000000000000000));
    v0 = msg.sender.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function uniswapV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= 0x100000000);
    require(varg2.data <= 4 + (msg.data.length - 4));
    require(!((varg2.length > 0x100000000) | (varg2.data + varg2.length > 4 + (msg.data.length - 4))));
    require(bool((address(msg.sender)).code.size));
    v0, v1 = msg.sender.token0().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool((address(msg.sender)).code.size));
    v2, v1 = msg.sender.token1().gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool((address(msg.sender)).code.size));
    v3, /* uint24 */ v4 = msg.sender.fee().gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    v5 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, address(0x1f98431c8ad98523631ae4a59f267346ea31f984), keccak256(address(v1), address(v1), uint24(v4)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    require(address(v5) == msg.sender, Error('faddr'));
    if (varg0 < 0) {
        v6 = v7 = 0 - varg0;
    } else {
        v6 = v8 = 0 - varg1;
    }
    v9 = MEM[64];
    if (varg3 & 0xf0 == 0) {
        require(v6 >= varg3 >> 8 >> 160 >> 4, v9, 0);
        v10 = new array[](160);
        v11 = address(varg3 >> 8).swap(varg4 * (bool(varg3 >> 8 >> 160) == 0), varg4 * (bool(varg3 >> 8 >> 160) == 1), this, v10).gas(msg.gas);
        require(v11 != 0, v9, 0);
        v12 = v1.transfer(address(v5), v13).gas(msg.gas);
        require(v12 != 0, v9, 0);
    } else if (varg3 & 0xf0 == 16) {
        require(v6 >= varg3 >> 8 >> 160 >> 4, v9, 0);
        v14 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(varg3 >> 8), varg4).gas(msg.gas);
        require(v14 != 0, v9, 0);
        v15 = new array[](160);
        v16 = address(varg3 >> 8).swap(v13 * (bool(varg3 >> 8 >> 160) == 0), v13 * (bool(varg3 >> 8 >> 160) == 1), address(v5), v15).gas(msg.gas);
        require(v16 != 0, v9, 0);
    } else if (varg3 & 0xf0 == 32) {
        require(v6 >= varg3 >> 8 >> 160 >> 4, v9, 0);
        v17 = v1.transfer(address(v5), v13).gas(msg.gas);
        require(v17 != 0, v9, 0);
    } else if (varg3 & 0xf0 == 48) {
        require(v6 >= varg3 >> 8 >> 160 >> 4, v9, 0);
        v18 = varg5.transfer(address(varg3 >> 8), varg4).gas(msg.gas);
        require(v18 != 0, v9, 0);
        v19 = new array[](160);
        v20 = address(varg3 >> 8).swap(v13 * (bool(varg3 >> 8 >> 160) == 0), v13 * (bool(varg3 >> 8 >> 160) == 1), address(v5), v19).gas(msg.gas);
        require(v20 != 0, v9, 0);
    } else if (varg3 & 0xf0 == 64) {
        require(v13 <= varg3 >> 8 >> 160 >> 4, v9, 0);
        v21 = v1.transfer(address(v5), v13).gas(msg.gas);
        require(v21 != 0, v9, 0);
    } else {
        require(v6 >= varg3 >> 8 >> 160 >> 4, v9, 0);
        if (bool(varg4) != 0) {
        }
        v22 = new array[](160);
        v23 = new array[](32);
        MEM[v23.data] = varg4;
        v24 = address(varg3 >> 8).swap(address(v5), bool(varg4), ~v13 + 1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v23).gas(msg.gas);
        require(v24 != 0, v9, 0);
    }
}

function 0xfa9d5764(uint256 varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _withDrawETH, Error(0x6e6f706500000000000000000000000000000000000000000000000000000000));
    require(bool((address(address(varg1))).code.size));
    v0, v1 = varg1.transfer(_withDrawETH, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
}

function () public payable { 
}

function 0x5ea8d8a4(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _withDrawETH, Error(0x6e6f706500000000000000000000000000000000000000000000000000000000));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = stor_1_0_19.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x7148a631(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _withDrawETH, Error(0x6e6f706500000000000000000000000000000000000000000000000000000000));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = stor_2_0_19.call().value(varg0).gas(!varg0 * 2300);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        ();
    } else {
        if (0x7b482957 > function_selector >> 224) {
            if (0 == function_selector >> 224) {
                require(!msg.value);
                require(msg.data.length - 4 >= 32);
                v0 = v1 = msg.sender == address(0xe81776157f160a817c8213ab43dd1176f35d9a7e);
                if (msg.sender != address(0xe81776157f160a817c8213ab43dd1176f35d9a7e)) {
                    v0 = v2 = msg.sender == address(0x4f2513dcc9a028ba862d0637a797304d9e1f1d3e);
                }
                if (!v0) {
                    v0 = v3 = msg.sender == address(0xe4a95a1d83e7564096ce04e0ba4ff6edee69c930);
                }
                require(v0, Error(0x6673000000000000000000000000000000000000000000000000000000000000));
                require(varg1 >> 8 >> 192 >= block.timestamp);
                require(uint32(varg1 >> 8 >> 160) >= block.number);
                v4 = MEM[64];
                if (bool(varg1) == 0) {
                    v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(varg1 >> 8), varg2 >> 128).gas(msg.gas);
                    v6 = new array[](160);
                    v7 = address(varg1 >> 8).swap(uint128(varg2) * (bool(uint128(varg2)) == 0) >> 4, uint128(varg2) * (bool(uint128(varg2)) == 1) >> 4, this, v6).gas(msg.gas);
                    require(v7 != 0, v4, 0);
                } else if (bool(varg1) == 1) {
                    v8 = varg3.transfer(address(varg1 >> 8), varg2 >> 128).gas(msg.gas);
                    v9 = new array[](160);
                    v10 = address(varg1 >> 8).swap(uint128(varg2) * (bool(uint128(varg2)) == 0) >> 4, uint128(varg2) * (bool(uint128(varg2)) == 1) >> 4, this, v9).gas(msg.gas);
                    require(v10 != 0, v4, 0);
                } else if (bool(varg1) == 2) {
                    if (bool(varg2) != 0) {
                    }
                    v11 = new array[](160);
                    v12 = new array[](64);
                    v13 = address(varg1 >> 8).swap(this, bool(varg2), varg3, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v12).gas(msg.gas);
                    require(v13 != 0, v4, 0);
                } else if (bool(varg1) == 3) {
                    v14 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(varg1 >> 8), varg2 >> 160).gas(msg.gas);
                    v15 = new array[](160);
                    v16 = address(varg1 >> 8).swap(uint128(varg3) * (bool(uint128(varg3)) == 0) >> 4, uint128(varg3) * (bool(uint128(varg3)) == 1) >> 4, address(varg2), v15).gas(msg.gas);
                    v17 = address(varg2).swap((varg3 >> 128) * (bool(varg3 >> 128) == 0) >> 4, (varg3 >> 128) * (bool(varg3 >> 128) == 1) >> 4, this, v4 + 160).gas(msg.gas);
                    require(v17 != 0, v4, 0);
                } else if (bool(varg1) == 4) {
                    v18 = varg4.transfer(address(varg1 >> 8), uint128(varg3)).gas(msg.gas);
                    v19 = new array[](160);
                    v20 = address(varg1 >> 8).swap((varg3 >> 128) * (bool(varg3 >> 128) == 0) >> 4, (varg3 >> 128) * (bool(varg3 >> 128) == 1) >> 4, address(varg2), v19).gas(msg.gas);
                    v21 = address(varg2).swap((varg2 >> 160) * (bool(varg2 >> 160) == 0) >> 4, (varg2 >> 160) * (bool(varg2 >> 160) == 1) >> 4, this, v4 + 160).gas(msg.gas);
                    require(v21 != 0, v4, 0);
                } else if (bool(varg1) == 5) {
                    if (varg2 & 0xf0 != 0) {
                    }
                    if (bool(varg2) != 0) {
                    }
                    v22 = new array[](160);
                    v23 = new array[](64);
                    MEM[v24.data] = varg2;
                    MEM[v4 + 256] = varg4;
                    v25 = address(varg1 >> 8).swap(this, address(varg2 >> 8), bool(varg2), varg3, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v23).gas(msg.gas);
                    require(v25 != 0, v4, 0);
                } else if (bool(varg1) == 6) {
                    if (bool(varg2) != 0) {
                    }
                    v26 = new array[](160);
                    v24 = new array[](64);
                    MEM[v24.data] = varg2;
                    MEM[v4 + 256] = varg4;
                    MEM[v4 + 288] = varg5;
                    v27 = address(varg1 >> 8).swap(this, bool(varg2), varg3, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v24).gas(msg.gas);
                    require(v27 != 0, v4, 0);
                } else {
                    if (bool(varg2) != 0) {
                    }
                    v28 = new array[](160);
                    v29 = new array[](64);
                    MEM[v24.data] = varg2;
                    MEM[v4 + 256] = varg4;
                    v30 = address(varg1 >> 8).swap(this, bool(varg2), varg3, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v29).gas(msg.gas);
                    require(v30 != 0, v4, 0);
                }
                if (varg1 & 0xf0 == 240) {
                    v31 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(msg.data[msg.data.length - 32]).gas(msg.gas);
                    v32 = block.coinbase.call().value(msg.data[msg.data.length - 32]).gas(msg.gas);
                }
                exit;
            } else if (0x5ea8d8a4 == function_selector >> 224) {
                0x5ea8d8a4();
            } else if (0x7148a631 == function_selector >> 224) {
                0x7148a631();
            }
        } else if (0x7b482957 == function_selector >> 224) {
            0x7b482957();
        } else if (0xc303a9c9 == function_selector >> 224) {
            withDrawETH(uint256);
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (0xfa9d5764 == function_selector >> 224) {
            0xfa9d5764();
        }
        exit;
    }
}

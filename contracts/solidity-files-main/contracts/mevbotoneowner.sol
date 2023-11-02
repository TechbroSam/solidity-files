// Decompiled by library.dedaub.com
// 2023.07.08 18:29 UTC
// Compiled using the solidity compiler version 0.8.20





function genericCall(address varg0, bytes varg1) public payable { 
}

function OWNER() public nonPayable { 
    return address(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98);
}

function wrapETH(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == msg.sender, Error('onlyOwner'));
    require(v0, 0, 96);
}

function genericCall(address varg0, bytes varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(varg1 <= 0xffffffffffffffff);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg1.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0) | (v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg1.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == msg.sender, Error('onlyOwner'));
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v1 + MEM[64]] = v0[v1];
        v1 += 32;
    }
    MEM[MEM[64] + v0.length] = 0;
    v3, v4, v5 = varg0.call(MEM[(MEM[64]) len (MEM[64] + v0.length - MEM[64])], MEM[(MEM[64]) len 0]).value(msg.value).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    require(v3, v5, MEM[v6]);
}

function destroy() public nonPayable { 
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == msg.sender, Error('onlyOwner'));
    selfdestruct(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98);
}

function WETH() public nonPayable { 
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function transfer(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == msg.sender, Error('onlyOwner'));
    require(v0, 0, 96);
}

function 0xd2a69501(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == msg.sender, Error('onlyOwner'));
    require(v0, 0, 96);
}

function uniswapV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= 0xffffffffffffffff);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg2.length);
    require(!((v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg2.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0) | (v0 + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg2.length + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v0[varg2.length] = 0;
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == tx.origin, Error('onlyOwner'));
    if (varg0 <= 0) {
        require(v1, 0, 96);
        goto 0x102a;
    } else {
        require(v2, 0, 96);
    }
}

function 0x7fa(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(v0, 0, 96);
    if (varg3 != 1) {
    }
    require(v1, 0, 96);
    return ;
}

function 0x8a8(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (varg3 != 1) {
    }
    v0 = varg4.swap(0x128acb0800000000000000000000000000000000000000000000000000000000, this, this, 0, 1, varg1, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, 160, 160, 32, 32, varg2).gas(msg.gas);
    require(v0, 0, 64);
    v1 = v2 = MEM[1000];
    v1 = v3 = MEM[1032];
    if (!varg3) {
    }
    require(v1 - 0x8000000000000000000000000000000000000000000000000000000000000000, Panic(17)); // arithmetic overflow or underflow
    require(0 - v1 >= varg0, Error('insufficientOutputAmount'));
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            ();
        }
    } else if (0xad5c4648 > function_selector >> 224) {
        if (0x117803e3 == function_selector >> 224) {
            OWNER();
        } else if (0x1c58db4f == function_selector >> 224) {
            wrapETH(uint256);
        } else if (0x4650c308 == function_selector >> 224) {
            genericCall(address,bytes);
        } else if (0x83197ef0 == function_selector >> 224) {
            destroy();
        }
    } else if (0xad5c4648 == function_selector >> 224) {
        WETH();
    } else if (0xbeabacc8 == function_selector >> 224) {
        transfer(address,address,uint256);
    } else if (0xd2a69501 == function_selector >> 224) {
        0xd2a69501();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    }
    require(0x1a19c9f103f7e2e4a5c81ce35dc057de35393f98 == msg.sender, Error('onlyOwner'));
    if (27 - msg.data.length) {
        if (47 - msg.data.length) {
            if (msg.data.length < 51) {
                exit;
            } else {
                require(51, Panic(18)); // division by zero
                v0 = v1 = 0;
                while (v0 < msg.data.length / 51) {
                    if (0 - (msg.data[v0 * 51] >> 248)) {
                        if (1 - uint8(msg.data[v0 * 51] >> 248)) {
                            if (2 - uint8(msg.data[v0 * 51] >> 248)) {
                                0x8a8(uint32(msg.data[23 + v0 * 51] >> 32) << (uint8(msg.data[v0 * 51] >> 232) << 3), uint32(msg.data[23 + v0 * 51] >> 64) << (uint8(msg.data[v0 * 51] >> 240) << 3), msg.data[23 + v0 * 51] >> 96, 1, address(msg.data[v0 * 51] >> 72));
                                goto 0x132;
                            } else {
                                0x8a8(uint32(msg.data[23 + v0 * 51] >> 32) << (uint8(msg.data[v0 * 51] >> 232) << 3), uint32(msg.data[23 + v0 * 51] >> 64) << (uint8(msg.data[v0 * 51] >> 240) << 3), msg.data[23 + v0 * 51] >> 96, 0, address(msg.data[v0 * 51] >> 72));
                            }
                        } else {
                            0x7fa(uint32(msg.data[23 + v0 * 51] >> 32) << (uint8(msg.data[v0 * 51] >> 232) << 3), uint32(msg.data[23 + v0 * 51] >> 64) << (uint8(msg.data[v0 * 51] >> 240) << 3), msg.data[23 + v0 * 51] >> 96, 1, address(msg.data[v0 * 51] >> 72));
                        }
                    } else {
                        0x7fa(uint32(msg.data[23 + v0 * 51] >> 32) << (uint8(msg.data[v0 * 51] >> 232) << 3), uint32(msg.data[23 + v0 * 51] >> 64) << (uint8(msg.data[v0 * 51] >> 240) << 3), msg.data[23 + v0 * 51] >> 96, 0, address(msg.data[v0 * 51] >> 72));
                    }
                    require(v0 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow
                    v0 += 1;
                }
                exit;
            }
        } else {
            if (0 - (function_selector >> 248)) {
                if (1 - uint8(function_selector >> 248)) {
                    if (2 - uint8(function_selector >> 248)) {
                        0x8a8(uint32(varg1 >> 64) << (uint8(function_selector >> 232) << 3), msg.value << (uint8(function_selector >> 240) << 3), varg1 >> 96, 1, address(function_selector >> 72));
                        goto 0xf22;
                    } else {
                        0x8a8(uint32(varg1 >> 64) << (uint8(function_selector >> 232) << 3), msg.value << (uint8(function_selector >> 240) << 3), varg1 >> 96, 0, address(function_selector >> 72));
                    }
                } else {
                    0x7fa(uint32(varg1 >> 64) << (uint8(function_selector >> 232) << 3), msg.value << (uint8(function_selector >> 240) << 3), varg1 >> 96, 1, address(function_selector >> 72));
                }
            } else {
                0x7fa(uint32(varg1 >> 64) << (uint8(function_selector >> 232) << 3), msg.value << (uint8(function_selector >> 240) << 3), varg1 >> 96, 0, address(function_selector >> 72));
            }
            exit;
        }
    } else {
        if (0 - uint8(function_selector >> 248)) {
            if (1 - uint8(function_selector >> 248)) {
                if (2 - uint8(function_selector >> 248)) {
                    0x8a8(function_selector << 184 >> 224 << (function_selector << 16 >> 248 << 3), msg.value << (function_selector << 8 >> 248 << 3), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1, function_selector << 24 >> 96);
                    goto 0xf01;
                } else {
                    0x8a8(function_selector << 184 >> 224 << (function_selector << 16 >> 248 << 3), msg.value << (function_selector << 8 >> 248 << 3), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0, function_selector << 24 >> 96);
                }
            } else {
                0x7fa(function_selector << 184 >> 224 << (function_selector << 16 >> 248 << 3), msg.value << (function_selector << 8 >> 248 << 3), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1, function_selector << 24 >> 96);
            }
        } else {
            0x7fa(function_selector << 184 >> 224 << (function_selector << 16 >> 248 << 3), msg.value << (function_selector << 8 >> 248 << 3), 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0, function_selector << 24 >> 96);
        }
        exit;
    }
}

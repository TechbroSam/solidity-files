// Decompiled by library.dedaub.com
// 2023.04.11 22:45 UTC
// Compiled using the solidity compiler version 0.6.9

pragma solidity ^0.8.0;


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _withdraw; // STORAGE[0x0]
uint256 _initialize; // STORAGE[0x1] bytes 0 to 0



function 0x31c1ade5() public nonPayable { 
    return 0x3035515fbf4b06f29022a9bc048a66ff51cfea15d173ffc668434520893ff664;
}

function withdraw() public nonPayable { 
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x6175746800000000000000000000000000000000000000000000000000000000));
    v0 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x568f47a5(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return address(keccak256(bytes1(0xff00000000000000000000000000000000000000000000000000000000000000), bytes20(this << 96), varg0, 0x3035515fbf4b06f29022a9bc048a66ff51cfea15d173ffc668434520893ff664));
}

function 0x25c7(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (uint8(v0) < varg0) {
        v2, v3 = address(keccak256(bytes1(0xff00000000000000000000000000000000000000000000000000000000000000), bytes20(this << 96), varg1 + uint8(v0), 0x3035515fbf4b06f29022a9bc048a66ff51cfea15d173ffc668434520893ff664)).call().gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v4 = new bytes[](RETURNDATASIZE());
            v3 = v4.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        v0 += 1;
    }
    return ;
}

function 0x265f(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 68) {
        MEM[MEM[64] + 68] = 0;
    }
    v2 = v3, v4, v5 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        v4 = v8.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = !MEM[v6];
        if (MEM[v6]) {
            require(v5 + MEM[v6] - v5 >= 32);
            v2 = MEM[v5];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error('DTransferHelper: TRANSFER_FAILED'));
    return ;
}

function addAdmin(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x6175746800000000000000000000000000000000000000000000000000000000));
    _withdraw[varg0] = 0x1 | bytes31(_withdraw[address(varg0)]);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 <= varg1, Error('ds-math-sub-underflow'));
    return varg1 - varg0;
}

function 0x27d3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3 > 0, Error('PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = varg2 > 0;
    if (v1) {
        v0 = v2 = varg1 > 0;
    }
    require(v0, Error('PancakeLibrary: INSUFFICIENT_LIQUIDITY'));
    v3 = 0x29d9(uint32(10000 - varg0), varg3);
    v4 = 0x29d9(varg1, v3);
    v5 = 0x29d9(10000, varg2);
    require(v5 + v3 >= v5, Error('ds-math-add-overflow'));
    assert(v5 + v3);
    return v4 / (v5 + v3);
}

function getBalanceOfToken(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(bool((address(varg0)).code.size));
    v0, v1 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function 0x29d9(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = !varg0;
    if (varg0) {
        v0 = v4 = varg1 * varg0;
        assert(varg0);
        v2 = v5 = v4 / varg0 == varg1;
    }
    require(v2, Error('ds-math-mul-overflow'));
    return v0;
}

function initialize(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(!_initialize, Error('wewewe'));
    _withdraw[varg0] = 0x1 | bytes31(_withdraw[address(varg0)]);
    _initialize = 1;
}

function 0xc9cf7837(uint256 varg0, uint256 varg1, address varg2, uint16 varg3, bool varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg2 == varg2);
    require(varg3 == varg3);
    require(varg4 == varg4);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x6175746800000000000000000000000000000000000000000000000000000000));
    if (varg4) {
        require(bool((address(varg2)).code.size));
        v0, /* address */ v1 = varg2.token0().gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        require(bool((address(varg2)).code.size));
        v2, /* address */ v1 = varg2.token1().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        goto 0x1a68B0x2eb;
    } else {
        require(bool((address(varg2)).code.size));
        v3, /* address */ v1 = varg2.token1().gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        require(bool((address(varg2)).code.size));
        v4, /* address */ v1 = varg2.token0().gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
    }
    0x265f(varg0, varg2, v1);
    require(bool((address(v1)).code.size));
    v5, /* address */ v1 = address(v1).balanceOf(address(this)).gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool((address(varg2)).code.size));
    v6, /* uint112 */ v7, /* uint112 */ v8, /* uint32 */ v9 = varg2.getReserves().gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v7 == uint112(v7));
    require(v8 == uint112(v8));
    require(v9 == uint32(v9));
    v1 = v10 = uint112(v8);
    v1 = v11 = uint112(v7);
    if (!varg4) {
    }
    v12 = v13 = 7194;
    v14 = v15 = address(v1);
    while (!bool(v14.code.size)) {
        v16, v17 = v14.balanceOf(varg2).gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v17 - v1 <= v17, Error('ds-math-sub-underflow'));
        goto {'0x1c1aB0x2eb', '0x1d20B0x2eb'};
        v1 = 0x27d3(uint16(v1), v1, v1, v17 - v1);
        if (v1) {
            v1 = v18 = 0;
        } else {
            v1 = v19 = 0;
        }
        v20 = v21 = 0;
        while (v20 < 0) {
            MEM[v20 + v22.data] = MEM[v20 + (MEM[64] + 32)];
            v20 += 32;
        }
        if (v20 > 0) {
        }
        require(bool((address(v1)).code.size));
        v23 = address(v1).swap(v1, v1, address(this), 0).gas(msg.gas);
        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v12 = v24 = 7456;
        v14 = v25 = address(v1);
        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[4 + MEM[64]] = address(this);
        v26 = 0x6400000000000000000000000000000000000000000000000000000000000000;
        goto 0x9210x1815B0x2eb;
        require(v17 - v1 >= v1, Error(0x6400000000000000000000000000000000000000000000000000000000000000));
        exit;
    }
    revert();
}

function 0xd26ccb2c() public nonPayable { 
    return 0x756e27583d895e5c06b7b9e96762c1e1653318585733ff6000526016600af300;
}

function transferAmount(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x6175746800000000000000000000000000000000000000000000000000000000));
    require(bool((address(varg0)).code.size));
    v0, /* bool */ v1 = varg0.transfer(msg.sender, varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == bool(v1));
    return bool(v1);
}

function 0xeabcf340(address varg0, address varg1, address varg2, uint256 varg3, uint16 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(varg4 == varg4);
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[96 + MEM[64]] = 0;
    MEM[128 + MEM[64]] = bool(0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x6175746800000000000000000000000000000000000000000000000000000000));
    require(bool((address(varg1)).code.size));
    v0, v1 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool((address(varg2)).code.size));
    v2, /* uint112 */ v3, /* uint112 */ v4, /* uint32 */ v5 = varg2.getReserves().gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v3 == uint112(v3));
    require(v4 == uint112(v4));
    require(v5 == uint32(v5));
    v6 = v7 = uint112(v4);
    v6 = v8 = uint112(v3);
    if (varg1 >= varg0) {
    }
    v9 = v10 = 0x27d3(varg4, v6, v6, varg3);
    if (varg1 < varg0) {
        v9 = v11 = 0;
    } else {
        v9 = v12 = 0;
    }
    0x265f(varg3, varg2, varg0);
    MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 36] = v9;
    MEM[MEM[64] + 36 + 32] = v9;
    MEM[MEM[64] + 36 + 64] = address(this);
    MEM[MEM[64] + 36 + 96] = 128;
    MEM[MEM[64] + 36 + 128] = 0;
    v13 = v14 = 0;
    while (v13 < 0) {
        MEM[v13 + (MEM[64] + 36 + 160)] = MEM[v13 + (MEM[64] + 32)];
        v13 += 32;
    }
    if (v13 > 0) {
        MEM[MEM[64] + 36 + 160 + 0] = 0;
    }
    require(bool((address(varg2)).code.size));
    v15 = varg2.call(MEM[(MEM[64]) len (160 + (MEM[64] + 36) - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool((address(varg1)).code.size));
    v16, v17 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    assert(v10);
    0x265f(v17 - v1, varg2, varg1);
    require(bool((address(varg1)).code.size));
    v18, v19 = varg1.balanceOf(varg2).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool((address(varg2)).code.size));
    v20, /* uint112 */ v21, /* uint112 */ v22, /* uint32 */ v23 = varg2.getReserves().gas(msg.gas);
    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v21 == uint112(v21));
    require(v22 == uint112(v22));
    require(v23 == uint32(v23));
    v24 = v25 = uint112(v22);
    v24 = v26 = uint112(v21);
    if (varg1 >= varg0) {
    }
    assert(v17 - v1);
    v27 = _SafeSub(v24, v19);
    v28 = v29 = 0x27d3(varg4, v24, v24, v27);
    if (varg1 < varg0) {
        v28 = v30 = 0;
    } else {
        v28 = v31 = 0;
    }
    v32 = v33 = 0;
    while (v32 < 0) {
        MEM[v32 + v34.data] = MEM[v32 + (MEM[64] + 32)];
        v32 += 32;
    }
    if (v32 > 0) {
    }
    require(bool((address(varg2)).code.size));
    v35 = varg2.swap(v28, v28, address(this), 0).gas(msg.gas);
    require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return 100 * (v10 - (v17 - v1)) / v10, 100 * (v17 - v1 - (v19 - v24)) / (v17 - v1), v17 - v1, v19, bool(1);
}

function () public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            ();
        }
    } else if (0xc4d66de8 > function_selector >> 224) {
        if (0x568f47a5 > function_selector >> 224) {
            if (0x31c1ade5 == function_selector >> 224) {
                0x31c1ade5();
            } else if (0x3ccfd60b == function_selector >> 224) {
                withdraw();
            }
        } else if (0x568f47a5 == function_selector >> 224) {
            0x568f47a5();
        } else if (0x70480275 == function_selector >> 224) {
            addAdmin(address);
        } else if (0x83786f8c == function_selector >> 224) {
            getBalanceOfToken(address);
        }
    } else if (0xd26ccb2c > function_selector >> 224) {
        if (0xc4d66de8 == function_selector >> 224) {
            initialize(address);
        } else if (0xc9cf7837 == function_selector >> 224) {
            0xc9cf7837();
        }
    } else if (0xd26ccb2c == function_selector >> 224) {
        0xd26ccb2c();
    } else if (0xd7081e03 == function_selector >> 224) {
        transferAmount(address,uint256);
    } else if (0xeabcf340 == function_selector >> 224) {
        0xeabcf340();
    }
    require(!msg.value);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x6175746800000000000000000000000000000000000000000000000000000000));
    v0 = new bytes[](msg.data.length);
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v0[msg.data.length] = 0;
    if (uint8(msg.data.length)) {
        if (1 != uint8(msg.data.length)) {
            if (2 != uint8(msg.data.length)) {
                if (3 != uint8(msg.data.length)) {
                    require(17 == uint8(msg.data.length), Error(0x6600000000000000000000000000000000000000000000000000000000000000));
                    selfdestruct(msg.sender);
                } else {
                    v1 = new bytes[](msg.data.length);
                    CALLDATACOPY(v1.data, 0, msg.data.length);
                    v1[msg.data.length] = 0;
                    v2 = MEM[37 + v1];
                    v3 = new bytes[](msg.data.length);
                    CALLDATACOPY(v3.data, 0, msg.data.length);
                    v3[msg.data.length] = 0;
                    MEM[0] = 0x756e27583d895e5c06b7b9e96762c1e1653318585733ff6000526016600af300;
                    v4 = v5 = MEM[69 + v3] >> 5;
                    while (v4) {
                        v6 = CREATE2(0, 0, 31, v2);
                        v7 = CREATE2(0, 0, 31, v2 + 1);
                        v8 = CREATE2(0, 0, 31, v2 + 2);
                        v9 = CREATE2(0, 0, 31, v2 + 3);
                        v10 = CREATE2(0, 0, 31, v2 + 4);
                        v11 = CREATE2(0, 0, 31, v2 + 5);
                        v12 = CREATE2(0, 0, 31, v2 + 6);
                        v13 = CREATE2(0, 0, 31, v2 + 7);
                        v14 = CREATE2(0, 0, 31, v2 + 8);
                        v15 = CREATE2(0, 0, 31, v2 + 9);
                        v16 = CREATE2(0, 0, 31, v2 + 10);
                        v17 = CREATE2(0, 0, 31, v2 + 11);
                        v18 = CREATE2(0, 0, 31, v2 + 12);
                        v19 = CREATE2(0, 0, 31, v2 + 13);
                        v20 = CREATE2(0, 0, 31, v2 + 14);
                        v21 = CREATE2(0, 0, 31, v2 + 15);
                        v22 = CREATE2(0, 0, 31, v2 + 16);
                        v23 = CREATE2(0, 0, 31, v2 + 17);
                        v24 = CREATE2(0, 0, 31, v2 + 18);
                        v25 = CREATE2(0, 0, 31, v2 + 19);
                        v26 = CREATE2(0, 0, 31, v2 + 20);
                        v27 = CREATE2(0, 0, 31, v2 + 21);
                        v28 = CREATE2(0, 0, 31, v2 + 22);
                        v29 = CREATE2(0, 0, 31, v2 + 23);
                        v30 = CREATE2(0, 0, 31, v2 + 24);
                        v31 = CREATE2(0, 0, 31, v2 + 25);
                        v32 = CREATE2(0, 0, 31, v2 + 26);
                        v33 = CREATE2(0, 0, 31, v2 + 27);
                        v34 = CREATE2(0, 0, 31, v2 + 28);
                        v35 = CREATE2(0, 0, 31, v2 + 29);
                        v36 = CREATE2(0, 0, 31, v2 + 30);
                        v37 = CREATE2(0, 0, 31, v2 + 31);
                        v2 += 32;
                        v4 += 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                    }
                    v38 = v39 = MEM[69 + v3] & 0x1f;
                    while (v38) {
                        v40 = CREATE2(0, 0, 31, v2);
                        v2 += 1;
                        v38 += 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                    }
                }
            } else {
                v41 = new bytes[](msg.data.length);
                CALLDATACOPY(v41.data, 0, msg.data.length);
                v41[msg.data.length] = 0;
                if (uint8(msg.data.length)) {
                    v42 = new bytes[](msg.data.length);
                    CALLDATACOPY(v42.data, 0, msg.data.length);
                    v42[msg.data.length] = 0;
                    0x25c7(uint8(msg.data.length), uint32(msg.data.length));
                    goto 0x32d9;
                }
            }
        } else {
            v43 = new bytes[](msg.data.length);
            CALLDATACOPY(v43.data, 0, msg.data.length);
            v43[msg.data.length] = 0;
            if (uint64(MEM[144 + v43])) {
                require(block.number > uint64(MEM[144 + v43]), Error(0x3a4f000000000000000000000000000000000000000000000000000000000000));
                require(block.blockhash(uint64(MEM[144 + v43])), Error(0x3a58000000000000000000000000000000000000000000000000000000000000));
            }
            if (address(MEM[124 + v43])) {
                require((address(MEM[124 + v43])).balance < uint96(MEM[136 + v43]), Error(0x7100000000000000000000000000000000000000000000000000000000000000));
            }
            if (1 == uint8(MEM[104 + v43])) {
                require(bool((address(MEM[69 + v43])).code.size));
                v44, /* address */ v45 = address(MEM[69 + v43]).token0().gas(msg.gas);
                require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v45 == address(v45));
                require(bool((address(MEM[69 + v43])).code.size));
                v46, /* address */ v47 = address(MEM[69 + v43]).token1().gas(msg.gas);
                require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v47 == address(v47));
                goto 0xe9fB0x189;
            } else {
                require(bool((address(MEM[69 + v43])).code.size));
                v48, /* address */ v45 = address(MEM[69 + v43]).token1().gas(msg.gas);
                require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v45 == address(v45));
                require(bool((address(MEM[69 + v43])).code.size));
                v49, /* address */ v47 = address(MEM[69 + v43]).token0().gas(msg.gas);
                require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v47 == address(v47));
            }
            require(bool((address(v45)).code.size));
            v50, v51 = address(v45).balanceOf(address(this)).gas(msg.gas);
            require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v51 < MEM[101 + v43], Error(0x7700000000000000000000000000000000000000000000000000000000000000));
            require(bool((address(MEM[69 + v43])).code.size));
            v52, /* uint112 */ v53, /* uint112 */ v54, /* uint32 */ v55 = address(MEM[69 + v43]).getReserves().gas(msg.gas);
            require(bool(v52), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v53 == uint112(v53));
            require(v54 == uint112(v54));
            require(v55 == uint32(v55));
            v56 = v57 = uint112(v54);
            v56 = v58 = uint112(v53);
            if (address(v45) >= address(v47)) {
            }
            v59 = MEM[37 + v43];
            require(v59 > 0, Error('PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'));
            v60 = v61 = v56 > 0;
            if (v61) {
                v60 = v56 > 0;
            }
            require(v60, Error('PancakeLibrary: INSUFFICIENT_LIQUIDITY'));
            v62 = 0x29d9(v59, v56);
            v63 = 0x29d9(10000, v62);
            v64 = _SafeSub(v59, v56);
            v65 = 0x29d9(uint32(10000 - uint16(MEM[103 + v43])), v64);
            assert(v65);
            require(v63 / v65 + 1 >= v63 / v65, Error('ds-math-add-overflow'));
            require(v63 / v65 + 1 <= uint96(MEM[49 + v43]), Error(0x6400000000000000000000000000000000000000000000000000000000000000));
            if (address(v47) < address(v45)) {
                v59 = v66 = 0;
            } else {
                v59 = v67 = 0;
            }
            0x265f(v63 / v65 + 1, MEM[69 + v43], v47);
            MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 36] = v59;
            MEM[MEM[64] + 36 + 32] = v59;
            MEM[MEM[64] + 36 + 64] = address(this);
            MEM[MEM[64] + 36 + 96] = 128;
            MEM[MEM[64] + 36 + 128] = 0;
            v68 = v69 = 0;
            while (v68 < 0) {
                MEM[v68 + (MEM[64] + 36 + 160)] = MEM[v68 + (MEM[64] + 32)];
                v68 += 32;
            }
            if (v68 > 0) {
                MEM[MEM[64] + 36 + 160 + 0] = 0;
            }
            require(bool((address(MEM[69 + v43])).code.size));
            v70 = address(MEM[69 + v43]).call(MEM[(MEM[64]) len (160 + (MEM[64] + 36) - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
            require(bool(v70), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    } else {
        v71 = v72 = 12945;
        v71 = v73 = new bytes[](msg.data.length);
        CALLDATACOPY(v73.data, 0, msg.data.length);
        v73[msg.data.length] = 0;
        if (uint64(MEM[149 + v73])) {
            require(block.number > uint64(MEM[149 + v73]), Error(0x3a4f000000000000000000000000000000000000000000000000000000000000));
            require(block.blockhash(uint64(MEM[149 + v73])), Error(0x3a58000000000000000000000000000000000000000000000000000000000000));
        }
        if (address(MEM[124 + v73])) {
            require((address(MEM[124 + v73])).balance == uint96(MEM[136 + v73]), Error(0x7100000000000000000000000000000000000000000000000000000000000000));
        }
        if (0x7fffffffffffffffffffffffffffffffffffffff >= address(MEM[69 + v73])) {
            v74 = v75 = MEM[69 + v73] + 0x7fffffffffffffffffffffffffffffffffffffff;
        } else {
            v74 = v76 = MEM[69 + v73] - 0x7fffffffffffffffffffffffffffffffffffffff;
        }
        if (1 == uint8(MEM[104 + v73])) {
            require(bool((address(v77)).code.size));
            v78, /* address */ v71 = address(v77).token0().gas(msg.gas);
            require(bool(v78), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v71 == address(v71));
            require(bool((address(v77)).code.size));
            v79, /* address */ v74 = address(v77).token1().gas(msg.gas);
            require(bool(v79), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v74 == address(v74));
            goto 0x6e1B0x170;
        } else {
            require(bool((address(v77)).code.size));
            v80, /* address */ v71 = address(v77).token1().gas(msg.gas);
            require(bool(v80), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v71 == address(v71));
            require(bool((address(v77)).code.size));
            v81, /* address */ v74 = address(v77).token0().gas(msg.gas);
            require(bool(v81), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v74 == address(v74));
        }
        require(bool((address(v77)).code.size));
        v82, /* uint112 */ v83, /* uint112 */ v84, /* uint32 */ v85 = address(v77).getReserves().gas(msg.gas);
        require(bool(v82), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v83 == uint112(v83));
        require(v84 == uint112(v84));
        require(v85 == uint32(v85));
        v71 = v86 = uint112(v84);
        v71 = v87 = uint112(v83);
        if (address(v71) >= address(v74)) {
        }
        v71 = v88 = uint8(MEM[137 + v73]);
        v71 = v89 = uint32(MEM[141 + v73]);
        if (v71 <= MEM[101 + v73]) {
            0x265f(MEM[37 + v73], v77, v71);
            require(bool((address(v74)).code.size));
            v90, /* address */ v71 = address(v74).balanceOf(address(this)).gas(msg.gas);
            require(bool(v90), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            v91 = v92 = 0;
            v93 = v94 = 2429;
            v95 = v96 = address(v71);
            while (!bool(v95.code.size)) {
                v97, v98 = v95.balanceOf(address(v77)).gas(msg.gas);
                require(bool(v97), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v74 = v99 = v98 - v71;
                require(v99 <= v98, Error('ds-math-sub-underflow'));
                goto {'0xacdB0x170', '0x97dB0x170'};
                v71 = 0x27d3(uint16(MEM[103 + v71]), v71, v71, v99);
                if (address(v71) < address(v74)) {
                    v71 = v100 = 0;
                } else {
                    v71 = v101 = 0;
                }
                v102 = v103 = 0;
                while (v102 < 0) {
                    MEM[v102 + v104.data] = MEM[v102 + (MEM[64] + 32)];
                    v102 += 32;
                }
                if (v102 > 0) {
                }
                require(bool((address(v74)).code.size));
                v105 = address(v74).swap(v71, v71, address(this), 0).gas(msg.gas);
                require(bool(v105), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v91 = v106 = uint96(MEM[49 + v71]);
                v93 = v107 = 2765;
                v95 = v108 = address(v74);
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = address(this);
                v109 = 0x6400000000000000000000000000000000000000000000000000000000000000;
                goto 0x9210x364B0x170;
                require(v99 >= v91, Error(0x6400000000000000000000000000000000000000000000000000000000000000));
                if (v71) {
                    0x25c7(v71, v71);
                }
            }
            revert();
        } else if (v88) {
            0x25c7(1, v89);
        }
    }
}

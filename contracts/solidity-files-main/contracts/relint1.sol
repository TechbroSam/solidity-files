// Decompiled by library.dedaub.com
// 2023.06.30 02:03 UTC
// Compiled using the solidity compiler version 0.6.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _withdraw; // STORAGE[0x0]
mapping (uint256 => uint256) ___function_selector__; // STORAGE[0x1]
uint256 _initialize; // STORAGE[0x2] bytes 0 to 0



function 0x2153(uint256 varg0) private { 
    if (MEM[varg0] >= 4) {
        if (bytes4(MEM[varg0 + 32]) != 0x8c379a000000000000000000000000000000000000000000000000000000000) {
            v0 = MEM[varg0] << 1;
            require(v0 <= 0xffffffffffffffff);
            v1 = new bytes[](v0);
            if (v0) {
                CALLDATACOPY(v1.data, msg.data.length, v0);
            }
            v2 = v3 = 0;
            while (v2 < MEM[varg0]) {
                assert(v2 < MEM[varg0]);
                assert(v4.length);
                assert((MEM[32 + (v2 + varg0)] >> 248) / v4.length < v4.length);
                assert(v2 << 1 < v1.length);
                MEM8[32 + (v2 << 1) + v1] = (byte(bytes1(MEM[32 + (MEM[32 + (v2 + varg0)] >> 248) / v4.length + '0123456789abcdef'] >> 248 << 248), 0x0)) & 0xFF;
                assert(v2 < MEM[varg0]);
                assert(v4.length);
                assert((MEM[32 + (v2 + varg0)] >> 248) % v4.length < v4.length);
                assert(1 + (v2 << 1) < v1.length);
                MEM8[33 + (v2 << 1) + v1] = (byte(bytes1(MEM[32 + (MEM[32 + (v2 + varg0)] >> 248) % v4.length + '0123456789abcdef'] >> 248 << 248), 0x0)) & 0xFF;
                v2 += 1;
            }
            MEM[32 + MEM[64]] = 0x3078000000000000000000000000000000000000000000000000000000000000;
            v5 = v6 = 0;
            while (v5 < v1.length) {
                MEM[v5 + (32 + MEM[64] + 2)] = v1[v5];
                v5 += 32;
            }
            if (v5 > v1.length) {
                MEM[32 + MEM[64] + 2 + v1.length] = 0;
            }
            MEM[32 + MEM[64]] = 'error: ';
            v7 = v8 = 0;
            while (v7 < 2 + (v1.length + (32 + MEM[64])) - MEM[64] - 32) {
                MEM[v7 + (32 + MEM[64] + 7)] = MEM[v7 + (MEM[64] + 32)];
                v7 += 32;
            }
            if (v7 > 2 + (v1.length + (32 + MEM[64])) - MEM[64] - 32) {
                MEM[32 + MEM[64] + 7 + (2 + (v1.length + (32 + MEM[64])) - MEM[64] - 32)] = 0;
            }
            MEM[MEM[64]] = 7 + (2 + (v1.length + (32 + MEM[64])) - MEM[64] - 32 + (32 + MEM[64])) - MEM[64] - 32;
            MEM[64] = 7 + (2 + (v1.length + (32 + MEM[64])) - MEM[64] - 32 + (32 + MEM[64]));
            return MEM[64];
        } else {
            v9 = 32 + (varg0 + 4) + MEM[varg0 + 4];
            require(v9 - (32 + (varg0 + 4)) >= 32);
            require(MEM[32 + (varg0 + 4)] <= 0xffffffffffffffff);
            require(32 + (varg0 + 4) + MEM[32 + (varg0 + 4)] + 31 < v9);
            v10 = MEM[32 + (varg0 + 4) + MEM[32 + (varg0 + 4)]];
            require(v10 <= 0xffffffffffffffff);
            v11 = new bytes[](v10);
            require(!((v11 + ((v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) < v11) | (v11 + ((v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) > 0xffffffffffffffff)));
            require(32 + (varg0 + 4) + MEM[32 + (varg0 + 4)] + v10 + 32 <= v9);
            v12 = v13 = 0;
            while (v12 < v10) {
                v11[v12] = MEM[v12 + (32 + (varg0 + 4) + MEM[32 + (varg0 + 4)] + 32)];
                v12 += 32;
            }
            if (v12 > v10) {
                v11[v10] = 0;
            }
            return v11;
        }
    } else {
        return 'empty';
    }
}

function 0x3297(uint256 varg0, uint256 varg1) private { 
    if (varg0 <= 80) {
        return 96;
    } else {
        v0, v1 = _SafeSub(varg1, varg0, 79, varg0);
        v2 = 0;
        require(v1 + v0 - v1 >= 32, v2, v2);
        require(msg.data[v1] <= 0xffffffffffffffff, v2, v2);
        require(v1 + msg.data[v1] + 31 < v1 + v0, v2, v2);
        require(msg.data[v1 + msg.data[v1]] <= 0xffffffffffffffff);
        v3 = new uint256[](msg.data[v1 + msg.data[v1]]);
        require(!((v3 + ((msg.data[v1 + msg.data[v1]] << 5) + 32) < v3) | (v3 + ((msg.data[v1 + msg.data[v1]] << 5) + 32) > 0xffffffffffffffff)));
        v4 = v5 = v3.data;
        v6 = v7 = 32 + (v1 + msg.data[v1]);
        require(v1 + v0 >= 32 + (v1 + msg.data[v1] + (msg.data[v1 + msg.data[v1]] << 7)), v2, v2);
        while (v2 < msg.data[v1 + msg.data[v1]]) {
            require(v1 + v0 - v6 >= 128);
            require(!((MEM[64] + 128 < MEM[64]) | (MEM[64] + 128 > 0xffffffffffffffff)));
            MEM[64] = MEM[64] + 128;
            require(msg.data[v6] == address(msg.data[v6]));
            MEM[MEM[64]] = msg.data[v6];
            require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
            MEM[MEM[64] + 32] = msg.data[v6 + 32];
            MEM[MEM[64] + 64] = msg.data[64 + v6];
            require(msg.data[v6 + 96] == bool(msg.data[v6 + 96]));
            MEM[MEM[64] + 96] = msg.data[v6 + 96];
            MEM[v4] = MEM[64];
            v2 += 1;
            v4 += 32;
            v6 += 128;
        }
        return v3;
    }
}

function 0x32c7(uint256 varg0, address varg1, address varg2) private { 
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

function 0x3407(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3 > 0, Error('PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'));
    v0 = varg2 > 0;
    if (v0) {
        v0 = v1 = varg1 > 0;
    }
    require(v0, Error('PancakeLibrary: INSUFFICIENT_LIQUIDITY'));
    v2 = 0x3950(uint32(10000 - varg0), varg3);
    v3 = 0x3950(varg1, v2);
    v4 = 0x3950(10000, varg2);
    v5 = _SafeAdd(v2, v4);
    assert(v5);
    return v3 / v5;
}

function 0x3528(uint256 varg0) private { 
    if (address(MEM[36 + varg0]) <= 0x7fffffffffffffffffffffffffffffffffffffff) {
        return 0x7fffffffffffffffffffffffffffffffffffffff + MEM[36 + varg0];
    } else {
        return MEM[36 + varg0] - 0x7fffffffffffffffffffffffffffffffffffffff;
    }
}

function 0x35be(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (uint8(v0) < varg0) {
        v2, v3 = address(keccak256(bytes1(0xff00000000000000000000000000000000000000000000000000000000000000), bytes20(this << 96), varg1 + uint8(v0), 0x8eed5e6a25d4bc560955a8710d14f5d1d673fe3c8063a7bc2cc54c85ab7509b6)).call().gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v4 = new bytes[](RETURNDATASIZE());
            v3 = v4.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        v0 += 1;
    }
    return ;
}

function 0x36ff(uint256 varg0) private { 
    assert(uint8(MEM[145 + varg0]) <= 7);
    return uint8(MEM[145 + varg0]);
}

function 0x371a(uint256 varg0, uint256 varg1) private { 
    v0 = MEM[131 + varg1];
    if (!address(v0)) {
        if (varg0) {
            return 0x1000276a4;
        } else {
            v0 = v1 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
    }
    return v0;
}

function 0x3791(uint256 varg0, uint256 varg1) private { 
    if (varg0 <= 100) {
        return 96;
    } else {
        v0, v1 = _SafeSub(varg1, varg0, 99, varg0);
        v2 = 0;
        require(v1 + v0 - v1 >= 32, v2, v2);
        require(msg.data[v1] <= 0xffffffffffffffff, v2, v2);
        require(v1 + msg.data[v1] + 31 < v1 + v0, v2, v2);
        require(msg.data[v1 + msg.data[v1]] <= 0xffffffffffffffff);
        v3 = new uint256[](msg.data[v1 + msg.data[v1]]);
        require(!((v3 + ((msg.data[v1 + msg.data[v1]] << 5) + 32) < v3) | (v3 + ((msg.data[v1 + msg.data[v1]] << 5) + 32) > 0xffffffffffffffff)));
        v4 = v5 = v3.data;
        v6 = v7 = 32 + (v1 + msg.data[v1]);
        require(v1 + v0 >= 32 + (v1 + msg.data[v1] + (msg.data[v1 + msg.data[v1]] << 7)), v2, v2);
        while (v2 < msg.data[v1 + msg.data[v1]]) {
            require(v1 + v0 - v6 >= 128);
            require(!((MEM[64] + 128 < MEM[64]) | (MEM[64] + 128 > 0xffffffffffffffff)));
            MEM[64] = MEM[64] + 128;
            require(msg.data[v6] == address(msg.data[v6]));
            MEM[MEM[64]] = msg.data[v6];
            require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
            MEM[MEM[64] + 32] = msg.data[v6 + 32];
            MEM[MEM[64] + 64] = msg.data[64 + v6];
            require(msg.data[v6 + 96] == bool(msg.data[v6 + 96]));
            MEM[MEM[64] + 96] = msg.data[v6 + 96];
            MEM[v4] = MEM[64];
            v2 += 1;
            v4 += 32;
            v6 += 128;
        }
        return v3;
    }
}

function 0x3950(uint256 varg0, uint256 varg1) private { 
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

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg1 + varg0 >= varg1, Error('ds-math-add-overflow'));
    return varg1 + varg0;
}

function 0x1c48ee4e(address varg0, address varg1, uint256 varg2, uint16 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg3 == varg3);
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[96 + MEM[64]] = 0;
    MEM[128 + MEM[64]] = bool(0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x61757468));
    require(bool((address(varg0)).code.size));
    v0, v1 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool((address(varg1)).code.size));
    v2, /* uint112 */ v3, /* uint112 */ v4, /* uint32 */ v5 = varg1.getReserves().gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v3 == uint112(v3));
    require(v4 == uint112(v4));
    require(v5 == uint32(v5));
    v6 = v7 = uint112(v3);
    v6 = v8 = uint112(v4);
    if (varg0 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) {
    }
    v9 = v10 = 0x3407(varg3, v6, v6, varg2);
    if (varg0 < 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) {
        v9 = v11 = 0;
    } else {
        v9 = v12 = 0;
    }
    0x32c7(varg2, varg1, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c);
    MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 36] = v9;
    MEM[MEM[64] + 36 + 32] = v9;
    MEM[MEM[64] + 36 + 64] = address(this);
    MEM[MEM[64] + 36 + 96] = 128;
    MEM[MEM[64] + 36 + 128] = 0;
    v13 = v14 = 0;
    while (v13 < 0) {
        MEM[v13 + (MEM[64] + 36 + 128 + 32)] = MEM[v13 + (MEM[64] + 32)];
        v13 += 32;
    }
    if (v13 > 0) {
        MEM[MEM[64] + 36 + 128 + 32 + 0] = 0;
    }
    require(bool((address(varg1)).code.size));
    v15 = varg1.call(MEM[(MEM[64]) len (32 + (MEM[64] + 36 + 128) - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool((address(varg0)).code.size));
    v16, v17 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v10 >= v17 - v1) {
        assert(v10);
        MEM[MEM[64]] = 100 * (v10 - (v17 - v1)) / v10;
    } else {
        MEM[MEM[64]] = 0;
    }
    0x32c7(v17 - v1, varg1, varg0);
    require(bool((address(varg0)).code.size));
    v18, v19 = varg0.balanceOf(varg1).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool((address(varg1)).code.size));
    v20, /* uint112 */ v21, /* uint112 */ v22, /* uint32 */ v23 = varg1.getReserves().gas(msg.gas);
    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v21 == uint112(v21));
    require(v22 == uint112(v22));
    require(v23 == uint32(v23));
    v24 = v25 = uint112(v21);
    v24 = v26 = uint112(v22);
    if (varg0 >= 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) {
    }
    if (v19 - v24 <= v17 - v1) {
        assert(v17 - v1);
        MEM[MEM[64] + 32] = (v17 - v1 - (v19 - v24)) * 100 / (v17 - v1);
    } else {
        MEM[MEM[64] + 32] = 0;
    }
    require(v19 - v24 <= v19, Error('ds-math-sub-underflow'));
    v27 = v28 = 0x3407(varg3, v24, v24, v19 - v24);
    if (varg0 < 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) {
        v27 = v29 = 0;
    } else {
        v27 = v30 = 0;
    }
    v31 = v32 = 0;
    while (v31 < 0) {
        MEM[v31 + v33.data] = MEM[v31 + (MEM[64] + 32)];
        v31 += 32;
    }
    if (v31 > 0) {
    }
    require(bool((address(varg1)).code.size));
    v34 = varg1.swap(v27, v27, address(this), 0).gas(msg.gas);
    require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return MEM[MEM[64]], MEM[MEM[64] + 32], v17 - v1, v19, bool(1);
}

function 0x31c1ade5() public nonPayable { 
    return 0x8eed5e6a25d4bc560955a8710d14f5d1d673fe3c8063a7bc2cc54c85ab7509b6;
}

function withdraw() public nonPayable { 
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x61757468));
    v0 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4bdc99af(uint32 varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x61757468));
    ___function_selector__[varg0] = varg1 | bytes12(___function_selector__[uint32(varg0)]);
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x568f47a5(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return address(keccak256(bytes1(0xff00000000000000000000000000000000000000000000000000000000000000), bytes20(this << 96), varg0, 0x8eed5e6a25d4bc560955a8710d14f5d1d673fe3c8063a7bc2cc54c85ab7509b6));
}

function addAdmin(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x61757468));
    _withdraw[varg0] = 0x1 | bytes31(_withdraw[address(varg0)]);
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

function WETH() public nonPayable { 
    return address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c);
}

function initialize(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(!_initialize, Error('wewewe'));
    _withdraw[varg0] = 0x1 | bytes31(_withdraw[address(varg0)]);
    _initialize = 1;
}

function 0xd26ccb2c() public nonPayable { 
    return 0x756e91c4f781762b78ca44e68ff1ed84ae3318585733ff6000526016600af300;
}

function transferAmount(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x61757468));
    require(bool((address(varg0)).code.size));
    v0, /* bool */ v1 = varg0.transfer(msg.sender, varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == bool(v1));
    return bool(v1);
}

function 0xe4a96c77(address varg0, address varg1, uint256 varg2, uint24 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg3 == varg3);
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[96 + MEM[64]] = 0;
    MEM[128 + MEM[64]] = bool(0);
    require(1 == bool(uint8(_withdraw[msg.sender])), Error(0x61757468));
    require(bool((address(varg0)).code.size));
    v0, v1 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < varg0) {
        v2 = v3 = 0x1000276a4;
    } else {
        v2 = v4 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v5 = new array[](96);
    v6 = v7 = 0;
    while (v6 < 96) {
        MEM[v6 + v5.data] = MEM[v6 + (MEM[64] + 32)];
        v6 += 32;
    }
    if (v6 > 96) {
        MEM[v5.data + 96] = 0;
    }
    require(bool((address(varg1)).code.size));
    v8, v9, v10 = varg1.swap(address(this), bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < varg0), varg2, address(v2), v5, v11, address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), varg0, varg3).gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (v9 < 0) {
        v12 = v13 = 0 - v9;
    } else {
        v12 = v14 = 0 - v10;
    }
    require(bool((address(varg0)).code.size));
    v15, v16 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v12 >= v16 - v1) {
        assert(v12);
        MEM[MEM[64]] = 100 * (v12 - (v16 - v1)) / v12;
    } else {
        MEM[MEM[64]] = 0;
    }
    require(bool((address(varg0)).code.size));
    v17, v18 = varg0.balanceOf(varg1).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c > varg0) {
        v19 = v20 = 0x1000276a4;
    } else {
        v19 = v21 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v22 = new array[](96);
    v23 = v24 = 0;
    while (v23 < 96) {
        MEM[v23 + v22.data] = MEM[v23 + (MEM[64] + 32)];
        v23 += 32;
    }
    if (v23 > 96) {
        MEM[v22.data + 96] = 0;
    }
    require(bool((address(varg1)).code.size));
    v25, v26, v27 = varg1.swap(address(this), bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c > varg0), v16 - v1, address(v19), v22, v11, varg0, address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), varg3).gas(msg.gas);
    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    require(bool((address(varg0)).code.size));
    v28, v29 = varg0.balanceOf(varg1).gas(msg.gas);
    require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v29 - v18 <= v16 - v1) {
        assert(v16 - v1);
        MEM[MEM[64] + 32] = (v16 - v1 - (v29 - v18)) * 100 / (v16 - v1);
    } else {
        MEM[MEM[64] + 32] = 0;
    }
    return MEM[MEM[64]], MEM[MEM[64] + 32], v16 - v1, v29, bool(1);
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
    } else if (0x83786f8c > function_selector >> 224) {
        if (0x4bdc99af > function_selector >> 224) {
            if (0x1c48ee4e == function_selector >> 224) {
                0x1c48ee4e();
            } else if (0x31c1ade5 == function_selector >> 224) {
                0x31c1ade5();
            } else if (0x3ccfd60b == function_selector >> 224) {
                withdraw();
            }
        } else if (0x4bdc99af == function_selector >> 224) {
            0x4bdc99af();
        } else if (0x568f47a5 == function_selector >> 224) {
            0x568f47a5();
        } else if (0x70480275 == function_selector >> 224) {
            addAdmin(address);
        }
    } else if (0xd26ccb2c > function_selector >> 224) {
        if (0x83786f8c == function_selector >> 224) {
            getBalanceOfToken(address);
        } else if (0xad5c4648 == function_selector >> 224) {
            WETH();
        } else if (0xc4d66de8 == function_selector >> 224) {
            initialize(address);
        }
    } else if (0xd26ccb2c == function_selector >> 224) {
        0xd26ccb2c();
    } else if (0xd7081e03 == function_selector >> 224) {
        transferAmount(address,uint256);
    } else if (0xe4a96c77 == function_selector >> 224) {
        0xe4a96c77();
    }
    require(!msg.value);
    v0 = new bytes[](msg.data.length);
    CALLDATACOPY(v0.data, 0, msg.data.length);
    v0[msg.data.length] = 0;
    if (uint32(msg.data.length)) {
        if (1 != uint32(msg.data.length)) {
            if (2 != uint32(msg.data.length)) {
                if (3 != uint32(msg.data.length)) {
                    if (4 != uint32(msg.data.length)) {
                        if (5 != uint32(msg.data.length)) {
                            if (17 != uint32(msg.data.length)) {
                                require(address(___function_selector__[uint32(msg.data.length)]), Error(102));
                                require(1 == bool(uint8(_withdraw[address(tx.origin)])), Error(28276));
                                MEM[msg.data.length + MEM[64]] = 0;
                                v1, v2 = address(___function_selector__[uint32(msg.data.length)]).delegatecall(MEM[(MEM[64]) len (msg.data.length + MEM[64] - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v3 = v4 = 96;
                                } else {
                                    v3 = v5 = new bytes[](RETURNDATASIZE());
                                    v2 = v5.data;
                                    RETURNDATACOPY(v2, 0, RETURNDATASIZE());
                                }
                                if (!v1) {
                                    v6 = 0x2153(v3);
                                    v7 = new array[](v6.length);
                                    v8 = v9 = 0;
                                    while (v8 < v6.length) {
                                        v7[v8] = v6[v8];
                                        v8 += 32;
                                    }
                                    if (v8 > v6.length) {
                                        v7[v6.length] = 0;
                                    }
                                    revert(Error(v7));
                                }
                            } else {
                                require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
                                selfdestruct(msg.sender);
                            }
                        } else {
                            require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
                            v10 = new bytes[](msg.data.length);
                            CALLDATACOPY(v10.data, 0, msg.data.length);
                            v10[msg.data.length] = 0;
                            if (uint64(MEM[99 + v10])) {
                                require(block.number > uint64(MEM[99 + v10]), Error(14927));
                                require(block.blockhash(uint64(MEM[99 + v10])), Error(14936));
                            }
                            require(bool((address(MEM[88 + v10])).code.size));
                            v11, v12 = address(MEM[88 + v10]).balanceOf(address(this)).gas(msg.gas);
                            require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(v12 > 1, Error(99));
                            if (address(MEM[56 + v10])) {
                                require((address(MEM[56 + v10])).balance < uint96(MEM[68 + v10]), Error(113));
                            }
                            v13 = 0x3791(msg.data.length, 0);
                            v14 = v15 = 0;
                            while (v14 < v13.length) {
                                assert(v14 < v13.length);
                                assert(v14 < v13.length);
                                require(bool((address(MEM[0 + v13[v14 << 5][v14]])).code.size));
                                v16, v17 = address(MEM[0 + v13[v14 << 5][v14]]).balanceOf(address(MEM[32 + v13[v14 << 5][v14]])).gas(msg.gas);
                                require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                assert(v14 < v13.length);
                                if (MEM[96 + v13[v14 << 5][v14]]) {
                                    assert(v14 < v13.length);
                                    v18 = v17 >= MEM[64 + v13[v14 << 5][v14]];
                                } else {
                                    assert(v14 < v13.length);
                                    v18 = v19 = v17 <= MEM[64 + v13[v14 << 5][v14]];
                                }
                                require(v18, Error(97));
                                v14 += 1;
                            }
                            require(bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.code.size));
                            v20, v21 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address(this)).gas(msg.gas);
                            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            if (0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c > address(MEM[88 + v10])) {
                                v22 = v23 = 0x1000276a4;
                            } else {
                                v22 = v24 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            }
                            v25 = new array[](96);
                            v26 = v27 = 0;
                            while (v26 < 96) {
                                MEM[v26 + v25.data] = MEM[v26 + (MEM[64] + 32)];
                                v26 += 32;
                            }
                            if (v26 > 96) {
                                MEM[v25.data + 96] = 0;
                            }
                            require(bool((address(MEM[36 + v10])).code.size));
                            v28, v29, v30 = address(MEM[36 + v10]).swap(address(this), bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c > address(MEM[88 + v10])), v12 - 1, address(v22), v25, v31, address(MEM[88 + v10]), address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), uint24(MEM[91 + v10])).gas(msg.gas);
                            require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                            require(bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.code.size));
                            v32, v33 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address(this)).gas(msg.gas);
                            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            v34 = v35 = v33 > v21;
                            if (v35) {
                                v34 = v33 - v21 > uint96(msg.data.length);
                            }
                            require(v34, Error(111));
                        }
                    } else {
                        require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
                        v36 = new bytes[](msg.data.length);
                        CALLDATACOPY(v36.data, 0, msg.data.length);
                        v36[msg.data.length] = 0;
                        if (address(MEM[165 + v36])) {
                            require(address(MEM[165 + v36]) == block.coinbase, Error(0x636b6c));
                        }
                        if (uint64(MEM[173 + v36])) {
                            require(block.timestamp <= uint64(MEM[173 + v36]), Error(0x646b6c));
                        }
                        if (uint64(MEM[144 + v36])) {
                            require(block.number > uint64(MEM[144 + v36]), Error(14927));
                            require(block.blockhash(uint64(MEM[144 + v36])), Error(14936));
                        }
                        if (address(MEM[56 + v36])) {
                            require((address(MEM[56 + v36])).balance == uint96(MEM[68 + v36]), Error(113));
                        }
                        if (0x7fffffffffffffffffffffffffffffffffffffff >= address(MEM[88 + v36])) {
                            v37 = MEM[88 + v36] + 0x7fffffffffffffffffffffffffffffffffffffff;
                        } else {
                            v37 = v38 = MEM[88 + v36] - 0x7fffffffffffffffffffffffffffffffffffffff;
                        }
                        if (0x7fffffffffffffffffffffffffffffffffffffff >= address(MEM[36 + v36])) {
                            v39 = MEM[36 + v36] + 0x7fffffffffffffffffffffffffffffffffffffff;
                        } else {
                            v39 = v40 = MEM[36 + v36] - 0x7fffffffffffffffffffffffffffffffffffffff;
                        }
                        if (address(MEM[111 + v36])) {
                            v41 = 0x36ff(v36);
                            assert(v41 <= 7);
                            if (v41 != 7) {
                                assert(v41 <= 7);
                                if (v41 != 6) {
                                    require(bool((address(v39)).code.size));
                                    v42, /* address */ v43, /* int24 */ v44, /* uint16 */ v45, /* uint16 */ v46, /* uint16 */ v47, /* uint8 */ v48, /* bool */ v49 = address(v39).slot0().gas(msg.gas);
                                    require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 224);
                                    require(!((MEM[64] + 224 < MEM[64]) | (MEM[64] + 224 > 0xffffffffffffffff)));
                                    require(v43 == address(v43));
                                    require(v44 == int24(v44));
                                    MEM[MEM[64] + 32] = v44;
                                    require(v45 == uint16(v45));
                                    MEM[MEM[64] + 64] = v45;
                                    require(v46 == uint16(v46));
                                    MEM[MEM[64] + 96] = v46;
                                    require(v47 == uint16(v47));
                                    MEM[MEM[64] + 128] = v47;
                                    require(v48 == uint8(v48));
                                    MEM[MEM[64] + 160] = v48;
                                    require(v49 == bool(v49));
                                    MEM[MEM[64] + 192] = v49;
                                } else {
                                    require(bool((address(v39)).code.size));
                                    v50, /* address */ v51, /* int24 */ v52, /* int24 */ v53, /* bool */ v54 = address(v39).getPoolState().gas(msg.gas);
                                    require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 128);
                                    require(v51 == address(v51));
                                    require(v52 == int24(v52));
                                    require(v53 == int24(v53));
                                    require(v54 == bool(v54));
                                }
                            } else {
                                require(bool((address(v39)).code.size));
                                v55, /* address */ v56, /* int24 */ v57, /* uint16 */ v58, /* uint16 */ v59, /* uint16 */ v60, /* uint16 */ v61, /* bool */ v62 = address(v39).globalState().gas(msg.gas);
                                require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 224);
                                require(!((MEM[64] + 224 < MEM[64]) | (MEM[64] + 224 > 0xffffffffffffffff)));
                                require(v56 == address(v56));
                                require(v57 == int24(v57));
                                MEM[MEM[64] + 32] = v57;
                                require(v58 == uint16(v58));
                                MEM[MEM[64] + 64] = v58;
                                require(v59 == uint16(v59));
                                MEM[MEM[64] + 96] = v59;
                                require(v60 == uint16(v60));
                                MEM[MEM[64] + 128] = v60;
                                require(v61 == uint16(v61));
                                MEM[MEM[64] + 160] = v61;
                                require(v62 == bool(v62));
                                MEM[MEM[64] + 192] = v62;
                            }
                            if (0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < address(v37)) {
                                v63 = v64 = address(MEM[111 + v36]) < address(v51);
                            } else {
                                v63 = address(MEM[111 + v36]) > address(v51);
                            }
                            if (!v63) {
                                if (uint8(MEM[132 + v36])) {
                                    0x35be(1, uint32(MEM[136 + v36]));
                                }
                            }
                        }
                        v65 = 0x36ff(v36);
                        assert(v65 <= 7);
                        if (v65 != 6) {
                            v66 = 0x371a(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < address(v37), v36);
                            v67 = new array[](96);
                            v68 = v69 = 0;
                            while (v68 < 96) {
                                MEM[v68 + v67.data] = MEM[v68 + (MEM[64] + 32)];
                                v68 += 32;
                            }
                            if (v68 > 96) {
                                MEM[v67.data + 96] = 0;
                            }
                            require(bool((address(v39)).code.size));
                            v70, v71, v72 = address(v39).swap(address(this), bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < address(v37)), uint96(msg.data.length), address(v66), v67, v31, address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), address(v37), uint24(MEM[91 + v36])).gas(msg.gas);
                            require(bool(v70), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                        } else {
                            v73 = 0x371a(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < address(v37), v36);
                            v74 = new array[](96);
                            v75 = v76 = 0;
                            while (v75 < 96) {
                                MEM[v75 + v74.data] = MEM[v75 + (MEM[64] + 32)];
                                v75 += 32;
                            }
                            if (v75 > 96) {
                                MEM[v74.data + 96] = 0;
                            }
                            require(bool((address(v39)).code.size));
                            v77, v78, v79 = address(v39).swap(address(this), uint96(msg.data.length), bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c < address(v37)), address(v73), v74, v31, address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c), address(v37), uint24(MEM[91 + v36])).gas(msg.gas);
                            require(bool(v77), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                        }
                        if (uint8(MEM[132 + v36])) {
                            0x35be(uint8(MEM[132 + v36]), uint32(MEM[136 + v36]));
                        }
                    }
                } else {
                    require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
                    v80 = new bytes[](msg.data.length);
                    CALLDATACOPY(v80.data, 0, msg.data.length);
                    v80[msg.data.length] = 0;
                    v81 = MEM[36 + v80];
                    v82 = new bytes[](msg.data.length);
                    CALLDATACOPY(v82.data, 0, msg.data.length);
                    v82[msg.data.length] = 0;
                    v83 = v84 = MEM[68 + v82] >> 5;
                    while (v83) {
                        v85 = CREATE2(0, 0, 31, v81);
                        v86 = CREATE2(0, 0, 31, v81 + 1);
                        v87 = CREATE2(0, 0, 31, v81 + 2);
                        v88 = CREATE2(0, 0, 31, v81 + 3);
                        v89 = CREATE2(0, 0, 31, v81 + 4);
                        v90 = CREATE2(0, 0, 31, v81 + 5);
                        v91 = CREATE2(0, 0, 31, v81 + 6);
                        v92 = CREATE2(0, 0, 31, v81 + 7);
                        v93 = CREATE2(0, 0, 31, v81 + 8);
                        v94 = CREATE2(0, 0, 31, v81 + 9);
                        v95 = CREATE2(0, 0, 31, v81 + 10);
                        v96 = CREATE2(0, 0, 31, v81 + 11);
                        v97 = CREATE2(0, 0, 31, v81 + 12);
                        v98 = CREATE2(0, 0, 31, v81 + 13);
                        v99 = CREATE2(0, 0, 31, v81 + 14);
                        v100 = CREATE2(0, 0, 31, v81 + 15);
                        v101 = CREATE2(0, 0, 31, v81 + 16);
                        v102 = CREATE2(0, 0, 31, v81 + 17);
                        v103 = CREATE2(0, 0, 31, v81 + 18);
                        v104 = CREATE2(0, 0, 31, v81 + 19);
                        v105 = CREATE2(0, 0, 31, v81 + 20);
                        v106 = CREATE2(0, 0, 31, v81 + 21);
                        v107 = CREATE2(0, 0, 31, v81 + 22);
                        v108 = CREATE2(0, 0, 31, v81 + 23);
                        v109 = CREATE2(0, 0, 31, v81 + 24);
                        v110 = CREATE2(0, 0, 31, v81 + 25);
                        v111 = CREATE2(0, 0, 31, v81 + 26);
                        v112 = CREATE2(0, 0, 31, v81 + 27);
                        v113 = CREATE2(0, 0, 31, v81 + 28);
                        v114 = CREATE2(0, 0, 31, v81 + 29);
                        v115 = CREATE2(0, 0, 31, v81 + 30);
                        v116 = CREATE2(0, 0, 31, v81 + 31);
                        v81 += 32;
                        v83 += 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                    }
                    v117 = v118 = MEM[68 + v82] & 0x1f;
                    while (v117) {
                        v119 = CREATE2(0, 0, 31, v81);
                        v81 += 1;
                        v117 += 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
                    }
                }
            } else {
                require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
                v120 = new bytes[](msg.data.length);
                CALLDATACOPY(v120.data, 0, msg.data.length);
                v120[msg.data.length] = 0;
                if (uint8(msg.data.length)) {
                    v121 = new bytes[](msg.data.length);
                    CALLDATACOPY(v121.data, 0, msg.data.length);
                    v121[msg.data.length] = 0;
                    0x35be(uint8(msg.data.length), uint32(msg.data.length));
                    goto 0x4913;
                }
            }
        } else {
            require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
            v122 = new bytes[](msg.data.length);
            CALLDATACOPY(v122.data, 0, msg.data.length);
            v122[msg.data.length] = 0;
            if (address(MEM[136 + v122])) {
                require(address(MEM[136 + v122]) == block.coinbase, Error(0x636b6c));
            }
            if (uint64(MEM[144 + v122])) {
                require(block.timestamp <= uint64(MEM[144 + v122]), Error(0x646b6c));
            }
            if (uint64(MEM[116 + v122])) {
                require(block.number > uint64(MEM[116 + v122]), Error(14927));
                require(block.blockhash(uint64(MEM[116 + v122])), Error(14936));
            }
            if (address(MEM[91 + v122])) {
                require((address(MEM[91 + v122])).balance == uint96(MEM[103 + v122]), Error(113));
            }
            v123 = 0x3528(v122);
            require(bool((address(v123)).code.size));
            v124, /* uint112 */ v125, /* uint112 */ v126, /* uint32 */ v127 = address(v123).getReserves().gas(msg.gas);
            require(bool(v124), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v125 == uint112(v125));
            require(v126 == uint112(v126));
            require(v127 == uint32(v127));
            v128 = v129 = uint112(v126);
            v128 = v130 = uint112(v125);
            if (1 != uint8(MEM[71 + v122])) {
            }
            if (v128 >= MEM[68 + v122]) {
                v131 = v132 = 0x3407(uint16(MEM[70 + v122]), v128, v128, uint96(msg.data.length));
                if (1 == uint8(MEM[71 + v122])) {
                    v131 = v133 = 0;
                } else {
                    v131 = v134 = 0;
                }
                0x32c7(uint96(msg.data.length), v123, 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c);
                MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 36] = v131;
                MEM[MEM[64] + 36 + 32] = v131;
                MEM[MEM[64] + 36 + 64] = address(this);
                MEM[MEM[64] + 36 + 96] = 128;
                MEM[MEM[64] + 36 + 128] = 0;
                v135 = v136 = 0;
                while (v135 < 0) {
                    MEM[v135 + (MEM[64] + 36 + 128 + 32)] = MEM[v135 + (MEM[64] + 32)];
                    v135 += 32;
                }
                if (v135 > 0) {
                    MEM[MEM[64] + 36 + 128 + 32 + 0] = 0;
                }
                require(bool((address(v123)).code.size));
                v137 = address(v123).call(MEM[(MEM[64]) len (32 + (MEM[64] + 36 + 128) - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);
                require(bool(v137), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (uint8(MEM[104 + v122]) > 0) {
                    0x35be(uint8(MEM[104 + v122]), uint32(MEM[108 + v122]));
                }
            } else if (uint8(MEM[104 + v122])) {
                0x35be(1, uint32(MEM[108 + v122]));
            }
        }
    } else {
        require(1 == bool(uint8(_withdraw[address(msg.sender)])), Error(0x61757468));
        v138 = new bytes[](msg.data.length);
        CALLDATACOPY(v138.data, 0, msg.data.length);
        v138[msg.data.length] = 0;
        if (uint64(MEM[79 + v138])) {
            require(block.number > uint64(MEM[79 + v138]), Error(14927));
            require(block.blockhash(uint64(MEM[79 + v138])), Error(14936));
        }
        if (1 == uint8(MEM[39 + v138])) {
            require(bool((address(MEM[36 + v138])).code.size));
            v139, /* address */ v140 = address(MEM[36 + v138]).token0().gas(msg.gas);
            require(bool(v139), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v140 == address(v140));
            goto 0x76cB0x15f;
        } else {
            require(bool((address(MEM[36 + v138])).code.size));
            v141, /* address */ v140 = address(MEM[36 + v138]).token1().gas(msg.gas);
            require(bool(v141), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v140 == address(v140));
        }
        require(bool((address(v140)).code.size));
        v142, v143 = address(v140).balanceOf(address(this)).gas(msg.gas);
        require(bool(v142), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v143 > 1, Error(99));
        if (address(MEM[59 + v138])) {
            require((address(MEM[59 + v138])).balance < uint96(MEM[71 + v138]), Error(113));
        }
        v144 = 0x3297(msg.data.length, 0);
        v145 = v146 = 0;
        while (v145 < v144.length) {
            assert(v145 < v144.length);
            assert(v145 < v144.length);
            require(bool((address(MEM[0 + v144[v145 << 5][v145]])).code.size));
            v147, v148 = address(MEM[0 + v144[v145 << 5][v145]]).balanceOf(address(MEM[32 + v144[v145 << 5][v145]])).gas(msg.gas);
            require(bool(v147), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            assert(v145 < v144.length);
            if (MEM[96 + v144[v145 << 5][v145]]) {
                assert(v145 < v144.length);
                v149 = v148 >= MEM[64 + v144[v145 << 5][v145]];
            } else {
                assert(v145 < v144.length);
                v149 = v150 = v148 <= MEM[64 + v144[v145 << 5][v145]];
            }
            require(v149, Error(97));
            v145 += 1;
        }
        require(bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.code.size));
        v151, v152 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address(this)).gas(msg.gas);
        require(bool(v151), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        0x32c7(v143 - 1, MEM[36 + v138], v140);
        require(bool((address(MEM[36 + v138])).code.size));
        v153, /* uint112 */ v154, /* uint112 */ v155, /* uint32 */ v156 = address(MEM[36 + v138]).getReserves().gas(msg.gas);
        require(bool(v153), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v154 == uint112(v154));
        require(v155 == uint112(v155));
        require(v156 == uint32(v156));
        v157 = v158 = uint112(v155);
        v157 = v159 = uint112(v154);
        if (1 != uint8(MEM[39 + v138])) {
        }
        require(bool((address(v140)).code.size));
        v160, v161 = address(v140).balanceOf(address(MEM[36 + v138])).gas(msg.gas);
        require(bool(v160), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v161 - v157 <= v161, Error('ds-math-sub-underflow'));
        require(v161 - v157 > 0, Error('PancakeLibrary: INSUFFICIENT_INPUT_AMOUNT'));
        v162 = v163 = v157 > 0;
        if (v163) {
            v162 = v157 > 0;
        }
        require(v162, Error('PancakeLibrary: INSUFFICIENT_LIQUIDITY'));
        v164 = 0x3950(uint32(10000 - uint16(MEM[38 + v138])), v161 - v157);
        v165 = 0x3950(v157, v164);
        v166 = 0x3950(10000, v157);
        v167 = _SafeAdd(v164, v166);
        assert(v167);
        v168 = v165 / v167;
        if (1 == uint8(MEM[39 + v138])) {
            v168 = v169 = 0;
        } else {
            v168 = v170 = 0;
        }
        v171 = v172 = 0;
        while (v171 < 0) {
            MEM[v171 + v173.data] = MEM[v171 + (MEM[64] + 32)];
            v171 += 32;
        }
        if (v171 > 0) {
        }
        require(bool((address(MEM[36 + v138])).code.size));
        v174 = address(MEM[36 + v138]).swap(v168, v168, address(this), 0).gas(msg.gas);
        require(bool(v174), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.code.size));
        v175, v176 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(address(this)).gas(msg.gas);
        require(bool(v175), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v177 = v178 = v176 > v152;
        if (v178) {
            v177 = v176 - v152 > uint96(msg.data.length);
        }
        require(v177, Error(111));
    }
}

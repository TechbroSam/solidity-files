// Decompiled by library.dedaub.com
// 2023.06.17 09:09 UTC
// Compiled using the solidity compiler version 0.8.7




// Events
Minted(uint256);

function getBalance() public nonPayable { 
    require(msg.sender == 0x2c71d611f3090a99df322fd075bf60a81524f416, Error('E.not.o'));
    return this.balance;
}

function 0x22771e1e() public nonPayable { 
    return 0x75336eb35ae47b12b8ccf2f8d51e208760c818585733ff6000526016600af300;
}

function 0x2fadc8f5() public payable { 
    require(msg.sender == 0x2c71d611f3090a99df322fd075bf60a81524f416, Error('E.not.o'));
    require(bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.code.size));
    v0, v1 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v1) {
        require(bool(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.code.size));
        v2 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(v1).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    require(this.balance > 0, Error('Inv.B'));
    v3 = 0x89f72f7331d8aa5dba9e72114094bc6cc444244f.call().value(this.balance).gas(2300 * !this.balance);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return bool(1);
}

function 0x4ff5c5ed() public nonPayable { 
    return 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5;
}

function 0x000d8866() public payable { 
    selfdestruct(address(v0));
}

function 0x5cbfeffb(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    MEM[0] = 0x75336eb35ae47b12b8ccf2f8d51e208760c818585733ff6000526016600af300;
    v0 = v1 = varg0 >> 4;
    while (v0) {
        v2 = CREATE2(0, 0, 32, v3);
        v4 = CREATE2(0, 0, 32, v3 + 1);
        v5 = CREATE2(0, 0, 32, v3 + 2);
        v6 = CREATE2(0, 0, 32, v3 + 3);
        v7 = CREATE2(0, 0, 32, v3 + 4);
        v8 = CREATE2(0, 0, 32, v3 + 5);
        v9 = CREATE2(0, 0, 32, v3 + 6);
        v10 = CREATE2(0, 0, 32, v3 + 7);
        v11 = CREATE2(0, 0, 32, v3 + 8);
        v12 = CREATE2(0, 0, 32, v3 + 9);
        v13 = CREATE2(0, 0, 32, v3 + 10);
        v14 = CREATE2(0, 0, 32, v3 + 11);
        v15 = CREATE2(0, 0, 32, v3 + 12);
        v16 = CREATE2(0, 0, 32, v3 + 13);
        v17 = CREATE2(0, 0, 32, v3 + 14);
        v18 = CREATE2(0, 0, 32, v3 + 15);
        v3 += 16;
        v0 += 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    }
    emit Minted(v3 | varg0 << 32);
}

function getBalanceOf(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(msg.sender == 0x2c71d611f3090a99df322fd075bf60a81524f416, Error('E.not.o'));
    require(bool((address(varg0)).code.size));
    v0, v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function 0x1dcd(uint256 varg0) private { 
    v0 = v1 = block.number <= varg0;
    if (block.number > varg0) {
        v0 = v2 = !block.blockhash(varg0);
    }
    if (!v0) {
        return 1;
    } else {
        return 0;
    }
}

function 0x1df2(uint256 varg0) private { 
    MEM[MEM[64] + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 105] = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73000000000000000000000000;
    MEM[MEM[64] + 125] = keccak256(bytes20(MEM[varg0 + 256] << 96), bytes20(MEM[varg0 + 288] << 96));
    MEM[MEM[64] + 157] = 0xfb7f630766e6a796048ea87d01acd3068e8ff67d078148a3fa3f4a84f69bd5;
    v0 = new array[](189 + MEM[64] - v0 - 32);
    v1 = v0.length;
    v2 = v0.data;
    require(bool((address(keccak256(v0))).code.size));
    v3, /* uint112 */ v4, /* uint112 */ v5, /* uint32 */ v6 = address(keccak256(v0)).getReserves().gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v4 == uint112(v4));
    require(v5 == uint112(v5));
    require(v6 == uint32(v6));
    v7 = v8 = uint112(v5);
    v7 = v9 = uint112(v4);
    if (address(MEM[192 + varg0]) != address(MEM[256 + varg0])) {
    }
    v10 = _SafeMul(0x2386f26fc10000, MEM[384 + varg0]);
    v11 = v12 = MEM[384 + varg0] > 0;
    if (v12) {
        v11 = v13 = v7 > v10;
    }
    if (v11) {
        v14 = v15 = !MEM[varg0];
        if (!bool(MEM[varg0])) {
            v16 = _SafeMul(102, v10);
            v17 = _SafeDiv(v16, 100);
            v14 = v18 = v7 > v17;
        }
        if (!v14) {
            return 12;
        } else {
            require(bool((address(MEM[varg0 + 224])).code.size));
            v19, v20 = address(MEM[varg0 + 224]).balanceOf(this).gas(msg.gas);
            require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            MEM[varg0 + 320] = v20;
            if (1 < v20) {
                MEM[varg0 + 96] = 0;
                MEM[varg0 + 352] = 0;
                MEM[varg0 + 224] = address(MEM[varg0 + 192]);
                MEM[varg0 + 192] = address(MEM[varg0 + 224]);
            } else {
                return 12;
            }
        }
    }
    if (0 == MEM[96 + varg0]) {
        v21 = v22 = 0x254b(v7, v7, MEM[320 + varg0]);
        if (v22 < MEM[352 + varg0]) {
            return 2;
        }
    } else {
        require(v7 <= ~MEM[varg0 + 320], Panic(17)); // arithmetic overflow or underflow
        if (v7 + MEM[varg0 + 320] > MEM[varg0 + 352]) {
            require(MEM[352 + varg0] >= v7, Panic(17)); // arithmetic overflow or underflow
            v23 = _SafeMul(MEM[320 + varg0], MEM[96 + varg0]);
            v24 = _SafeDiv(v23, 100);
            if (MEM[352 + varg0] - v7 >= v24) {
                MEM[varg0 + 320] = MEM[352 + varg0] - v7;
            } else {
                return 22;
            }
        }
        v21 = v25 = 0x254b(v7, v7, MEM[320 + varg0]);
    }
    v26 = v27 = 0;
    while (v26 < 68) {
        MEM[v26 + MEM[64]] = MEM[v26 + (MEM[64] + 32)];
        v26 += 32;
    }
    if (v26 <= 68) {
        goto 0x2805;
    } else {
        MEM[68 + MEM[64]] = 0;
    }
    v28, v29 = address(MEM[varg0 + 192]).transfer(address(keccak256(v0)), 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(keccak256(v0))), MEM[varg0 + 320]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v30 = new bytes[](RETURNDATASIZE());
        v29 = v30.data;
        RETURNDATACOPY(v29, 0, RETURNDATASIZE());
    }
    if (address(MEM[192 + varg0]) == address(MEM[256 + varg0])) {
        v21 = v31 = 0;
    } else {
        v21 = v32 = 0;
    }
    v33 = v34 = 0;
    while (v33 < 0) {
        MEM[v33 + v35.data] = MEM[v33 + (MEM[64] + 32)];
        v33 += 32;
    }
    if (v33 <= 0) {
        goto 0x2856;
    }
    require(bool((address(keccak256(v0))).code.size));
    v36 = address(keccak256(v0)).swap(v21, v21, address(this), 0).gas(msg.gas);
    require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return 0;
}

function withdrawToken(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(msg.sender == 0x2c71d611f3090a99df322fd075bf60a81524f416, Error('E.not.o'));
    require(bool((address(varg0)).code.size));
    v0, v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 > 0, Error('Inv.A'));
    require(v1 >= v1, Error('Inv.B'));
    require(bool((address(varg0)).code.size));
    v2, /* bool */ v3 = varg0.approve(0x89f72f7331d8aa5dba9e72114094bc6cc444244f, v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v3 == bool(v3));
    require(bool((address(varg0)).code.size));
    v4, /* bool */ v5 = varg0.transfer(0x89f72f7331d8aa5dba9e72114094bc6cc444244f, v1).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v5 == bool(v5));
    return bool(1);
}

function 0xdf216439() public nonPayable { 
    return 0x8b05e38268852a1a4a61db05632d9f5b690a8b35f778408a06a2d9de3811ae5;
}

function deposit0(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == 0x2c71d611f3090a99df322fd075bf60a81524f416, Error('E.not.o'));
    v0 = v1 = this.balance;
    require(v0 <= v1, Error('Inv.A'));
    require(bool((address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)).code.size));
    v2 = address(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c).deposit().value(v0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return bool(1);
}

function destory(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(msg.sender == 0x2c71d611f3090a99df322fd075bf60a81524f416, Error('E.not.o'));
    require(0xd8866 == varg1, Error('Err.Pwd'));
    0x000d8866(varg1);
}

function 0x254b(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(10000 * varg1 + 9975 * varg2, Panic(18)); // division by zero
    return 9975 * varg2 * varg0 / (10000 * varg1 + 9975 * varg2);
}

function 0x2576(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (v0 < varg0) {
        v2, v3 = address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(this << 96), varg1 + v0, 0x8b05e38268852a1a4a61db05632d9f5b690a8b35f778408a06a2d9de3811ae5)).call().gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v4 = new bytes[](RETURNDATASIZE());
            v3 = v4.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        v0 += 1;
    }
    return ;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!(bool(varg0) & (varg1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / varg0)), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function () public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        ();
    } else if (0x5cbfeffb > function_selector >> 224) {
        if (0x22771e1e > function_selector >> 224) {
            if (8 == function_selector >> 224) {
                require(!msg.value);
                require(msg.data.length - 4 >= 64);
                v0 = v1 = msg.sender == 0xd87035a86a6358459b913ed4803f55e7f054a7c0;
                if (msg.sender != 0xd87035a86a6358459b913ed4803f55e7f054a7c0) {
                    v0 = v2 = msg.sender == 0xf5f2fd3c9d88f6659ce7ea919ed2d593f3fb98c7;
                }
                if (!v0) {
                    v0 = v3 = msg.sender == 0x219b0c0c7366a33bdcd070bc4b18d28b001b0eff;
                }
                if (!v0) {
                    v0 = v4 = msg.sender == 0x7fe3b8cce2610977cc10368a2966d6ddfafaa728;
                }
                if (!v0) {
                    v0 = v5 = msg.sender == 0x88c04c7aa5def1d7d58653683ce1aa9529d49650;
                }
                if (!v0) {
                    v0 = v6 = msg.sender == 0xdc0bff195aa69baf579806785a3f8204b82b4ad;
                }
                if (!v0) {
                    v0 = v7 = msg.sender == 0xb49a91ab41d0babfff4b5da24615c22be336ee34;
                }
                if (!v0) {
                    v0 = v8 = msg.sender == 0xe33e08ae9eb45b941221e8fcaf34642363e8129d;
                }
                if (!v0) {
                    v0 = v9 = msg.sender == 0x25dbd6795b1deb1bb2f99d87f77d9b7ec5922c1;
                }
                if (!v0) {
                    v0 = v10 = msg.sender == 0x906b071330e6d432abccfcbad2537e97816635be;
                }
                if (!v0) {
                    v0 = v11 = msg.sender == 0xeeaa8a1af89c73240d7596abb4395754c50469c0;
                }
                if (!v0) {
                    v0 = v12 = msg.sender == 0x2a15674d3399c5f826d2cb22d73920bab73db967;
                }
                if (!v0) {
                    v0 = v13 = msg.sender == 0x220364a77982e9fdcded90d9e60afc6eda1adaf6;
                }
                if (!v0) {
                    v0 = v14 = msg.sender == 0x4f2b36e7a4ba929076a36ef208d1867306b95d12;
                }
                if (!v0) {
                    v0 = v15 = msg.sender == 0x2543a13ca6a51dbe12f376124aba3f171e41649;
                }
                if (!v0) {
                    v0 = v16 = msg.sender == 0x3c29042e0a0e81ae00813c29663138df86cb50a8;
                }
                if (!v0) {
                    v0 = v17 = msg.sender == 0x9bd003a68a61dab74434ab55e297ae95e73c37fb;
                }
                if (!v0) {
                    v0 = v18 = msg.sender == 0xce634a4ee55698767d961090a04e1c9cd1d98a5b;
                }
                if (!v0) {
                    v0 = v19 = msg.sender == 0x40f599b45bab773efa1dbecc52993c7c92eaf8f0;
                }
                if (!v0) {
                    v0 = v20 = msg.sender == 0x5efe370b62891361b48199fdd4ffe641c814803e;
                }
                if (!v0) {
                    v0 = v21 = msg.sender == 0x7af1ad5eff2dd6c205043527000b671dea399d;
                }
                if (!v0) {
                    v0 = v22 = msg.sender == 0x24b6487820af486cae31b9d862e9046d9ad6df49;
                }
                if (!v0) {
                    v0 = v23 = msg.sender == 0x3149b730b9df7aead3d3e410bc17498298f9bc43;
                }
                if (!v0) {
                    v0 = v24 = msg.sender == 0x9b40b0d16ae723d0c9ee7e8ec3b9d052735fb3c3;
                }
                if (!v0) {
                    v0 = v25 = msg.sender == 0xa38a8efa14fb1e541c87371cb52391f8c2a53af0;
                }
                if (!v0) {
                    v0 = v26 = msg.sender == 0xeda2a830413dd54c219dd31cb41445f2e2d7af50;
                }
                if (!v0) {
                    v0 = v27 = msg.sender == 0x707c17435ded63ea4f9d29e3765f7b9b1ed1aa95;
                }
                if (!v0) {
                    v0 = v28 = msg.sender == 0xef70178789ade9ed0ae3ffb021faccf87a3d0b28;
                }
                if (!v0) {
                    v0 = v29 = msg.sender == 0xf742c9cb7957bc23508c8a3889b03cdb2a97b352;
                }
                if (!v0) {
                    v0 = v30 = msg.sender == 0xcf427566cf2a0cc7a53d37306083a8d9c6638725;
                }
                if (!v0) {
                    v0 = v31 = msg.sender == 0x1067f18377e10823799f4751157c5fa11f12659d;
                }
                if (!v0) {
                    v0 = v32 = msg.sender == 0xa9a1a5c71ae3a8ef617f4e3a189f20291b4df51;
                }
                if (!v0) {
                    v0 = v33 = msg.sender == 0x34e22964b163c780c388806caa36a0c2e941c143;
                }
                if (!v0) {
                    v0 = v34 = msg.sender == 0xed904640dac9935fc03fdf0f892f1a8507aa15a6;
                }
                if (!v0) {
                    v0 = v35 = msg.sender == 0xa62fe6779e053c7f244257d25262d4bb0eb4b215;
                }
                if (!v0) {
                    v0 = v36 = msg.sender == 0xd89d8dc314c19f4878bcd8ecf3c4acd2afcdf566;
                }
                if (!v0) {
                    v0 = v37 = msg.sender == 0xe6fc7b33975f03dc7ba01ac0c1d50b2789e129a9;
                }
                if (!v0) {
                    v0 = v38 = msg.sender == 0xe8d7656ae3cb3314a1b5b401c5dcaaeb701c057b;
                }
                if (!v0) {
                    v0 = v39 = msg.sender == 0x9bda813216a767cd3f7b3b739510ea33e87a22cd;
                }
                if (!v0) {
                    v0 = v40 = msg.sender == 0x20df3569e55bc446e342c4445f9d10c547afe300;
                }
                if (!v0) {
                    v0 = msg.sender == 0x62a2d631f4de34b21efc5483f17d76bb5e9d8d5b;
                }
                require(v0, Error('E.not.legal'));
                v41 = MEM[64];
                MEM[64] = 416 + v41;
                MEM[v41] = 0;
                MEM[32 + v41] = 0;
                MEM[64 + v41] = 0;
                MEM[96 + v41] = 0;
                MEM[128 + v41] = 0;
                MEM[160 + v41] = 0;
                MEM[192 + v41] = address(0x0);
                MEM[224 + v41] = address(0x0);
                MEM[256 + v41] = address(0x0);
                MEM[288 + v41] = address(0x0);
                MEM[320 + v41] = 0;
                MEM[352 + v41] = 0;
                MEM[384 + v41] = 0;
                require(4 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v42 = v43 = 0;
                v44 = _SafeDiv(varg1 >> 248, 10);
                require(10, Panic(18)); // division by zero
                if (1 != (varg1 >> 248) % 10) {
                    if (2 != (varg1 >> 248) % 10) {
                        if (3 == (varg1 >> 248) % 10) {
                            v42 = v45 = 0xe9e7cea3dedca5984780bafc599bd69add087d56;
                        }
                    } else {
                        v42 = v46 = 0x55d398326f99059ff775485246999027b3197955;
                    }
                } else {
                    v42 = v47 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
                }
                MEM[v41] = v44;
                if (v44) {
                    MEM[v41 + 192] = address(varg1);
                    MEM[v41 + 224] = address(v42);
                } else {
                    MEM[v41 + 192] = address(v42);
                    MEM[v41 + 224] = address(varg1);
                }
                require(5 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(6 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[v41 + 64] = varg3 >> 248;
                require(7 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[v41 + 96] = varg4 >> 248;
                MEM[v41 + 384] = varg5 >> 224;
                MEM[v41 + 320] = uint112(varg5 >> 112);
                MEM[v41 + 352] = uint112(varg5);
                if (address(MEM[v41 + 192]) < address(MEM[v41 + 224])) {
                    v48 = v49 = MEM[192 + v41];
                    v50 = v51 = MEM[224 + v41];
                } else {
                    v48 = MEM[224 + v41];
                    v50 = MEM[192 + v41];
                }
                MEM[v41 + 288] = address(v50);
                MEM[v41 + 256] = address(v48);
                v52 = 0x1dcd(uint32(varg1 >> 192));
                require(v52, Error(0x496e762e00000000000000000000000000000000000000000000000000000000));
                require(bool((address(MEM[v41 + 192])).code.size));
                v53, v54 = address(MEM[v41 + 192]).balanceOf(this).gas(msg.gas);
                require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v54 > 1, Error('Inv.0'));
                v55 = 0x1df2(v41);
                if (varg2 >> 248) {
                    if (v55) {
                        0x2576(1, uint32(varg1 >> 160));
                        MEM[v41 + 160] = 1 + uint32(varg1 >> 160);
                    } else {
                        0x2576(varg2 >> 248, uint32(varg1 >> 160));
                        MEM[v41 + 160] = (varg2 >> 248) + uint32(varg1 >> 160);
                    }
                    v56 = v57 = 0x275c82ca4f491f0c9b7ffa4f6e3e85613c4a0d2c4f67b64995dc68806f0586e5;
                    goto 0x14430x23ecB0x30afB0xec;
                } else {
                    v56 = v58 = 0x275c82ca4f491f0c9b7ffa4f6e3e85613c4a0d2c4f67b64995dc68806f0586e5;
                }
                emit v56(msg.gas << 64 | v55 << 32 | uint32(varg1 >> 160), msg.gas << 64 | v55 << 32 | MEM[160 + v41]);
                exit;
            } else if (226 == function_selector >> 224) {
                require(!msg.value);
                require(msg.data.length - 4 >= 64);
                v59 = v60 = msg.sender == 0xd87035a86a6358459b913ed4803f55e7f054a7c0;
                if (msg.sender != 0xd87035a86a6358459b913ed4803f55e7f054a7c0) {
                    v59 = v61 = msg.sender == 0xf5f2fd3c9d88f6659ce7ea919ed2d593f3fb98c7;
                }
                if (!v59) {
                    v59 = v62 = msg.sender == 0x219b0c0c7366a33bdcd070bc4b18d28b001b0eff;
                }
                if (!v59) {
                    v59 = v63 = msg.sender == 0x7fe3b8cce2610977cc10368a2966d6ddfafaa728;
                }
                if (!v59) {
                    v59 = v64 = msg.sender == 0x88c04c7aa5def1d7d58653683ce1aa9529d49650;
                }
                if (!v59) {
                    v59 = v65 = msg.sender == 0xdc0bff195aa69baf579806785a3f8204b82b4ad;
                }
                if (!v59) {
                    v59 = v66 = msg.sender == 0xb49a91ab41d0babfff4b5da24615c22be336ee34;
                }
                if (!v59) {
                    v59 = v67 = msg.sender == 0xe33e08ae9eb45b941221e8fcaf34642363e8129d;
                }
                if (!v59) {
                    v59 = v68 = msg.sender == 0x25dbd6795b1deb1bb2f99d87f77d9b7ec5922c1;
                }
                if (!v59) {
                    v59 = v69 = msg.sender == 0x906b071330e6d432abccfcbad2537e97816635be;
                }
                if (!v59) {
                    v59 = v70 = msg.sender == 0xeeaa8a1af89c73240d7596abb4395754c50469c0;
                }
                if (!v59) {
                    v59 = v71 = msg.sender == 0x2a15674d3399c5f826d2cb22d73920bab73db967;
                }
                if (!v59) {
                    v59 = v72 = msg.sender == 0x220364a77982e9fdcded90d9e60afc6eda1adaf6;
                }
                if (!v59) {
                    v59 = v73 = msg.sender == 0x4f2b36e7a4ba929076a36ef208d1867306b95d12;
                }
                if (!v59) {
                    v59 = v74 = msg.sender == 0x2543a13ca6a51dbe12f376124aba3f171e41649;
                }
                if (!v59) {
                    v59 = v75 = msg.sender == 0x3c29042e0a0e81ae00813c29663138df86cb50a8;
                }
                if (!v59) {
                    v59 = v76 = msg.sender == 0x9bd003a68a61dab74434ab55e297ae95e73c37fb;
                }
                if (!v59) {
                    v59 = v77 = msg.sender == 0xce634a4ee55698767d961090a04e1c9cd1d98a5b;
                }
                if (!v59) {
                    v59 = v78 = msg.sender == 0x40f599b45bab773efa1dbecc52993c7c92eaf8f0;
                }
                if (!v59) {
                    v59 = v79 = msg.sender == 0x5efe370b62891361b48199fdd4ffe641c814803e;
                }
                if (!v59) {
                    v59 = v80 = msg.sender == 0x7af1ad5eff2dd6c205043527000b671dea399d;
                }
                if (!v59) {
                    v59 = v81 = msg.sender == 0x24b6487820af486cae31b9d862e9046d9ad6df49;
                }
                if (!v59) {
                    v59 = v82 = msg.sender == 0x3149b730b9df7aead3d3e410bc17498298f9bc43;
                }
                if (!v59) {
                    v59 = v83 = msg.sender == 0x9b40b0d16ae723d0c9ee7e8ec3b9d052735fb3c3;
                }
                if (!v59) {
                    v59 = v84 = msg.sender == 0xa38a8efa14fb1e541c87371cb52391f8c2a53af0;
                }
                if (!v59) {
                    v59 = v85 = msg.sender == 0xeda2a830413dd54c219dd31cb41445f2e2d7af50;
                }
                if (!v59) {
                    v59 = v86 = msg.sender == 0x707c17435ded63ea4f9d29e3765f7b9b1ed1aa95;
                }
                if (!v59) {
                    v59 = v87 = msg.sender == 0xef70178789ade9ed0ae3ffb021faccf87a3d0b28;
                }
                if (!v59) {
                    v59 = v88 = msg.sender == 0xf742c9cb7957bc23508c8a3889b03cdb2a97b352;
                }
                if (!v59) {
                    v59 = v89 = msg.sender == 0xcf427566cf2a0cc7a53d37306083a8d9c6638725;
                }
                if (!v59) {
                    v59 = v90 = msg.sender == 0x1067f18377e10823799f4751157c5fa11f12659d;
                }
                if (!v59) {
                    v59 = v91 = msg.sender == 0xa9a1a5c71ae3a8ef617f4e3a189f20291b4df51;
                }
                if (!v59) {
                    v59 = v92 = msg.sender == 0x34e22964b163c780c388806caa36a0c2e941c143;
                }
                if (!v59) {
                    v59 = v93 = msg.sender == 0xed904640dac9935fc03fdf0f892f1a8507aa15a6;
                }
                if (!v59) {
                    v59 = v94 = msg.sender == 0xa62fe6779e053c7f244257d25262d4bb0eb4b215;
                }
                if (!v59) {
                    v59 = v95 = msg.sender == 0xd89d8dc314c19f4878bcd8ecf3c4acd2afcdf566;
                }
                if (!v59) {
                    v59 = v96 = msg.sender == 0xe6fc7b33975f03dc7ba01ac0c1d50b2789e129a9;
                }
                if (!v59) {
                    v59 = v97 = msg.sender == 0xe8d7656ae3cb3314a1b5b401c5dcaaeb701c057b;
                }
                if (!v59) {
                    v59 = v98 = msg.sender == 0x9bda813216a767cd3f7b3b739510ea33e87a22cd;
                }
                if (!v59) {
                    v59 = v99 = msg.sender == 0x20df3569e55bc446e342c4445f9d10c547afe300;
                }
                if (!v59) {
                    v59 = msg.sender == 0x62a2d631f4de34b21efc5483f17d76bb5e9d8d5b;
                }
                require(v59, Error('E.not.legal'));
                v100 = MEM[64];
                MEM[64] = 416 + v100;
                MEM[v100] = 0;
                MEM[32 + v100] = 0;
                MEM[64 + v100] = 0;
                MEM[96 + v100] = 0;
                MEM[128 + v100] = 0;
                MEM[160 + v100] = 0;
                MEM[192 + v100] = address(0x0);
                MEM[224 + v100] = address(0x0);
                MEM[256 + v100] = address(0x0);
                MEM[288 + v100] = address(0x0);
                MEM[320 + v100] = 0;
                MEM[352 + v100] = 0;
                MEM[384 + v100] = 0;
                require(4 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v101 = v102 = 0;
                v103 = _SafeDiv(varg1 >> 248, 10);
                require(10, Panic(18)); // division by zero
                if (1 != (varg1 >> 248) % 10) {
                    if (2 != (varg1 >> 248) % 10) {
                        if (3 == (varg1 >> 248) % 10) {
                            v101 = v104 = 0xe9e7cea3dedca5984780bafc599bd69add087d56;
                        }
                    } else {
                        v101 = v105 = 0x55d398326f99059ff775485246999027b3197955;
                    }
                } else {
                    v101 = v106 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
                }
                if (v103) {
                    MEM[v100 + 192] = address(varg1);
                    MEM[v100 + 224] = address(v101);
                } else {
                    MEM[v100 + 192] = address(v101);
                    MEM[v100 + 224] = address(varg1);
                }
                require(5 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(6 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[v100 + 64] = varg3 >> 248;
                require(7 < msg.data.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[v100 + 96] = varg4 >> 248;
                MEM[v100 + 384] = varg5 >> 224;
                MEM[v100 + 320] = uint112(varg5 >> 112);
                MEM[v100 + 352] = uint112(varg5);
                if (address(MEM[v100 + 192]) < address(MEM[v100 + 224])) {
                    v107 = v108 = MEM[192 + v100];
                    v109 = v110 = MEM[224 + v100];
                } else {
                    v107 = MEM[224 + v100];
                    v109 = MEM[192 + v100];
                }
                MEM[v100 + 288] = address(v109);
                MEM[v100 + 256] = address(v107);
                v111 = 0x1dcd(uint32(varg1 >> 192));
                require(v111, Error(0x496e762e00000000000000000000000000000000000000000000000000000000));
                if (1 == v103) {
                    require(bool((address(MEM[v100 + 192])).code.size));
                    v112, v113 = address(MEM[v100 + 192]).balanceOf(this).gas(msg.gas);
                    require(bool(v112), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(v113 > 1, Error('Inv.0'));
                }
                v114 = 0x1df2(v100);
                if (varg2 >> 248) {
                    if (v114) {
                        0x2576(1, uint32(varg1 >> 160));
                        MEM[v100 + 160] = 1 + uint32(varg1 >> 160);
                    } else {
                        0x2576(varg2 >> 248, uint32(varg1 >> 160));
                        MEM[v100 + 160] = (varg2 >> 248) + uint32(varg1 >> 160);
                    }
                    v115 = v116 = 0x275c82ca4f491f0c9b7ffa4f6e3e85613c4a0d2c4f67b64995dc68806f0586e5;
                    goto 0x14430x23ecB0x30f8B0x10e;
                } else {
                    v115 = v117 = 0x275c82ca4f491f0c9b7ffa4f6e3e85613c4a0d2c4f67b64995dc68806f0586e5;
                }
                emit v115(msg.gas << 64 | v114 << 32 | uint32(varg1 >> 160), msg.gas << 64 | v114 << 32 | MEM[160 + v100]);
                exit;
            } else {
                require(0x12065fe0 == function_selector >> 224);
                getBalance();
            }
        } else if (0x22771e1e == function_selector >> 224) {
            0x22771e1e();
        } else if (0x2fadc8f5 == function_selector >> 224) {
            0x2fadc8f5();
        } else {
            require(0x4ff5c5ed == function_selector >> 224);
            0x4ff5c5ed();
        }
    } else if (0xdf216439 > function_selector >> 224) {
        if (0x5cbfeffb == function_selector >> 224) {
            0x5cbfeffb();
        } else if (0x9b96eece == function_selector >> 224) {
            getBalanceOf(address);
        } else {
            require(0x9e281a98 == function_selector >> 224);
            withdrawToken(address,uint256);
        }
    } else if (0xdf216439 == function_selector >> 224) {
        0xdf216439();
    } else if (0xe0e1abb0 == function_selector >> 224) {
        deposit0(uint256);
    } else {
        require(0xfa77de40 == function_selector >> 224);
        destory(address,uint256);
    }
}

// Decompiled by library.dedaub.com
// 2023.07.06 08:25 UTC
// Compiled using the solidity compiler version 0.8.17


pragma solidity ^0.8.0;


function withdrawAllBNB() public nonPayable { 
    require(msg.data.length + ~3 >= 0);
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (!this.balance) {
        v0 = v1 = 2300;
        goto 0x1080;
    }
    v2, v3 = address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339).call().value(this.balance).gas(v0);
    require(v2, v3, RETURNDATASIZE());
    return ;
}

function 0x51cac898(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length + ~3 >= 64);
    require(!(varg0 - varg0));
    require(varg1 <= 0xffffffffffffffff);
    require(4 + varg1 + 31 < msg.data.length);
    v0 = v1 = varg1.length;
    require(v1 <= 0xffffffffffffffff);
    v0 = v2 = varg1.data;
    require((v1 << 5) + (4 + varg1) + 32 <= msg.data.length);
    v0 = v3 = 0xffffffffffffffffffffffffffffffffffffffff;
    v0 = v4 = varg0;
    while (v0 >= v0) {
        require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v5 = 0x1aaa((v0 << 5) + v0);
        if (v0 == v5 & v0) {
            require(v0 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow
            v0 += 1;
        } else {
            require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v6 = 0x1aaa((v0 << 5) + v0);
            v0 = v7 = 32;
            v8, v0 = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address(v0), address(v6)).gas(msg.gas);
            require(v8, MEM[64], RETURNDATASIZE());
            if (v8) {
                if (v7 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v9 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v9 = v10 = MEM[64] + v7;
                }
                require(v9 - MEM[64] >= 32);
                require(!0xe6a4390500000000000000000000000000000000000000000000000000000000);
            }
            v11 = v0 & v0;
            if (!v11) {
                require(v0 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow
                v0 += 1;
            } else {
                v12, v0, v0, /* uint32 */ v13 = v11.getReserves().gas(msg.gas);
                require(v12, MEM[64], RETURNDATASIZE());
                v0 = v14 = 0xffffffffffffffffffffffffffff;
                if (v12) {
                    if (RETURNDATASIZE() < 96) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v15 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v15 = v16 = MEM[64] + 96;
                    }
                    require(v15 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v0 - uint112(v0)));
                    require(!(v13 - uint32(v13)));
                }
                v0 = v17 = 23361;
                v0 = v18 = 4631;
                v0 = v19 = 4644;
                require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v20 = (v0 << 5) + v0;
                while (1) {
                    v20 = v21 = 0x1aaa(v20);
                    if (v20 & v0 <= v0) {
                        require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v0 = v22 = 0x1aaa((v0 << 5) + v0);
                    }
                    require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v20 = v23 = (v0 << 5) + v0;
                    goto 0x5b41;
                }
                require(!(msg.data[v20] - address(msg.data[v20])));
                if (0 == (msg.data[v20] & v0 == v0 & v0)) {
                    v0 = v0 & v0;
                    goto 0x1234;
                } else {
                    v0 = v0 & v0;
                }
                if (!v0) {
                    require(v0 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow
                    v0 += 1;
                } else {
                    require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v24 = 0x1aaa((v0 << 5) + v0);
                    if ((v24 & v0) - 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) {
                        v25 = new uint256[](2);
                        require(!((v25 + 96 > 0xffffffffffffffff) | (v25 + 96 < v25)), Panic(65)); // failed memory allocation (too much memory)
                        CALLDATACOPY(v25 + v0, msg.data.length, 64);
                        require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v26 = 0x1aaa((v0 << 5) + v0);
                        require(v25.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[v25.data] = v26 & v0;
                        require(1 < v25.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[64 + v25] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
                        v27 = new uint256[](v25.length);
                        v28 = v29 = v27.data;
                        v30 = v31 = v25.data;
                        v32 = v33 = 0;
                        while (v32 >= v25.length) {
                            MEM[v28] = address(MEM[v30]);
                            v28 += 32;
                            v30 += 32;
                            v32 += 1;
                        }
                        v34 = 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(v0, v27).gas(msg.gas);
                        require(v34, MEM[64], RETURNDATASIZE());
                        if (v34) {
                            RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v0 = v35 = 0x3741(MEM[64], MEM[64] + RETURNDATASIZE());
                        }
                        require(1 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v0 = v36 = MEM[64 + v0];
                    }
                    if (v0 > v0) {
                        require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v0 = v37 = 0x1aaa((v0 << 5) + v0);
                    }
                    require(v0 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow
                    v0 += 1;
                }
            }
        }
    }
    return address(v0), v0;
}

function 0x425ac9c4(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4) public nonPayable { 
    require(msg.data.length + ~3 >= 160);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        0x272d(varg0, varg1, varg2, varg3, varg4);
        return ;
    } else {
        0x272d(varg0, varg1, varg2, varg3, varg4);
        v0 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v1 = 32;
            if (v1 > RETURNDATASIZE()) {
                v1 = v2 = RETURNDATASIZE();
                goto 0xaf60x1400;
            }
            require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v1 - MEM[64] >= v1);
            return ;
        } else {
            return ;
        }
    }
}

function 0x1c6fb5cd(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4, bytes20 varg5) public nonPayable { 
    require(msg.data.length + ~3 >= 192);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    require(!(varg5 - varg5));
    if (msg.gas <= 0xb2d05e00) {
        0x1af7(varg0, varg1, varg2, varg3, varg4, varg5);
        return ;
    } else {
        0x1af7(varg0, varg1, varg2, varg3, varg4, varg5);
        v0 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v1 = 32;
            if (v1 > RETURNDATASIZE()) {
                v1 = v2 = RETURNDATASIZE();
                goto 0xaf60x1466;
            }
            require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v1 - MEM[64] >= v1);
            return ;
        } else {
            return ;
        }
    }
}

function transferTokens(address[] varg0, address varg1) public nonPayable { 
    require(msg.data.length + ~3 >= 64);
    require(varg0 <= 0xffffffffffffffff);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= 0xffffffffffffffff);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(varg1 - varg1));
    v0 = v1 = 0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339;
    require(!(msg.sender - address(v1)), Unauthorized(msg.sender));
    if (!varg1) {
        v2 = this.code.size;
        goto 0x1515;
    }
    while (v3 >= varg0.length) {
        require(v3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v4 = 0x1aaa((v3 << 5) + varg0.data);
        v5 = v6 = 32;
        v7, v3 = address(v4).balanceOf(this).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
        if (v7) {
            if (v6 > RETURNDATASIZE()) {
                v5 = v8 = RETURNDATASIZE();
                goto 0x1648;
            }
            require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v5 - MEM[64] >= v6);
            v9 = this.code.size;
        }
        if (v3) {
            require(v3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v10 = 0x1aaa((v3 << 5) + varg0.data);
            v11, /* bool */ v12 = address(v10).transfer(address(v0), v3).gas(msg.gas);
            require(v11, MEM[64], RETURNDATASIZE());
            if (v11) {
                if (RETURNDATASIZE() < v6) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v13 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v13 = v14 = MEM[64] + v6;
                }
                require(v13 - MEM[64] >= 32);
                require(!(v12 - bool(v12)));
                v15 = this.code.size;
            }
        }
        require(v3 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Panic(17)); // arithmetic overflow or underflow
        v3 += 1;
    }
    return ;
}

function 0x0e399e90(uint256 varg0, bytes20 varg1, bytes20 varg2, bytes20 varg3) public nonPayable { 
    require(msg.data.length + ~3 >= 128);
    require(!(varg1 - varg1));
    require(!(varg2 - varg2));
    require(!(varg3 - varg3));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        0x2a43(varg0, varg1, varg2, varg3);
        return ;
    } else {
        0x2a43(varg0, varg1, varg2, varg3);
        v0 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v1 = 32;
            if (v1 > RETURNDATASIZE()) {
                v1 = v2 = RETURNDATASIZE();
                goto 0xaf60x1674;
            }
            require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v1 - MEM[64] >= v1);
            return ;
        } else {
            return ;
        }
    }
}

function 0x1aaa(uint256 varg0) private { 
    require(!(msg.data[varg0] - address(msg.data[varg0])));
    return msg.data[varg0];
}

function 0x1af7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (varg0) {
        require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg0 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = 0x380a((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg5) >> 96);
    v2, /* uint112 */ v3, /* uint112 */ v3, /* uint32 */ v4 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96).getReserves().gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v5 = 0;
    if (v2) {
        if (RETURNDATASIZE() < 96) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v6 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v6 = v7 = MEM[64] + 96;
        }
        require(v6 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v3 - uint112(v3)));
        require(!(v4 - uint32(v4)));
        v8 = this.code.size;
    }
    if ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96 != address(v1)) {
        v9 = v10, v11 = v12, varg1 = v13 = 0x1bc0(uint112(v3), 7127, uint112(v3));
    } else {
        v11 = 10000;
        require(uint112(v3) * v11 + varg1 * 9975, Panic(18)); // division by zero
        v9 = varg1 * uint112(v3) * 9975 / (uint112(v3) * v11 + varg1 * 9975);
    }
    require(v9 >= varg2 * v11);
    v14, /* bool */ v15 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).transfer(address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96), varg1).gas(msg.gas);
    require(v14, MEM[64], RETURNDATASIZE());
    if (v14) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v16 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v16 = v17 = MEM[64] + 32;
        }
        require(v16 - MEM[64] >= 32);
        require(!(v15 - bool(v15)));
        v18 = this.code.size;
    }
    if ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96 != address(v1)) {
        v9 = v19 = 0;
        goto 0x1c410x1af7;
    } else {
        v9 = v20 = 0;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96).code.size);
    v21 = v22 = 0;
    while (v21 >= 0) {
        MEM[160 + (v21 + (MEM[64] + 4))] = MEM[32 + (v21 + MEM[64])];
        v21 += 32;
    }
    v23, v24 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96).swap(v9, v9, address(this), 0).gas(msg.gas);
    require(v23, v24, RETURNDATASIZE());
    if (v23) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x1bc0(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 * 10000 + v0 * 9975, Panic(18)); // division by zero
    return v0 * varg0 * 9975 / (varg2 * 10000 + v0 * 9975), 10000, v0;
}

function 0xea5c0d16(address varg0, address varg1) public payable { 
    require(msg.data.length + ~3 >= 64);
    require(!(varg0 - varg0));
    require(!(varg1 - varg1));
    v0 = v1 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
    require(v1.code.size);
    v2, v3 = v1.deposit().value(msg.value).gas(msg.gas);
    require(v2, v3, RETURNDATASIZE());
    if (v2) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        v4 = this.code.size;
    }
    v0 = v5 = 0xffffffffffffffffffffffffffffffffffffffff;
    if (v1 - varg1) {
        v6 = v7 = MEM[64];
        v0 = v8 = 32;
        v9 = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(v1, varg1).gas(msg.gas);
        require(v9, MEM[64], RETURNDATASIZE());
        if (v9) {
            v10 = v11 = 2619;
            if (v8 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > 0xffffffffffffffff) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v12 = v13 = v7 + v8;
            }
        }
    } else {
        v0 = v14 = msg.value;
    }
    v6 = v15 = MEM[64];
    v16 = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address(v0), address(v0)).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    if (v16) {
        v10 = v17 = 1869;
        v18 = v19 = 32;
        if (32 > RETURNDATASIZE()) {
            goto 0x7540x1c2;
        }
    }
    v20 = new uint256[](2);
    require(!((v20 + 96 > 0xffffffffffffffff) | (v20 + 96 < v20)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v20.data, msg.data.length, 64);
    require(v20.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[v20.data] = v0 & v0;
    require(1 < v20.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[64 + v20] = v0 & v0;
    v0 = v21 = new uint256[](2);
    require(!((v21 + 96 > 0xffffffffffffffff) | (v21 + 96 < v21)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v21.data, msg.data.length, 64);
    require(v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[v21.data] = v0 & v0;
    require(1 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[64 + v21] = v0 & v0;
    v22, v0 = (v0 & v0).balanceOf(this).gas(msg.gas);
    require(v22, MEM[64], RETURNDATASIZE());
    if (v22) {
        v23 = v24 = 32;
        if (32 > RETURNDATASIZE()) {
            v23 = v25 = RETURNDATASIZE();
            goto 0x703;
        }
        require(!((MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v23 - MEM[64] >= 32);
    }
    MEM[MEM[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 4] = v0;
    MEM[MEM[64] + 4 + 32] = 64;
    MEM[MEM[64] + 4 + 64] = v20.length;
    v26 = v27 = MEM[64] + 4 + 96;
    v28 = v29 = v20.data;
    v30 = v31 = 0;
    while (v30 >= v20.length) {
        MEM[v26] = address(MEM[v28]);
        v26 += 32;
        v28 += 32;
        v30 += 1;
    }
    v32 = 0x10ed43c718714eb63d5aa57b78b54704e256024e.staticcall(MEM[(MEM[64]) len (v26 - MEM[64])], MEM[(MEM[64]) len v0]).gas(msg.gas);
    require(v32, MEM[64], RETURNDATASIZE());
    v0 = v33 = 992;
    v34 = v35 = 982;
    if (v32) {
        RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v0 = v36 = 0x3741(MEM[64], MEM[64] + RETURNDATASIZE());
        v37 = this.code.size;
    }
    require(1 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v38 = 64 + v0;
    goto {'0x51d', '0x3d6'};
    v0 = v39 = MEM[v38];
    v0 = v40 = 0x380a(v0, v0);
    v0 = v41 = 0xffffffffffffffffffffffffffffffffffffffff;
    v0 = v42 = address(v0);
    v0 = v43 = address(v0);
    v0 = v44 = 64;
    v45 = v46 = MEM[v44];
    v0 = v47 = 32;
    v0 = v48 = 0;
    v49 = v43.transfer(address(v0), v0).value(v48).gas(msg.gas);
    require(v49, MEM[v44], RETURNDATASIZE());
    if (v49) {
        v50 = v51 = 9119;
        if (v47 <= RETURNDATASIZE()) {
            require(!((v46 + 32 > 0xffffffffffffffff) | (v46 + 32 < v46)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v46 + 32;
            v52 = v53 = v46 + v47;
        }
    }
    v0 = v54 = MEM[v38];
    goto 0x2192;
    require(!((v6 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v6 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v12 = v6 + v18;
    require(v12 - v6 >= 32);
    v0 = v55 = MEM[v6];
    require(!(v55 - address(v55)));
    goto {'0x74d', '0xa3b'};
    v56 = this.code.size;
    v57 = this.code.size;
    goto 0x7c6;
    v18 = RETURNDATASIZE();
    goto 0x73b0x1c2;
    if (v0 >= v0 & v0) {
        goto 0x7d3;
    }
    v45 = v58 = MEM[64];
    v0 = v59 = v0 & v0;
    v60 = v0.transfer(address(v0), msg.value).gas(msg.gas);
    require(v60, MEM[64], RETURNDATASIZE());
    if (v60) {
        v50 = v61 = 2574;
        if (v0 > RETURNDATASIZE()) {
            goto 0xa150x1c2;
        }
    }
    v62 = v63 = MEM[64];
    v64 = v0.getReserves().gas(msg.gas);
    require(v64, MEM[64], RETURNDATASIZE());
    v0 = v65 = 0;
    if (v64) {
        v66 = v67 = 2527;
        v68 = v69 = 96;
        if (v69 > RETURNDATASIZE()) {
            goto 0x9e80x1c2;
        }
    }
    v70 = v0 == v0 & v0;
    v71 = v72 = uint112(v0);
    v71 = v73 = uint112(v0);
    if (v0 != v0 & v0) {
        goto 0x877;
    }
    v74 = v0.balanceOf(v0).gas(msg.gas);
    require(v74, MEM[64], RETURNDATASIZE());
    v75 = v76 = 0;
    if (v74) {
        if (v0 > RETURNDATASIZE()) {
            v0 = v77 = RETURNDATASIZE();
            goto 0x98a;
        }
        require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v0 - MEM[64] >= v0, v76, v76);
    }
    require(v75 - v71 <= v75, Panic(17)); // arithmetic overflow or underflow
    require(v71 * 10000 + (v75 - v71) * 9975, Panic(18)); // division by zero
    v0 = v78 = (v75 - v71) * v71 * 9975 / (v71 * 10000 + (v75 - v71) * 9975);
    if (v0 != v0 & v0) {
        v0 = v79 = 0;
        goto 0x8ea;
    } else {
        v0 = v80 = 0;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(v0.code.size);
    v81 = v82 = 0;
    while (v81 >= 0) {
        MEM[160 + (v81 + (MEM[64] + 4))] = MEM[32 + (v81 + MEM[64])];
        v81 += 32;
    }
    v83 = v0.swap(v0, v0, address(this), 0).gas(msg.gas);
    require(v83, MEM[64], RETURNDATASIZE());
    if (v83) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        v84 = this.code.size;
    }
    require(!((v62 + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v62 + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v62)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v62 + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v85 = v62 + v68;
    require(v85 - v62 >= 96);
    v0 = v86 = MEM[v62];
    require(!(v86 - uint112(v86)));
    v0 = v87 = MEM[v62 + 32];
    require(!(v87 - uint112(v87)));
    require(!(MEM[v62 + 64] - uint32(MEM[v62 + 64])));
    goto {'0x9df', '0x2380'};
    v88 = this.code.size;
    goto 0x851;
    v89 = this.code.size;
    v68 = RETURNDATASIZE();
    goto 0x9cd0x1c2;
    require(!((v45 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v45 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v45 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v52 = v45 + v0;
    require(v52 - v45 >= 32);
    require(!(MEM[v45] - bool(MEM[v45])));
    goto {'0xa0e', '0x239f'};
    v90 = this.code.size;
    v91 = this.code.size;
    v62 = v92 = MEM[v0];
    MEM[v92] = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
    v93 = v0.staticcall(MEM[v92 len 4], MEM[v92 len 96]).gas(msg.gas);
    if (!v93) {
        v94 = MEM[v0];
        RETURNDATACOPY(v94, v0, RETURNDATASIZE());
        revert(v94, RETURNDATASIZE());
    } else if (v93) {
        v66 = v95 = 9088;
        if (96 <= RETURNDATASIZE()) {
            require(!((v92 + 96 > 0xffffffffffffffff) | (v92 + 96 < v92)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v92 + 96;
            v85 = v96 = v92 + 96;
        }
    }
    v97 = v0 == v0 & v0;
    v98 = v99 = uint112(v0);
    v98 = v100 = uint112(v0);
    if (v0 != v0 & v0) {
        v101 = v102 = 36;
        goto 0x2266;
    } else {
        v101 = v103 = 36;
    }
    v104 = MEM[v0];
    MEM[v104] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
    MEM[v104 + 4] = v0;
    v105 = v0.staticcall(MEM[v104 len v101], MEM[v104 len v0]).gas(msg.gas);
    if (!v105) {
        v106 = MEM[v0];
        RETURNDATACOPY(v106, v0, RETURNDATASIZE());
        revert(v106, RETURNDATASIZE());
    } else {
        if (v105) {
            if (v0 > RETURNDATASIZE()) {
                v0 = v107 = RETURNDATASIZE();
                goto 0x232d;
            }
            require(!((v104 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v104 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v104)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v104 + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(v104 + v0 - v104 >= v0, v0, v0);
            v0 = v108 = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        }
        require(v0 - v98 <= v0, Panic(17)); // arithmetic overflow or underflow
        require(v98 * 10000 + (v0 - v98) * 9975, Panic(18)); // division by zero
        v0 = v109 = (v0 - v98) * v98 * 9975 / (v98 * 10000 + (v0 - v98) * 9975);
        if (v0 != v0 & v0) {
            goto 0x22c0;
        }
        v110 = MEM[v0];
        require(!((v110 + 32 > 0xffffffffffffffff) | (v110 + 32 < v110)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v110 + 32;
        MEM[v110] = v0;
        require(v0.code.size, v0, v0);
        v111 = MEM[v0];
        MEM[v111] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v111 + 4] = v0;
        MEM[v111 + 4 + 32] = v0;
        MEM[v111 + 4 + 64] = address(this);
        MEM[v111 + 4 + 96] = 128;
        MEM[v111 + 4 + 128] = MEM[v110];
        v112 = v113 = 0;
        while (v112 >= MEM[v110]) {
            MEM[160 + (v112 + (v111 + 4))] = MEM[32 + (v112 + v110)];
            v112 += 32;
        }
        MEM[v111 + 4 + MEM[v110] + 160] = 0;
        v114 = v0.call(MEM[v111 len ((MEM[v110] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v111 + 4) + 160 - v111)], MEM[v111 len v0]).value(v0).gas(msg.gas);
        if (!v114) {
            v115 = MEM[v0];
            RETURNDATACOPY(v115, v0, RETURNDATASIZE());
            revert(v115, RETURNDATASIZE());
        } else {
            if (v114) {
                require(v111 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                goto {'0x3e0', '0x524'};
            } else {
                goto {'0x3e0', '0x524'};
            }
            v116, v0 = (v0 & v0).balanceOf(this).gas(msg.gas);
            require(v116, MEM[64], RETURNDATASIZE());
            if (v116) {
                v117 = v118 = 32;
                if (32 > RETURNDATASIZE()) {
                    v117 = v119 = RETURNDATASIZE();
                    goto 0x6b9;
                }
                require(!((MEM[64] + (v117 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v117 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v117 - MEM[64] >= 32);
            }
            v0 = v120 = v0 - v0;
            require(v120 <= v0, Panic(17)); // arithmetic overflow or underflow
            v121 = v0 - v120;
            require(v121 <= v0, Panic(17)); // arithmetic overflow or underflow
            if (!(!v121 | (0xf4240 == v121 * 0xf4240 / v121))) {
                MEM[v0] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                MEM[4] = 17;
                revert(v0, 36);
            } else {
                require(v0, Panic(18)); // division by zero
                v0 = v121 * 0xf4240 / v0;
                v122, v0 = (v0 & v0).balanceOf(this).gas(msg.gas);
                require(v122, MEM[64], RETURNDATASIZE());
                if (v122) {
                    v123 = v124 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v123 = v125 = RETURNDATASIZE();
                        goto 0x656;
                    }
                    require(!((MEM[64] + (v123 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v123 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v123 - MEM[64] >= 32);
                }
                MEM[MEM[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = v120;
                MEM[MEM[64] + 4 + 32] = 64;
                v126 = MEM[v0];
                MEM[MEM[64] + 4 + 64] = v126;
                v127 = v128 = MEM[64] + 4 + 96;
                v129 = v130 = v0 + 32;
                v131 = v132 = 0;
                while (v131 >= v126) {
                    MEM[v127] = address(MEM[v129]);
                    v127 += 32;
                    v129 += 32;
                    v131 += 1;
                }
                v133 = 0x10ed43c718714eb63d5aa57b78b54704e256024e.staticcall(MEM[(MEM[64]) len (v127 - MEM[64])], MEM[(MEM[64]) len v0]).gas(msg.gas);
                require(v133, MEM[64], RETURNDATASIZE());
                v34 = v134 = 1309;
                v0 = v135 = 32;
                v0 = v136 = 1316;
                if (v133) {
                    RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v0 = v137 = 0x3741(MEM[64], MEM[64] + RETURNDATASIZE());
                    v138 = this.code.size;
                    goto 0x3d00x1c2;
                }
            }
            v139 = (v0 & v0).balanceOf(this).gas(msg.gas);
            require(v139, MEM[64], RETURNDATASIZE());
            if (v139) {
                v140 = v141 = 32;
                if (32 > RETURNDATASIZE()) {
                    v140 = v142 = RETURNDATASIZE();
                    goto 0x5e8;
                }
                require(!((MEM[64] + (v140 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v140 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v140 - MEM[64] >= 32);
            }
            v143 = v0 - v0;
            require(v143 <= v0, Panic(17)); // arithmetic overflow or underflow
            v144 = v0 - v143;
            require(v144 <= v0, Panic(17)); // arithmetic overflow or underflow
            if (!(!v144 | (0xf4240 == v144 * 0xf4240 / v144))) {
                MEM[v0] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                MEM[4] = 17;
                revert(v0, 36);
            } else {
                require(v0, Panic(18)); // division by zero
                v145 = v144 * 0xf4240 / v0;
                return v0, v145;
            }
        }
    }
    v0 = v146 = RETURNDATASIZE();
    goto 0x9fc0x1c2;
}

function 0x1e79(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (varg0) {
        require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg0 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
    v2 = 0x380a((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg5) >> 96);
    v3 = v4 = 0;
    v5 = v6 = 32;
    v7, /* bool */ v8 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).transfer(address(v1), varg1).value(v4).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    if (v7) {
        if (v6 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v9 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v9 = v10 = MEM[64] + v6;
        }
        require(v9 - MEM[64] >= 32);
        require(!(v8 - bool(v8)));
        v11 = this.code.size;
    }
    v12, /* uint112 */ v3, /* uint112 */ v3, /* uint32 */ v13 = v1.getReserves().gas(msg.gas);
    require(v12, MEM[64], RETURNDATASIZE());
    if (v12) {
        if (RETURNDATASIZE() < 96) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v14 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v14 = v15 = MEM[64] + 96;
        }
        require(v14 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v3 - uint112(v3)));
        require(!(v13 - uint32(v13)));
        v16 = this.code.size;
    }
    v17 = v18 = uint112(v3);
    v17 = v19 = uint112(v3);
    if ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96 != address(v2)) {
        goto 0x1f9e;
    }
    v20, /* uint112 */ v3 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).balanceOf(v1).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    if (v20) {
        if (v6 > RETURNDATASIZE()) {
            v5 = v21 = RETURNDATASIZE();
            goto 0x20d0;
        }
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= v6, v4, v4);
    }
    require(v3 - v17 <= v3, Panic(17)); // arithmetic overflow or underflow
    require(v17 * 10000 + (v3 - v17) * 9975, Panic(18)); // division by zero
    v3 = v22 = (v3 - v17) * v17 * 9975 / (v17 * 10000 + (v3 - v17) * 9975);
    require(v22 >= varg2 * 10000);
    if ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96 != address(v2)) {
        goto 0x2018;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(v1.code.size, v4, v4);
    v23 = v24 = 0;
    while (v23 >= 0) {
        MEM[160 + (v23 + (MEM[64] + 4))] = MEM[32 + (v23 + MEM[64])];
        v23 += 32;
    }
    v25, v26 = v1.swap(v3, v3, address(this), 0).value(v4).gas(msg.gas);
    require(v25, v26, RETURNDATASIZE());
    if (v25) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x23a6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (varg0) {
        require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg0 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
    v1 = v3 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
    if (0 == v3 < v2) {
        goto 0x24340x23a6;
    }
    v4, /* uint112 */ v5, /* uint112 */ v5, /* uint32 */ v6 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = v7 = 0;
    if (v4) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v8 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v8 = v9 = MEM[64] + 96;
        }
        require(v8 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v5 - uint112(v5)));
        require(!(v6 - uint32(v6)));
        v10 = this.code.size;
    }
    if (v3 != address(v1)) {
        v11 = v12, v13 = v14, varg1 = v15 = 0x1bc0(uint112(v5), 7127, uint112(v5));
    } else {
        v13 = 10000;
        require(uint112(v5) * v13 + varg1 * 9975, Panic(18)); // division by zero
        v11 = varg1 * uint112(v5) * 9975 / (uint112(v5) * v13 + varg1 * 9975);
        goto 0x1bd70x23a6;
    }
    require(v11 >= varg2 * v13);
    v16, /* bool */ v17 = v3.transfer(address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96), varg1).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    if (v16) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v18 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v18 = v19 = MEM[64] + 32;
        }
        require(v18 - MEM[64] >= 32);
        require(!(v17 - bool(v17)));
        v20 = this.code.size;
    }
    if (v3 != address(v1)) {
        v11 = v21 = 0;
        goto 0x1c410x23a6;
    } else {
        v11 = v22 = 0;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
    v23 = v24 = 0;
    while (v23 >= 0) {
        MEM[160 + (v23 + (MEM[64] + 4))] = MEM[32 + (v23 + MEM[64])];
        v23 += 32;
    }
    v25, v26 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).swap(v11, v11, address(this), 0).gas(msg.gas);
    require(v25, v26, RETURNDATASIZE());
    if (v25) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x272d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (varg0) {
        require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg0 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
    v1 = v3 = 0xe9e7cea3dedca5984780bafc599bd69add087d56;
    if (0 == v2 < v3) {
        goto 0x27880x272d;
    }
    v4, /* uint112 */ v5, /* uint112 */ v5, /* uint32 */ v6 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = v7 = 0;
    if (v4) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v8 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v8 = v9 = MEM[64] + 96;
        }
        require(v8 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v5 - uint112(v5)));
        require(!(v6 - uint32(v6)));
    }
    if (0 == (v2 == address(v1))) {
        v10 = v11, v12 = v13, varg1 = v14 = 0x1bc0(uint112(v5), 7127, uint112(v5));
    } else {
        v12 = 10000;
        require(uint112(v5) * v12 + varg1 * 9975, Panic(18)); // division by zero
        v10 = varg1 * uint112(v5) * 9975 / (uint112(v5) * v12 + varg1 * 9975);
        goto 0x1bd70x272d;
    }
    require(v10 >= varg2 * v12);
    v15, /* bool */ v16 = v2.transfer(address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96), varg1).gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    if (v15) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v17 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v17 = v18 = MEM[64] + 32;
        }
        require(v17 - MEM[64] >= 32);
        require(!(v16 - bool(v16)));
        v19 = this.code.size;
    }
    if (v2 != address(v1)) {
        v10 = v20 = 0;
        goto 0x1c410x272d;
    } else {
        v10 = v21 = 0;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
    v22 = v23 = 0;
    while (v22 >= 0) {
        MEM[160 + (v22 + (MEM[64] + 4))] = MEM[32 + (v22 + MEM[64])];
        v22 += 32;
    }
    v24, v25 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).swap(v10, v10, address(this), 0).gas(msg.gas);
    require(v24, v25, RETURNDATASIZE());
    if (v24) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x2a43(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (varg0) {
        require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg0 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg1) >> 96;
    v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
    v3 = v4 = 32;
    v5, v6 = v1.balanceOf(this).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    v6 = v7 = 0;
    if (v5) {
        if (v4 > RETURNDATASIZE()) {
            v3 = v8 = RETURNDATASIZE();
            goto 0x2cf6;
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= v4, v7, v7);
        v9 = this.code.size;
    }
    if (v6) {
        v10 = 0x380a(v1, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96);
        v11, /* bool */ v12 = v1.transfer(address(v2), v6).gas(msg.gas);
        require(v11, MEM[64], RETURNDATASIZE());
        if (v11) {
            if (v4 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v13 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v13 = v14 = MEM[64] + v4;
            }
            require(v13 - MEM[64] >= 32);
            require(!(v12 - bool(v12)));
            v15 = this.code.size;
        }
        v16, /* uint112 */ v17, /* uint112 */ v17, /* uint32 */ v18 = v2.getReserves().gas(msg.gas);
        require(v16, MEM[64], RETURNDATASIZE());
        v17 = v19 = 0;
        if (v16) {
            if (RETURNDATASIZE() < 96) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v20 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 96;
                v20 = v21 = MEM[64] + 96;
            }
            require(v20 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v17 - uint112(v17)));
            require(!(v18 - uint32(v18)));
        }
        v22 = v23 = uint112(v17);
        v22 = v24 = uint112(v17);
        if (0 == (v1 == address(v10))) {
            goto 0x2b9e;
        }
        v25, v26 = v1.balanceOf(v2).gas(msg.gas);
        require(v25, MEM[64], RETURNDATASIZE());
        v26 = v27 = 0;
        if (v25) {
            if (v4 > RETURNDATASIZE()) {
                v3 = v28 = RETURNDATASIZE();
                goto 0x2c72;
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v3 - MEM[64] >= v4, v27, v27);
        }
        require(v26 - v22 <= v26, Panic(17)); // arithmetic overflow or underflow
        require(v22 * 10000 + (v26 - v22) * 9975, Panic(18)); // division by zero
        v29 = (v26 - v22) * v22 * 9975 / (v22 * 10000 + (v26 - v22) * 9975);
        if (v1 != address(v10)) {
            v29 = v30 = 0;
            goto 0x2bda;
        } else {
            v29 = v31 = 0;
        }
        require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(v2.code.size);
        v32 = v33 = 0;
        while (v32 >= 0) {
            MEM[160 + (v32 + (MEM[64] + 4))] = MEM[32 + (v32 + MEM[64])];
            v32 += 32;
        }
        v34, v35 = v2.swap(v29, v29, address(this), 0).gas(msg.gas);
        require(v34, v35, RETURNDATASIZE());
        if (v34) {
            require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v36 = this.code.size;
        }
    }
    return ;
}

function 0x2d41(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    if (varg7) {
        require(block.timestamp * 1000 <= varg7 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg7 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96;
    v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96;
    v3 = 0x380a(v1, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg1) >> 96);
    v4, /* uint112 */ v5, /* uint112 */ v5, /* uint32 */ v6 = v2.getReserves().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = v7 = 0;
    if (v4) {
        if (RETURNDATASIZE() < 96) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v8 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v8 = v9 = MEM[64] + 96;
        }
        require(v8 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v5 - uint112(v5)));
        require(!(v6 - uint32(v6)));
        v10 = this.code.size;
    }
    v11 = v12 = uint112(v5);
    v11 = v13 = uint112(v5);
    if (0 == (v1 == address(v3))) {
        goto 0x2de6;
    }
    require(v11 < varg3);
    varg6 = v14 = (varg3 - v11) * varg4 / 1000;
    v15 = v16 = 32;
    v17, varg6 = v1.balanceOf(this).gas(msg.gas);
    require(v17, MEM[64], RETURNDATASIZE());
    varg6 = v18 = 0;
    if (v17) {
        if (v16 > RETURNDATASIZE()) {
            v15 = v19 = RETURNDATASIZE();
            goto 0x3000;
        }
        require(!((MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v15 - MEM[64] >= v16, v18, v18);
        v20 = this.code.size;
    }
    v21 = v22 = v14 > varg6;
    if (v14 <= varg6) {
        v21 = v23 = v14 > varg6;
        goto 0x2e49;
    }
    if (v21) {
        if (varg6 >= varg6) {
            goto 0x2fdc;
        }
        v24 = this.code.size;
        goto 0x2e4e;
    }
    require(varg6 >= varg5, AmountTooLow());
    v25, /* bool */ v26 = v1.transfer(address(v2), varg6).gas(msg.gas);
    require(v25, MEM[64], RETURNDATASIZE());
    if (v25) {
        if (v16 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v27 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v27 = v28 = MEM[64] + v16;
        }
        require(v27 - MEM[64] >= 32);
        require(!(v26 - bool(v26)));
        v29 = this.code.size;
    }
    v30, v31 = v1.balanceOf(v2).gas(msg.gas);
    require(v30, MEM[64], RETURNDATASIZE());
    v31 = v32 = 0;
    if (v30) {
        if (v16 > RETURNDATASIZE()) {
            v15 = v33 = RETURNDATASIZE();
            goto 0x2f57;
        }
        require(!((MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v15 - MEM[64] >= v16, v32, v32);
    }
    require(v31 - v11 <= v31, Panic(17)); // arithmetic overflow or underflow
    require(v11 * 10000 + (v31 - v11) * 9975, Panic(18)); // division by zero
    v34 = (v31 - v11) * v11 * 9975 / (v11 * 10000 + (v31 - v11) * 9975);
    if (v1 != address(v3)) {
        v34 = v35 = 0;
        goto 0x2eef0x2d41;
    } else {
        v34 = v36 = 0;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(v2.code.size);
    v37 = v38 = 0;
    while (v37 >= 0) {
        MEM[160 + (v37 + (MEM[64] + 4))] = MEM[32 + (v37 + MEM[64])];
        v37 += 32;
    }
    v39, v40 = v2.swap(v34, v34, address(this), 0).gas(msg.gas);
    require(v39, v40, RETURNDATASIZE());
    if (v39) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x30b6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    if (varg10) {
        require(block.timestamp * 1000 <= varg10 + 0x1853e022884, TooLate());
        require(0x1853e020d2c + varg10 < block.timestamp * 1000);
        v0 = this.code.size;
    }
    v1 = 0x380a((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg1) >> 96);
    v2, /* uint112 */ v3, /* uint112 */ v3, /* uint32 */ v4 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96).getReserves().gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v5 = 0;
    if (v2) {
        if (RETURNDATASIZE() < 96) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v6 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > 0xffffffffffffffff) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v6 = v7 = MEM[64] + 96;
        }
        require(v6 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v3 - uint112(v3)));
        require(!(v4 - uint32(v4)));
        v8 = this.code.size;
    }
    v9 = v10 = uint112(v3);
    v9 = v11 = uint112(v3);
    if (0 == ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96 == address(v1))) {
        goto 0x3162;
    }
    require(v9 < varg4);
    v12 = v13 = 0;
    if (v9 <= varg3) {
        goto 0x3179;
    } else {
        v12 = v14 = v9 - varg3;
    }
    require(varg5 - v12 > 0);
    varg7 = v15 = varg4 - v9;
    varg7 = v16 = (varg5 - v12) * varg6 / 1000;
    if (v15 > varg7) {
        v17 = this.code.size;
        goto 0x3199;
    }
    if (varg7 > v16) {
        v18 = this.code.size;
        goto 0x31a2;
    }
    v19 = (varg5 - v12 << 1) - v9 * varg9 / 1000;
    require(v19 > 0);
    require(v19, Panic(18)); // division by zero
    require(varg7 >= msg.gas * (v9 * varg8) / v19);
    v20, /* bool */ v21 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96).transfer(address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96), varg7).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    if (v20) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v22 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v22 = v23 = MEM[64] + 32;
        }
        require(v22 - MEM[64] >= 32);
        require(!(v21 - bool(v21)));
        v24 = this.code.size;
    }
    require(v9 * 10000 + varg7 * 9975, Panic(18)); // division by zero
    v25 = varg7 * v9 * 9975 / (v9 * 10000 + varg7 * 9975);
    if ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96 != address(v1)) {
        v25 = v26 = 0;
        goto 0x2eef0x30b6;
    } else {
        v25 = v27 = 0;
    }
    require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96).code.size);
    v28 = v29 = 0;
    while (v28 >= 0) {
        MEM[160 + (v28 + (MEM[64] + 4))] = MEM[32 + (v28 + MEM[64])];
        v28 += 32;
    }
    v30, v31 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96).swap(v25, v25, address(this), 0).gas(msg.gas);
    require(v30, v31, RETURNDATASIZE());
    if (v30) {
        require(MEM[64] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x3741(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= 0xffffffffffffffff);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    require(MEM[v0] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](MEM[v0]);
    require(!((v1 + ((MEM[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v1 + ((MEM[v0] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(v0 + (MEM[v0] << 5) + 32 <= varg1);
    v4 = v5 = 32 + v0;
    while (v4 >= v0 + (MEM[v0] << 5) + 32) {
        MEM[v2] = MEM[v4];
        v4 += 32;
        v2 += 32;
    }
    return v1;
}

function 0x380a(uint256 varg0, uint256 varg1) private { 
    if (address(varg0) >= address(varg1)) {
        return varg1;
    } else {
        return varg0;
    }
}

function 0xd58dd502(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4) public nonPayable { 
    require(msg.data.length + ~3 >= 160);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    if (msg.gas <= 0xb2d05e00) {
        require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v0 = this.code.size;
        }
        v1 = v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v1 = v3 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
        if (0 == v2 < v3) {
            v4 = v5 = 64;
            v6 = v7 = MEM[v5];
            v8 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v8, MEM[v5], RETURNDATASIZE());
            v9 = v10 = 0;
            if (v8) {
                goto 0x249a0x24f8B0xb12;
            }
        } else {
            v4 = v11 = 64;
            v6 = v12 = MEM[v11];
            v13 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v13, MEM[v11], RETURNDATASIZE());
            if (!v13) {
                v14 = v15 = v2 == address(v2);
                v16 = v17 = uint112(0);
                v18 = v19 = uint112(0);
                if (v15) {
                    v20 = v21 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v22 = v23 = varg1 * v17 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x24f8B0xb12;
                }
            }
        }
        v14 = v24 = v2 == address(v1);
        v16 = uint112(v9);
        v18 = uint112(v9);
        if (v24) {
            v20 = v25 = 10000;
            require(v18 * v25 + varg1 * 9975, Panic(18)); // division by zero
            v22 = varg1 * v16 * 9975 / (v18 * v25 + varg1 * 9975);
            goto 0x1bd70x24f8B0xb12;
        }
        v22 = v26, v20 = v27, v28 = v29 = 0x1bc0(v18, 7127, v16);
        if (v22 < varg2 * v20) {
            MEM[MEM[v4]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v4], 4);
        } else {
            v30 = MEM[v4];
            MEM[v30] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v30 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v30 + 36] = v28;
            v31 = v2.call(MEM[v30 len 68], MEM[v30 len 32]).gas(msg.gas);
            if (!v31) {
                RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                revert(MEM[v4], RETURNDATASIZE());
            } else {
                if (v31) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v32 = v33 = v30 + RETURNDATASIZE();
                    } else {
                        require(!((v30 + 32 > 0xffffffffffffffff) | (v30 + 32 < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + 32;
                        v32 = v34 = v30 + 32;
                    }
                    require(v32 - v30 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v35 = this.code.size;
                }
                if (!v14) {
                    v22 = v36 = 0;
                    goto 0x1c410x24f8B0xb12;
                } else {
                    v22 = v37 = 0;
                }
                require(!((MEM[v4] + 32 > 0xffffffffffffffff) | (MEM[v4] + 32 < MEM[v4])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v4] + 32;
                MEM[MEM[v4]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v4]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v4] + 4] = v22;
                MEM[MEM[v4] + 4 + 32] = v22;
                MEM[MEM[v4] + 4 + 64] = address(this);
                MEM[MEM[v4] + 4 + 96] = 128;
                MEM[MEM[v4] + 4 + 128] = 0;
                v38 = v39 = 0;
                while (v38 >= 0) {
                    MEM[160 + (v38 + (MEM[v4] + 4))] = MEM[32 + (v38 + MEM[v4])];
                    v38 += 32;
                }
                MEM[MEM[v4] + 4 + 0 + 160] = 0;
                v40 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v4]) len (0 + (MEM[v4] + 4) + 160 - MEM[v4])], MEM[(MEM[v4]) len 0]).gas(msg.gas);
                if (!v40) {
                    RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                    revert(MEM[v4], RETURNDATASIZE());
                } else {
                    if (v40) {
                        require(MEM[v4] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v4];
                        goto 0x599b;
                    }
                    return ;
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v41 = v42 = v6 + RETURNDATASIZE();
        } else {
            require(!((v6 + 96 > 0xffffffffffffffff) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + 96;
            v41 = v43 = v6 + 96;
        }
        require(v41 - v6 >= 96);
        v9 = v44 = MEM[v6];
        require(!(v44 - uint112(v44)));
        v9 = MEM[v6 + 32];
        require(!(v9 - uint112(v9)));
        require(!(MEM[v6 + 64] - uint32(MEM[v6 + 64])));
        v45 = this.code.size;
    } else {
        require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v46 = this.code.size;
        }
        v47 = v48 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v47 = v49 = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c;
        if (0 == v48 < v49) {
            v50 = v51 = 64;
            v52 = v53 = MEM[v51];
            v54 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v54, MEM[v51], RETURNDATASIZE());
            v55 = v56 = 0;
            if (v54) {
                goto 0x249a0x24f8B0xa7c;
            }
        } else {
            v50 = v57 = 64;
            v52 = v58 = MEM[v57];
            v59 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v59, MEM[v57], RETURNDATASIZE());
            if (!v59) {
                v60 = v61 = v48 == address(v48);
                v62 = v63 = uint112(0);
                v64 = v65 = uint112(0);
                if (v61) {
                    v66 = v67 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v68 = v69 = varg1 * v63 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x24f8B0xa7c;
                }
            }
        }
        v60 = v70 = v48 == address(v47);
        v62 = uint112(v55);
        v64 = uint112(v55);
        if (v70) {
            v66 = v71 = 10000;
            require(v64 * v71 + varg1 * 9975, Panic(18)); // division by zero
            v68 = varg1 * v62 * 9975 / (v64 * v71 + varg1 * 9975);
            goto 0x1bd70x24f8B0xa7c;
        }
        v68 = v72, v66 = v73, v28 = v74 = 0x1bc0(v64, 7127, v62);
        if (v68 < varg2 * v66) {
            MEM[MEM[v50]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v50], 4);
        } else {
            v75 = MEM[v50];
            MEM[v75] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v75 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v75 + 36] = v28;
            v76 = v48.call(MEM[v75 len 68], MEM[v75 len 32]).gas(msg.gas);
            if (!v76) {
                RETURNDATACOPY(MEM[v50], 0, RETURNDATASIZE());
                revert(MEM[v50], RETURNDATASIZE());
            } else {
                if (v76) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v75 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v75 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v75)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v75 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v77 = v78 = v75 + RETURNDATASIZE();
                    } else {
                        require(!((v75 + 32 > 0xffffffffffffffff) | (v75 + 32 < v75)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v75 + 32;
                        v77 = v79 = v75 + 32;
                    }
                    require(v77 - v75 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v80 = this.code.size;
                }
                if (!v60) {
                    v68 = v81 = 0;
                    goto 0x1c410x24f8B0xa7c;
                } else {
                    v68 = v82 = 0;
                }
                require(!((MEM[v50] + 32 > 0xffffffffffffffff) | (MEM[v50] + 32 < MEM[v50])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v50] + 32;
                MEM[MEM[v50]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v50]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v50] + 4] = v68;
                MEM[MEM[v50] + 4 + 32] = v68;
                MEM[MEM[v50] + 4 + 64] = address(this);
                MEM[MEM[v50] + 4 + 96] = 128;
                MEM[MEM[v50] + 4 + 128] = 0;
                v83 = v84 = 0;
                while (v83 >= 0) {
                    MEM[160 + (v83 + (MEM[v50] + 4))] = MEM[32 + (v83 + MEM[v50])];
                    v83 += 32;
                }
                MEM[MEM[v50] + 4 + 0 + 160] = 0;
                v85 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v50]) len (0 + (MEM[v50] + 4) + 160 - MEM[v50])], MEM[(MEM[v50]) len 0]).gas(msg.gas);
                if (!v85) {
                    RETURNDATACOPY(MEM[v50], 0, RETURNDATASIZE());
                    revert(MEM[v50], RETURNDATASIZE());
                } else {
                    if (v85) {
                        require(MEM[v50] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        goto 0xa890xa5c;
                    }
                    v86 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
                    require(v86, MEM[64], RETURNDATASIZE());
                    if (v86) {
                        v87 = 32;
                        if (v87 > RETURNDATASIZE()) {
                            v87 = v88 = RETURNDATASIZE();
                            goto 0xaf60xa5c;
                        }
                        require(!((MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v87 - MEM[64] >= v87);
                        return ;
                    } else {
                        return ;
                    }
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v89 = v90 = v52 + RETURNDATASIZE();
        } else {
            require(!((v52 + 96 > 0xffffffffffffffff) | (v52 + 96 < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + 96;
            v89 = v91 = v52 + 96;
        }
        require(v89 - v52 >= 96);
        v55 = v92 = MEM[v52];
        require(!(v92 - uint112(v92)));
        v55 = MEM[v52 + 32];
        require(!(v55 - uint112(v55)));
        require(!(MEM[v52 + 64] - uint32(MEM[v52 + 64])));
        v93 = this.code.size;
    }
}

function 0xd1423278(bytes20 varg0, bytes20 varg1, bytes20 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public nonPayable { 
    require(msg.data.length + ~3 >= 352);
    require(!(varg0 - varg0));
    require(!(varg1 - varg1));
    require(!(varg2 - varg2));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        if (varg10) {
            require(block.timestamp * 1000 <= varg10 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg10 < block.timestamp * 1000);
            v0 = this.code.size;
        }
        v1 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96;
        v2 = v3 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96;
        v4 = 0x380a(v1, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg1) >> 96);
        v5 = v6 = 64;
        v7 = v8 = MEM[v6];
        v9 = v10 = 4;
        v11 = v3.getReserves().gas(msg.gas);
        require(v11, MEM[v6], RETURNDATASIZE());
        v12 = v13 = 0;
        if (v11) {
            v1 = v14 = 0xffffffffffffffffffffffffffffffffffffffff;
            v15 = v16 = 0xffffffffffffffffffffffffffff;
            v17 = v18 = 14022;
            if (RETURNDATASIZE() >= 96) {
                require(!((v8 + 96 > 0xffffffffffffffff) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v8 + 96;
                v19 = v20 = v8 + 96;
            }
        }
        v21 = v22 = v1 == address(v4);
        if (v1 != address(v4)) {
            v23 = v24 = uint112(v12);
            goto 0x341cB0xb87;
        } else {
            v23 = v25 = uint112(v12);
        }
        require(v23 < v2);
        v26 = v27 = 0;
        if (v23 <= varg3) {
            goto 0x3433B0xb87;
        } else {
            v26 = v23 - varg3;
        }
        require(v9 - v26 > 0);
        v28 = v29 = v2 - v23;
        v28 = v30 = (v9 - v26) * v5 / 1000;
        if (v29 > varg7) {
            v31 = this.code.size;
            goto 0x3453B0xb87;
        }
        if (v28 > v30) {
            v32 = this.code.size;
            goto 0x345cB0xb87;
        }
        require((v9 - v26 << 1) - v23 * v21 / 1000 > 0);
        require((v9 - v26 << 1) - v23 * v21 / 1000, Panic(18)); // division by zero
        require(v28 >= msg.gas * (v23 * varg8) / ((v9 - v26 << 1) - v23 * v21 / 1000));
        v15 = 32;
        v33, /* bool */ v34 = v1.transfer(address(v3), v28).gas(msg.gas);
        require(v33, MEM[v6], RETURNDATASIZE());
        if (v33) {
            if (v15 > RETURNDATASIZE()) {
                require(!((MEM[v6] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[v6] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v6])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v6] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v35 = v36 = MEM[v6] + RETURNDATASIZE();
            } else {
                require(!((MEM[v6] + 32 > 0xffffffffffffffff) | (MEM[v6] + 32 < MEM[v6])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v6] + 32;
                v35 = v37 = MEM[v6] + v15;
            }
            require(v35 - MEM[v6] >= 32);
            require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            v38 = this.code.size;
        }
        v7 = v39 = MEM[v6];
        v40 = v3.getReserves().gas(msg.gas);
        require(v40, MEM[v6], RETURNDATASIZE());
        v12 = v41 = 0;
        if (v40) {
            v17 = v42 = 13782;
            if (RETURNDATASIZE() >= 96) {
                require(!((v39 + 96 > 0xffffffffffffffff) | (v39 + 96 < v39)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v39 + 96;
                v19 = v43 = v39 + 96;
            }
        }
        require(!((v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v19 = v44 = v7 + RETURNDATASIZE();
        require(v19 - v7 >= 96);
        v12 = v45 = MEM[v7];
        require(!(v45 - uint112(v45)));
        v12 = MEM[v7 + 32];
        require(!(v12 - uint112(v12)));
        require(!(MEM[v7 + 64] - uint32(MEM[v7 + 64])));
        goto {'0x36c6B0xb87', '0x35d6B0xb87'};
        v46 = this.code.size;
        v47 = v48 = uint112(v12);
        v47 = uint112(v12);
        if (!v21) {
            v49 = v50 = 36;
            goto 0x3520B0xb87;
        } else {
            v49 = v51 = 36;
        }
        MEM[MEM[v5]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[MEM[v5] + v9] = v2;
        v52 = v1.staticcall(MEM[(MEM[v5]) len v49], MEM[(MEM[v5]) len v15]).gas(msg.gas);
        if (!v52) {
            RETURNDATACOPY(MEM[v5], 0, RETURNDATASIZE());
            revert(MEM[v5], RETURNDATASIZE());
        } else {
            v53 = v54 = 0;
            if (v52) {
                if (v15 > RETURNDATASIZE()) {
                    v15 = v55 = RETURNDATASIZE();
                    goto 0x358bB0xb87;
                }
                require(!((MEM[v5] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[v5] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v5])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v5] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[v5] + v15 - MEM[v5] >= v15, v54, v54);
                v53 = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            }
            require(v47 * 10000 + (v53 - v47) * 9975, Panic(18)); // division by zero
            v56 = (v53 - v47) * v47 * 9975 / (v47 * 10000 + (v53 - v47) * 9975);
            if (!v21) {
                v56 = v57 = 0;
                goto 0x2eef0x3379B0xb87;
            } else {
                v56 = v58 = 0;
            }
            require(!((MEM[v5] + 32 > 0xffffffffffffffff) | (MEM[v5] + 32 < MEM[v5])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v5] + 32;
            MEM[MEM[v5]] = 0;
            require(v2.code.size);
            MEM[MEM[v5]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            v59 = MEM[v5] + v9;
            MEM[v59] = v56;
            MEM[v59 + 32] = v56;
            MEM[v59 + 64] = address(this);
            MEM[v59 + 96] = 128;
            MEM[v59 + 128] = 0;
            v60 = v61 = 0;
            while (v60 >= 0) {
                MEM[160 + (v60 + v59)] = MEM[32 + (v60 + MEM[v5])];
                v60 += 32;
            }
            MEM[v59 + 0 + 160] = 0;
            v62 = v2.call(MEM[(MEM[v5]) len (0 + v59 + 160 - MEM[v5])], MEM[(MEM[v5]) len 0]).gas(msg.gas);
            if (!v62) {
                RETURNDATACOPY(MEM[v5], 0, RETURNDATASIZE());
                revert(MEM[v5], RETURNDATASIZE());
            } else {
                if (v62) {
                    require(MEM[v5] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[v5];
                    goto 0x59bd;
                }
                return MEM[22973 len 22973];
            }
        }
    } else {
        if (varg10) {
            require(block.timestamp * 1000 <= varg10 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg10 < block.timestamp * 1000);
            v63 = this.code.size;
        }
        v64 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg0) >> 96;
        v2 = v65 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg2) >> 96;
        v66 = 0x380a(v64, (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg1) >> 96);
        v5 = v67 = 64;
        v68 = v69 = MEM[v67];
        v9 = v70 = 4;
        v71 = v65.getReserves().gas(msg.gas);
        require(v71, MEM[v67], RETURNDATASIZE());
        v72 = v73 = 0;
        if (v71) {
            v64 = v74 = 0xffffffffffffffffffffffffffffffffffffffff;
            v75 = v76 = 0xffffffffffffffffffffffffffff;
            v77 = v78 = 14022;
            if (RETURNDATASIZE() >= 96) {
                require(!((v69 + 96 > 0xffffffffffffffff) | (v69 + 96 < v69)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v69 + 96;
                v79 = v80 = v69 + 96;
            }
        }
        v21 = v81 = v64 == address(v66);
        if (v64 != address(v66)) {
            v82 = v83 = uint112(v72);
            goto 0x341cB0xb74;
        } else {
            v82 = v84 = uint112(v72);
        }
        require(v82 < v2);
        v85 = v86 = 0;
        if (v82 <= varg3) {
            goto 0x3433B0xb74;
        } else {
            v85 = v82 - varg3;
        }
        require(v9 - v85 > 0);
        v28 = v87 = v2 - v82;
        v28 = v88 = (v9 - v85) * v5 / 1000;
        if (v87 > varg7) {
            v89 = this.code.size;
            goto 0x3453B0xb74;
        }
        if (v28 > v88) {
            v90 = this.code.size;
            goto 0x345cB0xb74;
        }
        require((v9 - v85 << 1) - v82 * v21 / 1000 > 0);
        require((v9 - v85 << 1) - v82 * v21 / 1000, Panic(18)); // division by zero
        require(v28 >= msg.gas * (v82 * varg8) / ((v9 - v85 << 1) - v82 * v21 / 1000));
        v75 = 32;
        v91, /* bool */ v92 = v64.transfer(address(v65), v28).gas(msg.gas);
        require(v91, MEM[v67], RETURNDATASIZE());
        if (v91) {
            if (v75 > RETURNDATASIZE()) {
                require(!((MEM[v67] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[v67] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v67])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v67] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v93 = v94 = MEM[v67] + RETURNDATASIZE();
            } else {
                require(!((MEM[v67] + 32 > 0xffffffffffffffff) | (MEM[v67] + 32 < MEM[v67])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v67] + 32;
                v93 = v95 = MEM[v67] + v75;
            }
            require(v93 - MEM[v67] >= 32);
            require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            v96 = this.code.size;
        }
        v68 = v97 = MEM[v67];
        v98 = v65.getReserves().gas(msg.gas);
        require(v98, MEM[v67], RETURNDATASIZE());
        v72 = v99 = 0;
        if (v98) {
            v77 = v100 = 13782;
            if (RETURNDATASIZE() >= 96) {
                require(!((v97 + 96 > 0xffffffffffffffff) | (v97 + 96 < v97)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v97 + 96;
                v79 = v101 = v97 + 96;
            }
        }
        require(!((v68 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v68 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v68)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v68 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v79 = v102 = v68 + RETURNDATASIZE();
        require(v79 - v68 >= 96);
        v72 = v103 = MEM[v68];
        require(!(v103 - uint112(v103)));
        v72 = MEM[v68 + 32];
        require(!(v72 - uint112(v72)));
        require(!(MEM[v68 + 64] - uint32(MEM[v68 + 64])));
        goto {'0x36c6B0xb74', '0x35d6B0xb74'};
        v104 = this.code.size;
        v105 = v106 = uint112(v72);
        v105 = uint112(v72);
        if (!v21) {
            v107 = v108 = 36;
            goto 0x3520B0xb74;
        } else {
            v107 = v109 = 36;
        }
        MEM[MEM[v5]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[MEM[v5] + v9] = v2;
        v110 = v64.staticcall(MEM[(MEM[v5]) len v107], MEM[(MEM[v5]) len v75]).gas(msg.gas);
        if (!v110) {
            RETURNDATACOPY(MEM[v5], 0, RETURNDATASIZE());
            revert(MEM[v5], RETURNDATASIZE());
        } else {
            v111 = v112 = 0;
            if (v110) {
                if (v75 > RETURNDATASIZE()) {
                    v75 = v113 = RETURNDATASIZE();
                    goto 0x358bB0xb74;
                }
                require(!((MEM[v5] + (v75 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[v5] + (v75 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v5])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v5] + (v75 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[v5] + v75 - MEM[v5] >= v75, v112, v112);
                v111 = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            }
            require(v105 * 10000 + (v111 - v105) * 9975, Panic(18)); // division by zero
            v114 = (v111 - v105) * v105 * 9975 / (v105 * 10000 + (v111 - v105) * 9975);
            if (!v21) {
                v114 = v115 = 0;
                goto 0x2eef0x3379B0xb74;
            } else {
                v114 = v116 = 0;
            }
            require(!((MEM[v5] + 32 > 0xffffffffffffffff) | (MEM[v5] + 32 < MEM[v5])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v5] + 32;
            MEM[MEM[v5]] = 0;
            require(v2.code.size);
            MEM[MEM[v5]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            v117 = MEM[v5] + v9;
            MEM[v117] = v114;
            MEM[v117 + 32] = v114;
            MEM[v117 + 64] = address(this);
            MEM[v117 + 96] = 128;
            MEM[v117 + 128] = 0;
            v118 = v119 = 0;
            while (v118 >= 0) {
                MEM[160 + (v118 + v117)] = MEM[32 + (v118 + MEM[v5])];
                v118 += 32;
            }
            MEM[v117 + 0 + 160] = 0;
            v120 = v2.call(MEM[(MEM[v5]) len (0 + v117 + 160 - MEM[v5])], MEM[(MEM[v5]) len 0]).gas(msg.gas);
            if (!v120) {
                RETURNDATACOPY(MEM[v5], 0, RETURNDATASIZE());
                revert(MEM[v5], RETURNDATASIZE());
            } else {
                if (v120) {
                    require(MEM[v5] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                    goto 0xa890xb1b;
                }
                v121 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + 2697 - msg.gas + 35154) / 41947).value(msg.gas).gas(msg.gas);
                require(v121, MEM[64], RETURNDATASIZE());
                if (v121) {
                    v122 = 32;
                    if (v122 > RETURNDATASIZE()) {
                        v122 = v123 = RETURNDATASIZE();
                        goto 0xaf60xb1b;
                    }
                    require(!((MEM[64] + (v122 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v122 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v122 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v122 - MEM[64] >= v122, msg.gas, msg.gas);
                    return MEM[msg.gas len msg.gas];
                } else {
                    return MEM[msg.gas len msg.gas];
                }
            }
        }
    }
}

function 0xbe34f1b5(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4) public nonPayable { 
    require(msg.data.length + ~3 >= 160);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    if (msg.gas <= 0xb2d05e00) {
        require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v0 = this.code.size;
        }
        v1 = v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v1 = v3 = 0xe9e7cea3dedca5984780bafc599bd69add087d56;
        if (0 == v3 < v2) {
            v4 = v5 = 64;
            v6 = v7 = MEM[v5];
            v8 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v8, MEM[v5], RETURNDATASIZE());
            v9 = v10 = 0;
            if (v8) {
                goto 0x249a0x2612B0xbed;
            }
        } else {
            v4 = v11 = 64;
            v6 = v12 = MEM[v11];
            v13 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v13, MEM[v11], RETURNDATASIZE());
            if (!v13) {
                v14 = v15 = v3 == address(v3);
                v16 = v17 = uint112(0);
                v18 = v19 = uint112(0);
                if (v15) {
                    v20 = v21 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v22 = v23 = varg1 * v17 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x2612B0xbed;
                }
            }
        }
        v14 = v24 = v3 == address(v1);
        v16 = uint112(v9);
        v18 = uint112(v9);
        if (v24) {
            v20 = v25 = 10000;
            require(v18 * v25 + varg1 * 9975, Panic(18)); // division by zero
            v22 = varg1 * v16 * 9975 / (v18 * v25 + varg1 * 9975);
            goto 0x1bd70x2612B0xbed;
        }
        v22 = v26, v20 = v27, v28 = v29 = 0x1bc0(v18, 7127, v16);
        if (v22 < varg2 * v20) {
            MEM[MEM[v4]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v4], 4);
        } else {
            v30 = MEM[v4];
            MEM[v30] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v30 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v30 + 36] = v28;
            v31 = v3.call(MEM[v30 len 68], MEM[v30 len 32]).gas(msg.gas);
            if (!v31) {
                RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                revert(MEM[v4], RETURNDATASIZE());
            } else {
                if (v31) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v32 = v33 = v30 + RETURNDATASIZE();
                    } else {
                        require(!((v30 + 32 > 0xffffffffffffffff) | (v30 + 32 < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + 32;
                        v32 = v34 = v30 + 32;
                    }
                    require(v32 - v30 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v35 = this.code.size;
                }
                if (!v14) {
                    v22 = v36 = 0;
                    goto 0x1c410x2612B0xbed;
                } else {
                    v22 = v37 = 0;
                }
                require(!((MEM[v4] + 32 > 0xffffffffffffffff) | (MEM[v4] + 32 < MEM[v4])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v4] + 32;
                MEM[MEM[v4]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v4]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v4] + 4] = v22;
                MEM[MEM[v4] + 4 + 32] = v22;
                MEM[MEM[v4] + 4 + 64] = address(this);
                MEM[MEM[v4] + 4 + 96] = 128;
                MEM[MEM[v4] + 4 + 128] = 0;
                v38 = v39 = 0;
                while (v38 >= 0) {
                    MEM[160 + (v38 + (MEM[v4] + 4))] = MEM[32 + (v38 + MEM[v4])];
                    v38 += 32;
                }
                MEM[MEM[v4] + 4 + 0 + 160] = 0;
                v40 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v4]) len (0 + (MEM[v4] + 4) + 160 - MEM[v4])], MEM[(MEM[v4]) len 0]).gas(msg.gas);
                if (!v40) {
                    RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                    revert(MEM[v4], RETURNDATASIZE());
                } else {
                    if (v40) {
                        require(MEM[v4] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v4];
                        goto 0x59df;
                    }
                    return ;
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v41 = v42 = v6 + RETURNDATASIZE();
        } else {
            require(!((v6 + 96 > 0xffffffffffffffff) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + 96;
            v41 = v43 = v6 + 96;
        }
        require(v41 - v6 >= 96);
        v9 = v44 = MEM[v6];
        require(!(v44 - uint112(v44)));
        v9 = MEM[v6 + 32];
        require(!(v9 - uint112(v9)));
        require(!(MEM[v6 + 64] - uint32(MEM[v6 + 64])));
        v45 = this.code.size;
    } else {
        require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v46 = this.code.size;
        }
        v47 = v48 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v47 = v49 = 0xe9e7cea3dedca5984780bafc599bd69add087d56;
        if (0 == v49 < v48) {
            v50 = v51 = 64;
            v52 = v53 = MEM[v51];
            v54 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v54, MEM[v51], RETURNDATASIZE());
            v55 = v56 = 0;
            if (v54) {
                goto 0x249a0x2612B0xbe0;
            }
        } else {
            v50 = v57 = 64;
            v52 = v58 = MEM[v57];
            v59 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v59, MEM[v57], RETURNDATASIZE());
            if (!v59) {
                v60 = v61 = v49 == address(v49);
                v62 = v63 = uint112(0);
                v64 = v65 = uint112(0);
                if (v61) {
                    v66 = v67 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v68 = v69 = varg1 * v63 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x2612B0xbe0;
                }
            }
        }
        v60 = v70 = v49 == address(v47);
        v62 = uint112(v55);
        v64 = uint112(v55);
        if (v70) {
            v66 = v71 = 10000;
            require(v64 * v71 + varg1 * 9975, Panic(18)); // division by zero
            v68 = varg1 * v62 * 9975 / (v64 * v71 + varg1 * 9975);
            goto 0x1bd70x2612B0xbe0;
        }
        v68 = v72, v66 = v73, v28 = v74 = 0x1bc0(v64, 7127, v62);
        if (v68 < varg2 * v66) {
            MEM[MEM[v50]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v50], 4);
        } else {
            v75 = MEM[v50];
            MEM[v75] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v75 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v75 + 36] = v28;
            v76 = v49.call(MEM[v75 len 68], MEM[v75 len 32]).gas(msg.gas);
            if (!v76) {
                RETURNDATACOPY(MEM[v50], 0, RETURNDATASIZE());
                revert(MEM[v50], RETURNDATASIZE());
            } else {
                if (v76) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v75 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v75 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v75)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v75 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v77 = v78 = v75 + RETURNDATASIZE();
                    } else {
                        require(!((v75 + 32 > 0xffffffffffffffff) | (v75 + 32 < v75)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v75 + 32;
                        v77 = v79 = v75 + 32;
                    }
                    require(v77 - v75 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v80 = this.code.size;
                }
                if (!v60) {
                    v68 = v81 = 0;
                    goto 0x1c410x2612B0xbe0;
                } else {
                    v68 = v82 = 0;
                }
                require(!((MEM[v50] + 32 > 0xffffffffffffffff) | (MEM[v50] + 32 < MEM[v50])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v50] + 32;
                MEM[MEM[v50]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v50]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v50] + 4] = v68;
                MEM[MEM[v50] + 4 + 32] = v68;
                MEM[MEM[v50] + 4 + 64] = address(this);
                MEM[MEM[v50] + 4 + 96] = 128;
                MEM[MEM[v50] + 4 + 128] = 0;
                v83 = v84 = 0;
                while (v83 >= 0) {
                    MEM[160 + (v83 + (MEM[v50] + 4))] = MEM[32 + (v83 + MEM[v50])];
                    v83 += 32;
                }
                MEM[MEM[v50] + 4 + 0 + 160] = 0;
                v85 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v50]) len (0 + (MEM[v50] + 4) + 160 - MEM[v50])], MEM[(MEM[v50]) len 0]).gas(msg.gas);
                if (!v85) {
                    RETURNDATACOPY(MEM[v50], 0, RETURNDATASIZE());
                    revert(MEM[v50], RETURNDATASIZE());
                } else {
                    if (v85) {
                        require(MEM[v50] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        goto 0xa890xbc0;
                    }
                    v86 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
                    require(v86, MEM[64], RETURNDATASIZE());
                    if (v86) {
                        v87 = 32;
                        if (v87 > RETURNDATASIZE()) {
                            v87 = v88 = RETURNDATASIZE();
                            goto 0xaf60xbc0;
                        }
                        require(!((MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v87 - MEM[64] >= v87);
                        return ;
                    } else {
                        return ;
                    }
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v89 = v90 = v52 + RETURNDATASIZE();
        } else {
            require(!((v52 + 96 > 0xffffffffffffffff) | (v52 + 96 < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + 96;
            v89 = v91 = v52 + 96;
        }
        require(v89 - v52 >= 96);
        v55 = v92 = MEM[v52];
        require(!(v92 - uint112(v92)));
        v55 = MEM[v52 + 32];
        require(!(v55 - uint112(v55)));
        require(!(MEM[v52 + 64] - uint32(MEM[v52 + 64])));
        v93 = this.code.size;
    }
}

function withdrawAllToken(address varg0) public nonPayable { 
    v0 = v1 = 32;
    require(msg.data.length + ~3 >= v1);
    require(!(varg0 - varg0));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    v2, v3 = varg0.balanceOf(this).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    if (v2) {
        if (v1 > RETURNDATASIZE()) {
            v0 = v4 = RETURNDATASIZE();
            goto 0xd13;
        }
        require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v0 - MEM[64] >= v1);
    }
    v5, /* bool */ v6 = varg0.transfer(address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339), v3).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (v5) {
        if (RETURNDATASIZE() < v1) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v7 = v8 = MEM[64] + v1;
        }
        require(v7 - MEM[64] >= 32);
        require(!(v6 - bool(v6)));
        v9 = this.code.size;
        return ;
    } else {
        return ;
    }
}

function 0xa64d6e78(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4) public nonPayable { 
    require(msg.data.length + ~3 >= 160);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    if (msg.gas <= 0xb2d05e00) {
        0x23a6(varg0, varg1, varg2, varg3, varg4);
        return ;
    } else {
        0x23a6(varg0, varg1, varg2, varg3, varg4);
        v0 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v1 = 32;
            if (v1 > RETURNDATASIZE()) {
                v1 = v2 = RETURNDATASIZE();
                goto 0xaf60xd40;
            }
            require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v1 - MEM[64] >= v1);
            return ;
        } else {
            return ;
        }
    }
}

function 0x9ec102f2(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4) public nonPayable { 
    require(msg.data.length + ~3 >= 160);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v0 = this.code.size;
        }
        v1 = v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v1 = v3 = 0x55d398326f99059ff775485246999027b3197955;
        if (0 == v2 < v3) {
            v4 = v5 = 64;
            v6 = v7 = MEM[v5];
            v8 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v8, MEM[v5], RETURNDATASIZE());
            v9 = v10 = 0;
            if (v8) {
                goto 0x27f90x2950B0xdd3;
            }
        } else {
            v4 = v11 = 64;
            v6 = v12 = MEM[v11];
            v13 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v13, MEM[v11], RETURNDATASIZE());
            if (!v13) {
                v14 = v15 = uint112(0);
                v16 = v17 = uint112(0);
                v18 = v19 = v2 == address(v2);
                if (0 != v19) {
                    v20 = v21 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v22 = v23 = varg1 * v17 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x2950B0xdd3;
                }
            }
        }
        v14 = uint112(v9);
        v16 = uint112(v9);
        v18 = v24 = v2 == address(v1);
        if (0 != v24) {
            v20 = v25 = 10000;
            require(v14 * v25 + varg1 * 9975, Panic(18)); // division by zero
            v22 = varg1 * v16 * 9975 / (v14 * v25 + varg1 * 9975);
            goto 0x1bd70x2950B0xdd3;
        }
        v22 = v26, v20 = v27, v28 = v29 = 0x1bc0(v14, 7127, v16);
        if (v22 < varg2 * v20) {
            MEM[MEM[v4]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v4], 4);
        } else {
            v30 = MEM[v4];
            MEM[v30] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v30 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v30 + 36] = v28;
            v31 = v2.call(MEM[v30 len 68], MEM[v30 len 32]).gas(msg.gas);
            if (!v31) {
                RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                revert(MEM[v4], RETURNDATASIZE());
            } else {
                if (v31) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v32 = v33 = v30 + RETURNDATASIZE();
                    } else {
                        require(!((v30 + 32 > 0xffffffffffffffff) | (v30 + 32 < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + 32;
                        v32 = v34 = v30 + 32;
                    }
                    require(v32 - v30 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v35 = this.code.size;
                }
                if (!v18) {
                    v22 = v36 = 0;
                    goto 0x1c410x2950B0xdd3;
                } else {
                    v22 = v37 = 0;
                }
                require(!((MEM[v4] + 32 > 0xffffffffffffffff) | (MEM[v4] + 32 < MEM[v4])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v4] + 32;
                MEM[MEM[v4]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v4]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v4] + 4] = v22;
                MEM[MEM[v4] + 4 + 32] = v22;
                MEM[MEM[v4] + 4 + 64] = address(this);
                MEM[MEM[v4] + 4 + 96] = 128;
                MEM[MEM[v4] + 4 + 128] = 0;
                v38 = v39 = 0;
                while (v38 >= 0) {
                    MEM[160 + (v38 + (MEM[v4] + 4))] = MEM[32 + (v38 + MEM[v4])];
                    v38 += 32;
                }
                MEM[MEM[v4] + 4 + 0 + 160] = 0;
                v40 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v4]) len (0 + (MEM[v4] + 4) + 160 - MEM[v4])], MEM[(MEM[v4]) len 0]).gas(msg.gas);
                if (!v40) {
                    RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                    revert(MEM[v4], RETURNDATASIZE());
                } else {
                    if (v40) {
                        require(MEM[v4] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v4];
                        goto 0x5a4a;
                    }
                    return ;
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v41 = v42 = v6 + RETURNDATASIZE();
        } else {
            require(!((v6 + 96 > 0xffffffffffffffff) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + 96;
            v41 = v43 = v6 + 96;
        }
        require(v41 - v6 >= 96);
        v9 = v44 = MEM[v6];
        require(!(v44 - uint112(v44)));
        v9 = MEM[v6 + 32];
        require(!(v9 - uint112(v9)));
        require(!(MEM[v6 + 64] - uint32(MEM[v6 + 64])));
    } else {
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v45 = this.code.size;
        }
        v46 = v47 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v46 = v48 = 0x55d398326f99059ff775485246999027b3197955;
        if (0 == v47 < v48) {
            v49 = v50 = 64;
            v51 = v52 = MEM[v50];
            v53 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v53, MEM[v50], RETURNDATASIZE());
            v54 = v55 = 0;
            if (v53) {
                goto 0x27f90x2950B0xdc6;
            }
        } else {
            v49 = v56 = 64;
            v51 = v57 = MEM[v56];
            v58 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v58, MEM[v56], RETURNDATASIZE());
            if (!v58) {
                v59 = v60 = uint112(0);
                v61 = v62 = uint112(0);
                v63 = v64 = v47 == address(v47);
                if (0 != v64) {
                    v65 = v66 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v67 = v68 = varg1 * v62 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x2950B0xdc6;
                }
            }
        }
        v59 = uint112(v54);
        v61 = uint112(v54);
        v63 = v69 = v47 == address(v46);
        if (0 != v69) {
            v65 = v70 = 10000;
            require(v59 * v70 + varg1 * 9975, Panic(18)); // division by zero
            v67 = varg1 * v61 * 9975 / (v59 * v70 + varg1 * 9975);
            goto 0x1bd70x2950B0xdc6;
        }
        v67 = v71, v65 = v72, v28 = v73 = 0x1bc0(v59, 7127, v61);
        if (v67 < varg2 * v65) {
            MEM[MEM[v49]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v49], 4);
        } else {
            v74 = MEM[v49];
            MEM[v74] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v74 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v74 + 36] = v28;
            v75 = v47.call(MEM[v74 len 68], MEM[v74 len 32]).gas(msg.gas);
            if (!v75) {
                RETURNDATACOPY(MEM[v49], 0, RETURNDATASIZE());
                revert(MEM[v49], RETURNDATASIZE());
            } else {
                if (v75) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v74 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v74 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v74)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v74 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v76 = v77 = v74 + RETURNDATASIZE();
                    } else {
                        require(!((v74 + 32 > 0xffffffffffffffff) | (v74 + 32 < v74)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v74 + 32;
                        v76 = v78 = v74 + 32;
                    }
                    require(v76 - v74 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v79 = this.code.size;
                }
                if (!v63) {
                    v67 = v80 = 0;
                    goto 0x1c410x2950B0xdc6;
                } else {
                    v67 = v81 = 0;
                }
                require(!((MEM[v49] + 32 > 0xffffffffffffffff) | (MEM[v49] + 32 < MEM[v49])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v49] + 32;
                MEM[MEM[v49]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v49]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v49] + 4] = v67;
                MEM[MEM[v49] + 4 + 32] = v67;
                MEM[MEM[v49] + 4 + 64] = address(this);
                MEM[MEM[v49] + 4 + 96] = 128;
                MEM[MEM[v49] + 4 + 128] = 0;
                v82 = v83 = 0;
                while (v82 >= 0) {
                    MEM[160 + (v82 + (MEM[v49] + 4))] = MEM[32 + (v82 + MEM[v49])];
                    v82 += 32;
                }
                MEM[MEM[v49] + 4 + 0 + 160] = 0;
                v84 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v49]) len (0 + (MEM[v49] + 4) + 160 - MEM[v49])], MEM[(MEM[v49]) len 0]).gas(msg.gas);
                if (!v84) {
                    RETURNDATACOPY(MEM[v49], 0, RETURNDATASIZE());
                    revert(MEM[v49], RETURNDATASIZE());
                } else {
                    if (v84) {
                        require(MEM[v49] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        goto 0xa890xd76;
                    }
                    v85 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
                    require(v85, MEM[64], RETURNDATASIZE());
                    if (v85) {
                        v86 = 32;
                        if (v86 > RETURNDATASIZE()) {
                            v86 = v87 = RETURNDATASIZE();
                            goto 0xaf60xd76;
                        }
                        require(!((MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v86 - MEM[64] >= v86);
                        return ;
                    } else {
                        return ;
                    }
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v51 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v51 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v51 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v88 = v89 = v51 + RETURNDATASIZE();
        } else {
            require(!((v51 + 96 > 0xffffffffffffffff) | (v51 + 96 < v51)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v51 + 96;
            v88 = v90 = v51 + 96;
        }
        require(v88 - v51 >= 96);
        v54 = v91 = MEM[v51];
        require(!(v91 - uint112(v91)));
        v54 = MEM[v51 + 32];
        require(!(v54 - uint112(v54)));
        require(!(MEM[v51 + 64] - uint32(MEM[v51 + 64])));
    }
}

function withdrawToken(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length + ~3 >= 64);
    require(!(varg0 - varg0));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    v0, /* bool */ v1 = varg0.transfer(address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339), varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v2 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > 0xffffffffffffffff) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v2 = v3 = MEM[64] + 32;
        }
        require(v2 - MEM[64] >= 32);
        require(!(v1 - bool(v1)));
        return ;
    } else {
        return ;
    }
}

function 0x7de6595d(bytes20 varg0, bytes20 varg1, bytes20 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public nonPayable { 
    require(msg.data.length + ~3 >= 352);
    require(!(varg0 - varg0));
    require(!(varg1 - varg1));
    require(!(varg2 - varg2));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        0x30b6(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10);
        return ;
    } else {
        0x30b6(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10);
        v0 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v1 = 32;
            if (v1 > RETURNDATASIZE()) {
                v1 = v2 = RETURNDATASIZE();
                goto 0xaf60xe9d;
            }
            require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v1 - MEM[64] >= v1);
            return ;
        } else {
            return ;
        }
    }
}

function 0x639955db(uint256 varg0, uint256 varg1, uint256 varg2, bytes20 varg3, bytes20 varg4) public nonPayable { 
    require(msg.data.length + ~3 >= 160);
    require(!(varg3 - varg3));
    require(!(varg4 - varg4));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v0 = this.code.size;
        }
        v1 = v2 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v1 = v3 = 0x55d398326f99059ff775485246999027b3197955;
        if (0 == v3 < v2) {
            v4 = v5 = 64;
            v6 = v7 = MEM[v5];
            v8 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v8, MEM[v5], RETURNDATASIZE());
            v9 = v10 = 0;
            if (v8) {
                goto 0x27f90x285cB0xf6f;
            }
        } else {
            v4 = v11 = 64;
            v6 = v12 = MEM[v11];
            v13 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v13, MEM[v11], RETURNDATASIZE());
            if (!v13) {
                v14 = v15 = uint112(0);
                v16 = v17 = uint112(0);
                v18 = v19 = v3 == address(v3);
                if (0 != v19) {
                    v20 = v21 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v22 = v23 = varg1 * v17 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x285cB0xf6f;
                }
            }
        }
        v14 = uint112(v9);
        v16 = uint112(v9);
        v18 = v24 = v3 == address(v1);
        if (0 != v24) {
            v20 = v25 = 10000;
            require(v14 * v25 + varg1 * 9975, Panic(18)); // division by zero
            v22 = varg1 * v16 * 9975 / (v14 * v25 + varg1 * 9975);
            goto 0x1bd70x285cB0xf6f;
        }
        v22 = v26, v20 = v27, v28 = v29 = 0x1bc0(v14, 7127, v16);
        if (v22 < varg2 * v20) {
            MEM[MEM[v4]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v4], 4);
        } else {
            v30 = MEM[v4];
            MEM[v30] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v30 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v30 + 36] = v28;
            v31 = v3.call(MEM[v30 len 68], MEM[v30 len 32]).gas(msg.gas);
            if (!v31) {
                RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                revert(MEM[v4], RETURNDATASIZE());
            } else {
                if (v31) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v32 = v33 = v30 + RETURNDATASIZE();
                    } else {
                        require(!((v30 + 32 > 0xffffffffffffffff) | (v30 + 32 < v30)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v30 + 32;
                        v32 = v34 = v30 + 32;
                    }
                    require(v32 - v30 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v35 = this.code.size;
                }
                if (!v18) {
                    v22 = v36 = 0;
                    goto 0x1c410x285cB0xf6f;
                } else {
                    v22 = v37 = 0;
                }
                require(!((MEM[v4] + 32 > 0xffffffffffffffff) | (MEM[v4] + 32 < MEM[v4])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v4] + 32;
                MEM[MEM[v4]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v4]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v4] + 4] = v22;
                MEM[MEM[v4] + 4 + 32] = v22;
                MEM[MEM[v4] + 4 + 64] = address(this);
                MEM[MEM[v4] + 4 + 96] = 128;
                MEM[MEM[v4] + 4 + 128] = 0;
                v38 = v39 = 0;
                while (v38 >= 0) {
                    MEM[160 + (v38 + (MEM[v4] + 4))] = MEM[32 + (v38 + MEM[v4])];
                    v38 += 32;
                }
                MEM[MEM[v4] + 4 + 0 + 160] = 0;
                v40 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v4]) len (0 + (MEM[v4] + 4) + 160 - MEM[v4])], MEM[(MEM[v4]) len 0]).gas(msg.gas);
                if (!v40) {
                    RETURNDATACOPY(MEM[v4], 0, RETURNDATASIZE());
                    revert(MEM[v4], RETURNDATASIZE());
                } else {
                    if (v40) {
                        require(MEM[v4] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v4];
                        goto 0x5ab5;
                    }
                    return ;
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v41 = v42 = v6 + RETURNDATASIZE();
        } else {
            require(!((v6 + 96 > 0xffffffffffffffff) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v6 + 96;
            v41 = v43 = v6 + 96;
        }
        require(v41 - v6 >= 96);
        v9 = v44 = MEM[v6];
        require(!(v44 - uint112(v44)));
        v9 = MEM[v6 + 32];
        require(!(v9 - uint112(v9)));
        require(!(MEM[v6 + 64] - uint32(MEM[v6 + 64])));
    } else {
        if (varg0) {
            require(block.timestamp * 1000 <= varg0 + 0x1853e022884, TooLate());
            require(0x1853e020d2c + varg0 < block.timestamp * 1000);
            v45 = this.code.size;
        }
        v46 = v47 = (0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg3) >> 96;
        v46 = v48 = 0x55d398326f99059ff775485246999027b3197955;
        if (0 == v48 < v47) {
            v49 = v50 = 64;
            v51 = v52 = MEM[v50];
            v53 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v53, MEM[v50], RETURNDATASIZE());
            v54 = v55 = 0;
            if (v53) {
                goto 0x27f90x285cB0xf62;
            }
        } else {
            v49 = v56 = 64;
            v51 = v57 = MEM[v56];
            v58 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).getReserves().gas(msg.gas);
            require(v58, MEM[v56], RETURNDATASIZE());
            if (!v58) {
                v59 = v60 = uint112(0);
                v61 = v62 = uint112(0);
                v63 = v64 = v48 == address(v48);
                if (0 != v64) {
                    v65 = v66 = 10000;
                    require(0 + varg1 * 9975, Panic(18)); // division by zero
                    v67 = v68 = varg1 * v62 * 9975 / (0 + varg1 * 9975);
                    goto 0x1bd70x285cB0xf62;
                }
            }
        }
        v59 = uint112(v54);
        v61 = uint112(v54);
        v63 = v69 = v48 == address(v46);
        if (0 != v69) {
            v65 = v70 = 10000;
            require(v59 * v70 + varg1 * 9975, Panic(18)); // division by zero
            v67 = varg1 * v61 * 9975 / (v59 * v70 + varg1 * 9975);
            goto 0x1bd70x285cB0xf62;
        }
        v67 = v71, v65 = v72, v28 = v73 = 0x1bc0(v59, 7127, v61);
        if (v67 < varg2 * v65) {
            MEM[MEM[v49]] = 0x5a7cfa6500000000000000000000000000000000000000000000000000000000;
            revert(MEM[v49], 4);
        } else {
            v74 = MEM[v49];
            MEM[v74] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v74 + 4] = address((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96);
            MEM[v74 + 36] = v28;
            v75 = v48.call(MEM[v74 len 68], MEM[v74 len 32]).gas(msg.gas);
            if (!v75) {
                RETURNDATACOPY(MEM[v49], 0, RETURNDATASIZE());
                revert(MEM[v49], RETURNDATASIZE());
            } else {
                if (v75) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v74 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v74 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v74)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v74 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v76 = v77 = v74 + RETURNDATASIZE();
                    } else {
                        require(!((v74 + 32 > 0xffffffffffffffff) | (v74 + 32 < v74)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v74 + 32;
                        v76 = v78 = v74 + 32;
                    }
                    require(v76 - v74 >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    v79 = this.code.size;
                }
                if (!v63) {
                    v67 = v80 = 0;
                    goto 0x1c410x285cB0xf62;
                } else {
                    v67 = v81 = 0;
                }
                require(!((MEM[v49] + 32 > 0xffffffffffffffff) | (MEM[v49] + 32 < MEM[v49])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v49] + 32;
                MEM[MEM[v49]] = 0;
                require(((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).code.size);
                MEM[MEM[v49]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[MEM[v49] + 4] = v67;
                MEM[MEM[v49] + 4 + 32] = v67;
                MEM[MEM[v49] + 4 + 64] = address(this);
                MEM[MEM[v49] + 4 + 96] = 128;
                MEM[MEM[v49] + 4 + 128] = 0;
                v82 = v83 = 0;
                while (v82 >= 0) {
                    MEM[160 + (v82 + (MEM[v49] + 4))] = MEM[32 + (v82 + MEM[v49])];
                    v82 += 32;
                }
                MEM[MEM[v49] + 4 + 0 + 160] = 0;
                v84 = ((0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339000000000000000000000000 ^ varg4) >> 96).call(MEM[(MEM[v49]) len (0 + (MEM[v49] + 4) + 160 - MEM[v49])], MEM[(MEM[v49]) len 0]).gas(msg.gas);
                if (!v84) {
                    RETURNDATACOPY(MEM[v49], 0, RETURNDATASIZE());
                    revert(MEM[v49], RETURNDATASIZE());
                } else {
                    if (v84) {
                        require(MEM[v49] <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
                        goto 0xa890xf12;
                    }
                    v85 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
                    require(v85, MEM[64], RETURNDATASIZE());
                    if (v85) {
                        v86 = 32;
                        if (v86 > RETURNDATASIZE()) {
                            v86 = v87 = RETURNDATASIZE();
                            goto 0xaf60xf12;
                        }
                        require(!((MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v86 - MEM[64] >= v86);
                        return ;
                    } else {
                        return ;
                    }
                }
            }
        }
        if (96 > RETURNDATASIZE()) {
            require(!((v51 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (v51 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v51 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v88 = v89 = v51 + RETURNDATASIZE();
        } else {
            require(!((v51 + 96 > 0xffffffffffffffff) | (v51 + 96 < v51)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v51 + 96;
            v88 = v90 = v51 + 96;
        }
        require(v88 - v51 >= 96);
        v54 = v91 = MEM[v51];
        require(!(v91 - uint112(v91)));
        v54 = MEM[v51 + 32];
        require(!(v54 - uint112(v54)));
        require(!(MEM[v51 + 64] - uint32(MEM[v51 + 64])));
    }
}

function 0x5ce36c8b(bytes20 varg0, bytes20 varg1, bytes20 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public nonPayable { 
    require(msg.data.length + ~3 >= 256);
    require(!(varg0 - varg0));
    require(!(varg1 - varg1));
    require(!(varg2 - varg2));
    require(!(msg.sender - address(0x17e45cd66d5e3d0cdeec1bbb5ec8f1f6fe09f339)), Unauthorized(msg.sender));
    if (msg.gas <= 0xb2d05e00) {
        0x2d41(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7);
        return ;
    } else {
        0x2d41(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7);
        v0 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v1 = 32;
            if (v1 > RETURNDATASIZE()) {
                v1 = v2 = RETURNDATASIZE();
                goto 0xaf60xf78;
            }
            require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v1 - MEM[64] >= v1);
            return ;
        } else {
            return ;
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, bytes20 varg4, bytes20 varg5, bytes20 varg6) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0xe399e90 == v0) {
            0x0e399e90(128, v0);
        } else if (0xf228087 == v0) {
            transferTokens(address[],address);
        } else if (0x1c6fb5cd == v0) {
            0x1c6fb5cd(v0);
        } else if (0x425ac9c4 == v0) {
            0x425ac9c4(v0);
        } else if (0x51cac898 == v0) {
            0x51cac898(v0);
        } else if (0x5af3adf9 == v0) {
            withdrawAllBNB();
        } else if (0x5ce36c8b == v0) {
            0x5ce36c8b(v0);
        } else if (0x639955db == v0) {
            0x639955db(v0);
        } else if (0x7de6595d == v0) {
            0x7de6595d(v0);
        } else if (0x9e281a98 == v0) {
            withdrawToken(address,uint256);
        } else if (0x9ec102f2 == v0) {
            0x9ec102f2(v0);
        } else if (0xa64d6e78 == v0) {
            0xa64d6e78(v0);
        } else if (0xae4dd0fc == v0) {
            withdrawAllToken(address);
        } else if (0xbe34f1b5 == v0) {
            0xbe34f1b5(v0);
        } else if (0xd1423278 == v0) {
            0xd1423278(v0);
        } else if (0xd58dd502 == v0) {
            0xd58dd502(v0);
        } else if (0xea5c0d16 == v0) {
            0xea5c0d16(v0);
        } else if (!(0xfdea5bc0 - v0)) {
            require(!msg.value);
            require(msg.data.length + ~3 >= 192);
            require(!(varg4 - varg4));
            require(!(varg5 - varg5));
            require(!(varg6 - varg6));
            if (msg.gas <= 0xb2d05e00) {
                0x1e79(varg1, varg2, varg3, varg4, varg5, varg6);
                return ;
            } else {
                0x1e79(varg1, varg2, varg3, varg4, varg5, varg6);
                v1 = 0x4946c0e9f43f4dee607b0ef1fa1c.free(((msg.data.length << 4) + msg.gas - msg.gas + 35154) / 41947).gas(msg.gas);
                require(v1, MEM[64], RETURNDATASIZE());
                if (v1) {
                    v2 = v3 = 32;
                    if (v3 > RETURNDATASIZE()) {
                        v2 = v4 = RETURNDATASIZE();
                        goto 0x187;
                    }
                    require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v2 - MEM[64] >= v3);
                    return ;
                } else {
                    return ;
                }
            }
        }
    }
    require(!msg.data.length);
}

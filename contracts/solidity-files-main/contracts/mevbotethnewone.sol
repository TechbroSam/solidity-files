// Decompiled by library.dedaub.com
// 2023.05.14 15:57 UTC

pragma solidity ^0.8.0;



contract Contract{

function x1049() private { 
    require(bool(0xaaf1bcdb4e0385b6a03decb2b17cda7755895c9d == msg.sender), getInitializationCodeFromContractRuntime_6CLUNS());
    return ;
}

function xedb() private { 
    require(bool((0x1110f5b97703d14ac3de91bdcd12cd4566ae48d5 == msg.sender) | ((0x1111e3ef0b6ae32e14a55e0e7cd9b8505177c2bf == msg.sender) | ((0x111206594f2fb5927f719b4417ab1da3d41b14b1 == msg.sender) | ((0x1113efd5c8896ccf251ea360bb9d91f113707f80 == msg.sender) | ((0x1114c78d5de672996d812dc2e1a05b5f33eacdfb == msg.sender) | (0x111527f1386c6725a2f5986230f3060bdcac041f == msg.sender)))))));
    require(msg.data[0] >> 240 & 0xfff >= block.number & 0xfff, block.number & 0xfff);
    return ;
}

function xfa6() private { 
    require(bool((0x1110f5b97703d14ac3de91bdcd12cd4566ae48d5 == msg.sender) | ((0x1111e3ef0b6ae32e14a55e0e7cd9b8505177c2bf == msg.sender) | ((0x111206594f2fb5927f719b4417ab1da3d41b14b1 == msg.sender) | ((0x1113efd5c8896ccf251ea360bb9d91f113707f80 == msg.sender) | ((0x1114c78d5de672996d812dc2e1a05b5f33eacdfb == msg.sender) | (0x111527f1386c6725a2f5986230f3060bdcac041f == msg.sender)))))));
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    v0 = v1 = 0;
    if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x1000000000000000000000000000000000000000000000000000000000000000) {
        0xedb();
        v2 = uint32(msg.value >> 8) << (bool(function_selector >> 236) << 3);
        if (bool(msg.value) == 0) {
            if (bool(msg.value >> 4) == 0) {
                v3 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token1().gas(msg.gas);
                v4 = MEM[0x44].transfer(v5, v2).value(v1).gas(msg.gas);
                require(bool(v4), v1, v1);
            } else {
                v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(v5, v2).value(v1).gas(msg.gas);
                require(bool(v6), v1, v1);
            }
            CALLDATACOPY(100 - bool(function_selector >> 232), 23, 4);
            v7 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.swap(v5, v5, this, 36).value(v1).gas(msg.gas);
            require(bool(v7), v1, v1);
            return MEM[];
        } else {
            if (bool(msg.value >> 4) == 0) {
                v8 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token0().gas(msg.gas);
                v9 = MEM[0x44].transfer(v5, v2).value(v1).gas(msg.gas);
            } else {
                v10 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(v5, v2).value(v1).gas(msg.gas);
            }
            CALLDATACOPY(132 - bool(function_selector >> 232), 23, 4);
            v11 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.swap(v5, v5, this, 4).value(v1).gas(msg.gas);
            require(bool(v11), v1, v1);
            return MEM[];
        }
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x2000000000000000000000000000000000000000000000000000000000000000) {
        0xedb();
        if (msg.value & 0x1 == 0) {
            v12 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token1().gas(msg.gas);
            CALLDATACOPY(68 - bool(msg.value >> 4), 22, bool(msg.value >> 4));
            v13 = MEM[0x44].transfer().value(v1).gas(msg.gas);
            CALLDATACOPY(104 - bool(msg.value >> 8), 22 + bool(msg.value >> 4), bool(msg.value >> 8));
            v14 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.swap(v5, v5, this, 36).value(v1).gas(msg.gas);
            require(bool(v14), v1, v1);
            return MEM[];
        } else {
            v15 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token0().gas(msg.gas);
            CALLDATACOPY(68 - bool(msg.value >> 4), 22, bool(msg.value >> 4));
            v16 = MEM[0x44].transfer().value(v1).gas(msg.gas);
            CALLDATACOPY(136 - bool(msg.value >> 8), 22 + bool(msg.value >> 4), bool(msg.value >> 8));
            v17 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.swap(v5, v5, this, 4).value(v1).gas(msg.gas);
            require(bool(v17), v1, v1);
            return MEM[];
        }
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x3000000000000000000000000000000000000000000000000000000000000000) {
        0xedb();
        v18 = v19 = 1;
        v20 = v21 = 2;
        while (v0 < (msg.data.length + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe5) / 29 + 1) {
            if (uint16(v18 & msg.value) == 0) {
                v22 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token1().gas(msg.gas);
                if (v0 == 0) {
                    v23 = MEM[0x44].transfer(v5, uint32(msg.value >> 12) << (msg.data[v20] >> 252 << 3)).value(v1).gas(msg.gas);
                    require(bool(v23), v1, v1);
                    MEM[68] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    CALLDATACOPY(100 - bool(msg.data[v20] >> 248), 23, 4);
                    MEM[136] = this;
                    MEM[168] = 36;
                    v20 = v20 + 25;
                } else {
                    CALLDATACOPY(64 - (msg.data[v20] >> 252), v20 + 21, 4);
                    v24 = MEM[0x44].transfer(v5, v1).value(v1).gas(msg.gas);
                    require(bool(v24), v1, v1);
                    MEM[68] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[72] = v1;
                    MEM[104] = v1;
                    CALLDATACOPY(100 - bool(msg.data[v20] >> 248), v20 + 25, 4);
                    MEM[168] = 36;
                    v20 = v20 + 29;
                }
                v25 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.call(MEM[], MEM[]).value(v1).gas(msg.gas);
                require(bool(v25), v1, v1);
            } else {
                v26 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token0().gas(msg.gas);
                if (v0 == 0) {
                    v27 = MEM[0x44].transfer(v5, uint32(msg.value >> 12) << (msg.data[v20] >> 252 << 3)).value(v1).gas(msg.gas);
                    require(bool(v27), v1, v1);
                    MEM[68] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    CALLDATACOPY(132 - bool(msg.data[v20] >> 248), 23, 4);
                    MEM[136] = this;
                    MEM[168] = 4;
                    v20 = v20 + 25;
                } else {
                    CALLDATACOPY(64 - (msg.data[v20] >> 252), v20 + 21, 4);
                    v28 = MEM[0x44].transfer(v5, v1).value(v1).gas(msg.gas);
                    require(bool(v28), v1, v1);
                    MEM[68] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[72] = v1;
                    MEM[104] = v1;
                    CALLDATACOPY(132 - bool(msg.data[v20] >> 248), v20 + 25, 4);
                    MEM[168] = 4;
                    v20 = v20 + 29;
                }
                v29 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.call(MEM[], MEM[]).value(v1).gas(msg.gas);
                require(bool(v29), v1, v1);
            }
            v18 = v18 << 1;
            v0 = v0 + 1;
        }
        return MEM[];
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x4000000000000000000000000000000000000000000000000000000000000000) {
        0xedb();
        v30 = v31 = 1;
        v32 = v33 = 2;
        while (v0 < bool(msg.value)) {
            v34 = bool(msg.value >> (v0 << 3) + 16);
            if (v30 & msg.value >> 4 & 0xfff == 0) {
                v35 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token1().gas(msg.gas);
                if (!bool(!v0)) {
                    MEM[36] = v1;
                }
                CALLDATACOPY(68 - v34, 20 + v32, v34);
                v36 = MEM[0x44].transfer().value(v1).gas(msg.gas);
                require(bool(v36), v1, v1);
                MEM[68] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if (!bool(!v0)) {
                    MEM[72] = v1;
                }
                if (!bool(!v0)) {
                    MEM[104] = v1;
                }
                CALLDATACOPY(104 - bool(msg.value >> (v0 << 3) + 20), v32 + v34 + 20, bool(msg.value >> (v0 << 3) + 20));
                v37 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.call(v5, v5, v5, this, 36).value(v1).gas(msg.gas);
                require(bool(v37), v1, v1);
                v32 = v32 + v34 + bool(msg.value >> (v0 << 3) + 20) + 20;
            } else {
                v38 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.token0().gas(msg.gas);
                if (!bool(!v0)) {
                    MEM[36] = v1;
                }
                CALLDATACOPY(68 - v34, 20 + v32, v34);
                v39 = MEM[0x44].transfer().value(v1).gas(msg.gas);
                require(bool(v39), v1, v1);
                MEM[68] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if (!bool(!v0)) {
                    MEM[72] = v1;
                }
                if (!bool(!v0)) {
                    MEM[104] = v1;
                }
                CALLDATACOPY(136 - bool(msg.value >> (v0 << 3) + 20), v32 + v34 + 20, bool(msg.value >> (v0 << 3) + 20));
                v40 = 0xa9059cbb00000000000000000000000000000000000000000000000000000000.call(v5, v5, v5, this, 4).value(v1).gas(msg.gas);
                require(bool(v40), v1, v1);
                v32 = v32 + v34 + bool(msg.value >> (v0 << 3) + 20) + 20;
            }
            v30 = v30 << 1;
            v0 = v0 + 1;
        }
        return MEM[];
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x5000000000000000000000000000000000000000000000000000000000000000) {
        0xedb();
        v41 = (varg2 >> 96).getReserves().gas(msg.gas);
        if (msg.value & 0x1 == 0) {
            v42 = v43 = MEM[v1];
            v44 = v45 = MEM[32];
        } else {
            v44 = v46 = MEM[v1];
            v42 = v47 = MEM[32];
        }
        require(v42 >= varg3 >> (32 - bool(msg.value >> 4) << 3), v1, v1);
        v48 = (varg2 >> 96).token1().gas(msg.gas);
        v49 = (varg2 >> 96).token0().gas(msg.gas);
        if (msg.value & 0x1 == 0) {
            v50 = v51 = MEM[v1];
            v52 = v53 = MEM[32];
        } else {
            v52 = v54 = MEM[v1];
            v50 = v55 = MEM[32];
        }
        v56 = v52.balanceOf(this).value(v1).gas(msg.gas);
        require(bool(v56), v1, v1);
        v57 = v50.transfer(varg2 >> 96, msg.data[22 + bool(msg.value >> 4)] >> (32 - bool(msg.value >> 8) << 3)).value(v1).gas(msg.gas);
        require(bool(v57), v1, v1);
        v58 = v50.balanceOf(varg2 >> 96).value(v1).gas(msg.gas);
        require(bool(v58), v1, v1);
        if (bool(msg.value) & 0x1 != 0) {
        }
        v59 = (varg2 >> 96).swap((MEM[v1] - v44) * v42 * 997 / (v44 * 1000 + (MEM[v1] - v44) * 997), 0, (MEM[v1] - v44) * v42 * 997 / (v44 * 1000 + (MEM[v1] - v44) * 997), 0, this, 4, 36).gas(msg.gas);
        require(bool(v59));
        v60 = v52.balanceOf(this).value(v1).gas(msg.gas);
        require(bool(v60), v1, v1);
        require(MEM[v1] - MEM[v1] >= msg.data[bool(msg.value >> 4) + bool(msg.value >> 8) + 22] >> (32 - bool(msg.value >> 12) << 3), v1, v1);
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x6000000000000000000000000000000000000000000000000000000000000000) {
        0xfa6();
        v61 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(this.balance).gas(msg.gas);
        require(bool(v61), v1, v1);
        return MEM[];
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x7000000000000000000000000000000000000000000000000000000000000000) {
        0xfa6();
        while (v0 < (msg.data.length + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) / 52) {
            v0 = v0 + msg.data[21 + v0 * 52];
            v0 = v0 + 1;
        }
        v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).value(v1).gas(msg.gas);
        require(bool(v62), v1, v1);
        while (v0 < (msg.data.length + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) / 52) {
            v63 = (msg.data[1 + v0 * 52] >> 96).call().value(msg.data[21 + v0 * 52]).gas(msg.gas);
            require(bool(v63), v1, v1);
            v0 = v0 + 1;
        }
        return MEM[];
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x8000000000000000000000000000000000000000000000000000000000000000) {
        0x1049();
        while (v0 < (msg.data.length + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffeb) / 52) {
            v64 = (msg.data[21 + 52 * v0] >> 96).transfer(varg1 >> 96, msg.data[41 + 52 * v0]).value(v1).gas(msg.gas);
            require(bool(v64), v1, v1);
            v0 = v0 + 1;
        }
    } else if (function_selector & 0xf000000000000000000000000000000000000000000000000000000000000000 == 0x9000000000000000000000000000000000000000000000000000000000000000) {
        0x1049();
        selfdestruct(0xaaf1bcdb4e0385b6a03decb2b17cda7755895c9d);
    } else {
        return MEM[];
    }
}

}



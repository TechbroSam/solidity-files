// Decompiled by library.dedaub.com
// 2023.06.06 12:08 UTC
// Compiled using the solidity compiler version 0.8.17

pragma solidity ^0.8.0;



contract Contract{

// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _isOwner; // STORAGE[0x0]
uint256[] _owners; // STORAGE[0x1]
uint256 stor_4; // STORAGE[0x4]
mapping (uint256 => uint256) map_5; // STORAGE[0x5]
mapping (uint256 => uint256) map_7; // STORAGE[0x7]
uint256 stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
uint256 stor_3_0_19; // STORAGE[0x3] bytes 0 to 19



function withdraw(address[] varg0, address varg1) public { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= 0xffffffffffffffff);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= 0xffffffffffffffff);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(varg1 == address(varg1));
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v0 << 5) + varg0.data + 32 - ((v0 << 5) + varg0.data) >= 32);
        require(varg0[v0 << 5][v0] == address(varg0[v0 << 5][v0]));
        v2; v3 = address(varg0[v0 << 5][v0]).balanceOf(this).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v3) {
            v4 = 0x5d92(4 + MEM[64], v3, varg1);
            v5; /* bool */ v6 = address(varg0[v0 << 5][v0]).transfer().gas(msg.gas);
            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v6 == bool(v6));
        }
        v0 = 0x5de3(v0);
    }
}

function withdrawalvalid (address varg0, address varg1, uint256 varg2) public { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    require(bool((address(varg0)).code.size));
    v0 = varg0.withdraw(varg2).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = varg1.call().value(varg2).gas(2300 * !varg2);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function withdrawalvalid2 (address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public  { 
    require(msg.data.length - 4 >= 288);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v2; /* bool */ v3 = stor_2_0_19.staticcall(0x21889a87, block.coinbase).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == bool(v3));
        require(v3, Error('not puissant'));
        v4; /* uint112 */ v5; /* uint112 */ v6; /* uint32 */ v7 = (0xffffffffffffffffffffffffffffffffffffffff & ()).getReserves().gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v5 == uint112(v5));
        require(v6 == uint112(v6));
        require(v7 == uint32(v7));
        v8 = v9 = uint112(v6);
        v8 = v10 = uint112(v5);
        if (0xffffffffffffffffffffffffffffffffffffffff & () >= 0xffffffffffffffffffffffffffffffffffffffff & ()) {
        }
        v11 = v12 = v8 > ();
        if (v8 <= ()) {
            v11 = v13 < v8;
        }
        if (!v11) {
            v14 = _SafeSub(v13, v8);
            if (v14 <= ()) {
                if (v14 < ()) {
                    goto ;
                }
            }
            v15 = v16 = 0x542a(v13, v8, v8, v14);
            v17 = 0x5d92(4 + MEM[64], v14, v13);
            v18; /* bool */ v19 = (0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
            require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v19 == bool(v19));
            if (0xffffffffffffffffffffffffffffffffffffffff & () < 0xffffffffffffffffffffffffffffffffffffffff & ()) {
                v15 = 0;
            } else {
                v15 = v20 = 0;
            }
            MEM[4 + MEM[64]] = v15;
            v21 = v22 = 0;
            while (v21 < v23.length) {
                MEM[160 + (v21 + (4 + MEM[64]))] = v23[v21];
                v21 += 32;
            }
            require(bool((v13 & 0xffffffffffffffffffffffffffffffffffffffff).code.size));
            v24 = (v13 & 0xffffffffffffffffffffffffffffffffffffffff).swap(v15, v15, address(this), 0).gas(msg.gas);
            require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (0 != ()) {
                map_5[msg.sender] = uint112(v16) | bytes4(map_5[msg.sender]) | uint112(v14) << 112;
            }
            goto ;
        }
    } else {
        v25; /* bool */ v26 = stor_2_0_19.staticcall(0x21889a87, block.coinbase).gas(msg.gas);
        require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v26 == bool(v26));
        require(v26, Error('not puissant'));
        v27; /* uint112 */ v28; /* uint112 */ v29; /* uint32 */ v30 = (0xffffffffffffffffffffffffffffffffffffffff & ()).getReserves().gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v28 == uint112(v28));
        require(v29 == uint112(v29));
        require(v30 == uint32(v30));
        v31 = v32 = uint112(v29);
        v31 = v33 = uint112(v28);
        if (0xffffffffffffffffffffffffffffffffffffffff & () >= 0xffffffffffffffffffffffffffffffffffffffff & ()) {
        }
        v34 = v35 = v31 > ();
        if (v31 <= ()) {
            v34 = v13 < v31;
        }
        if (!v34) {
            v36 = _SafeSub(v13, v31);
            if (v36 <= ()) {
                if (v36 < ()) {
                }
            }
            v37 = v38 = 0x542a(v13, v31, v31, v36);
            v39 = 0x5d92(4 + MEM[64], v36, v13);
            v40; /* bool */ v41 = (0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
            require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v41 == bool(v41));
            if (0xffffffffffffffffffffffffffffffffffffffff & () < 0xffffffffffffffffffffffffffffffffffffffff & ()) {
                v37 = 0;
            } else {
                v37 = v42 = 0;
            }
            if (0) {
                CALLDATACOPY(v43.data, msg.data.length, 0);
                v44 = v43.data;
            }
            MEM[4 + MEM[64]] = v37;
            v45 = v46 = 0;
            while (v45 < v43.length) {
                MEM[160 + (v45 + (4 + MEM[64]))] = v43[v45];
                v45 += 32;
            }
            require(bool((0xffffffffffffffffffffffffffffffffffffffff & ()).code.size));
            v47 = (0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v37, v37, address(this), 0).gas(msg.gas);
            require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (0 != ()) {
                map_5[msg.sender] = uint112(v38) | bytes4(map_5[msg.sender]) | uint112(v36) << 112;
            }
        }
        v48 = _SafeMul(16, msg.data.length);
        v49 = _SafeAdd(21000, msg.gas);
        v50 = _SafeSub(v49, msg.gas);
        v51 = _SafeAdd(v50, v48);
        v52 = _SafeAdd(14154, v51);
        require(41947, Panic(18)); // division by zero
        if (v52 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v53 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v52 / 41947).gas(msg.gas);
            require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function isOwner(address varg0) public{ 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    return bool(uint8(_isOwner[address(varg0)]));
}

function nonPayablenotowner(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public{ 
    require(msg.data.length - 4 >= 256);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    0xe68(varg7, varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function nonPayablenotowner1(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public  { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    require(bool(stor_3_0_19.code.size));
    v0 = stor_3_0_19.call(0x5beadf1800000000000000000000000000000000000000000000000000000000, varg6).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x28e7(varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function nonPayablenotowner2(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public  { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        if (!varg5) {
            require(varg3 > 0, Error('jobKey == 0 && amountOutMin==0'));
            v2; v3 = varg1.balanceOf(this).gas(msg.gas);
            require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            v4 = v5 = _SafeSub(v3, 1);
        } else {
            v6 = v7 = uint112(map_5[varg5] >> 112);
            v4 = uint112(map_5[varg5]);
            if (msg.gas < 0x2cb417800) {
                v8; v9 = varg1.balanceOf(this).gas(msg.gas);
                require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (!(v4 - v9)) {
                    v4 = v10 = _SafeSub(v4, 1);
                }
            }
        }
        require(v4 > 0, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
        v11; /* uint112 */ v12; /* uint112 */ v13; /* uint32 */ v14 = varg0.getReserves().gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v12 == uint112(v12));
        require(v13 == uint112(v13));
        require(v14 == uint32(v14));
        v15 = v16 = uint112(v13);
        v15 = v17 = uint112(v12);
        if (varg1 >= varg2) {
        }
        v18 = v19 = 0x542a(varg4, v15, v15, v4);
        v20 = v21 = v19 > v6;
        if (v21) {
            v22 = _SafeSub(v19, v6);
            v20 = v22 >= varg6;
        }
        require(v20, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
        v23; v24 = varg2.balanceOf(this).gas(msg.gas);
        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v25 = 0x5d92(4 + MEM[64], v4, varg0);
        v26; /* bool */ v27 = varg1.transfer().gas(msg.gas);
        require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v27 == bool(v27));
        if (varg1 < varg2) {
            v18 = v28 = 0;
        } else {
            v18 = 0;
        }
        MEM[4 + MEM[64]] = v18;
        v29 = v30 = 0;
        while (v29 < v31.length) {
            MEM[160 + (v29 + (4 + MEM[64]))] = v31[v29];
            v29 += 32;
        }
        require(bool((address(varg0)).code.size));
        v32 = varg0.swap(v18, v18, address(this), 0).gas(msg.gas);
        require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[MEM[64] + 4] = this;
        v33; v34 = varg2.balanceOf(this).gas(msg.gas);
        require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v35 = v36 = v34 < v24;
        if (v34 >= v24) {
            v37 = _SafeSub(v34, v24);
            v35 = v37 < v19;
        }
        require(!v35, Error(0x732d000000000000000000000000000000000000000000000000000000000000));
        if (varg5) {
            map_5[varg5] = bytes4(map_5[varg5]);
        }
    } else {
        if (!varg5) {
            require(varg3 > 0, Error('jobKey == 0 && amountOutMin==0'));
            v38; v39 = varg1.balanceOf(this).gas(msg.gas);
            require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            v40 = v41 = _SafeSub(v39, 1);
        } else {
            v6 = v42 = uint112(map_5[varg5] >> 112);
            v40 = uint112(map_5[varg5]);
            if (msg.gas < 0x2cb417800) {
                v43; v44 = varg1.balanceOf(this).gas(msg.gas);
                require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (!(v40 - v44)) {
                    v40 = v45 = _SafeSub(v40, 1);
                }
            }
        }
        require(v40 > 0, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
        v46; /* uint112 */ v47; /* uint112 */ v48; /* uint32 */ v49 = varg0.getReserves().gas(msg.gas);
        require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v47 == uint112(v47));
        require(v48 == uint112(v48));
        require(v49 == uint32(v49));
        v50 = v51 = uint112(v48);
        v50 = v52 = uint112(v47);
        if (varg1 >= varg2) {
        }
        v53 = v54 = 0x542a(varg4, v50, v50, v40);
        v55 = v56 = v54 > v6;
        if (v56) {
            v57 = _SafeSub(v54, v6);
            v55 = v57 >= varg6;
        }
        require(v55, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
        v58; v59 = varg2.balanceOf(this).gas(msg.gas);
        require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v60 = 0x5d92(4 + MEM[64], v40, varg0);
        v61; /* bool */ v62 = varg1.transfer().gas(msg.gas);
        require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v62 == bool(v62));
        if (varg1 < varg2) {
            v53 = v63 = 0;
        } else {
            v53 = 0;
        }
        MEM[4 + MEM[64]] = v53;
        v64 = v65 = 0;
        while (v64 < v66.length) {
            MEM[160 + (v64 + (4 + MEM[64]))] = v66[v64];
            v64 += 32;
        }
        require(bool((address(varg0)).code.size));
        v67 = varg0.swap(v53, v53, address(this), 0).gas(msg.gas);
        require(bool(v67), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[4 + MEM[64]] = address(this);
        v68; v69 = varg2.balanceOf(address(this)).gas(msg.gas);
        require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v70 = v71 = v69 < v59;
        if (v69 >= v59) {
            v72 = _SafeSub(v69, v59);
            v70 = v72 < v54;
        }
        require(!v70, Error(0x732d000000000000000000000000000000000000000000000000000000000000));
        if (varg5) {
            map_5[varg5] = bytes4(map_5[varg5]);
        }
        v73 = _SafeMul(16, msg.data.length);
        v74 = _SafeAdd(21000, msg.gas);
        v75 = _SafeSub(v74, msg.gas);
        v76 = _SafeAdd(v75, v73);
        v77 = _SafeAdd(14154, v76);
        require(41947, Panic(18)); // division by zero
        if (v77 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v78 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v77 / 41947).gas(msg.gas);
            require(bool(v78), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function notowner1(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public  { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v2; /* bool */ v3 = stor_2_0_19.staticcall(0x21889a87, block.coinbase).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == bool(v3));
        require(v3, Error('not puissant'));
        v4; /* uint112 */ v5; /* uint112 */ v6; /* uint32 */ v7 = varg0.getReserves().gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v5 == uint112(v5));
        require(v6 == uint112(v6));
        require(v7 == uint32(v7));
        v8 = v9 = uint112(v6);
        v8 = v10 = uint112(v5);
        if (varg1 >= varg2) {
        }
        if (varg4) {
            require(0 - varg6, Error(0x6a6f622d00000000000000000000000000000000000000000000000000000000));
            require(varg4 > v8, Error(0x7265732d00000000000000000000000000000000000000000000000000000000));
            v11 = v12 = _SafeSub(varg4, v8);
        }
        v13 = v14 = 0x542a(varg5, v8, v8, v11);
        v15 = 0x5d92(4 + MEM[64], v11, varg0);
        v16; /* bool */ v17 = varg1.transfer().gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v17 == bool(v17));
        if (varg1 < varg2) {
            v13 = 0;
        } else {
            v13 = v18 = 0;
        }
        v19 = v20 = 0;
        while (v19 < 0) {
            MEM[160 + (v19 + (MEM[64] + 36))] = MEM[32 + (v19 + MEM[64])];
            v19 += 32;
        }
        require(bool((address(varg0)).code.size));
        v21 = varg0.swap(v13, v13, address(this), 0).gas(msg.gas);
        require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (0 != varg6) {
            map_5[varg6] = uint112(v14) | bytes4(map_5[varg6]) | uint112(v11) << 112;
        }
    } else {
        v22; /* bool */ v23 = stor_2_0_19.staticcall(0x21889a87, block.coinbase).gas(msg.gas);
        require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v23 == bool(v23));
        require(v23, Error('not puissant'));
        v24; /* uint112 */ v25; /* uint112 */ v26; /* uint32 */ v27 = varg0.getReserves().gas(msg.gas);
        require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v25 == uint112(v25));
        require(v26 == uint112(v26));
        require(v27 == uint32(v27));
        v28 = v29 = uint112(v26);
        v28 = v30 = uint112(v25);
        if (varg1 >= varg2) {
        }
        if (varg4) {
            require(0 - varg6, Error(0x6a6f622d00000000000000000000000000000000000000000000000000000000));
            require(varg4 > v28, Error(0x7265732d00000000000000000000000000000000000000000000000000000000));
            v11 = v31 = _SafeSub(varg4, v28);
        }
        v32 = v33 = 0x542a(varg5, v28, v28, v11);
        v34 = 0x5d92(4 + MEM[64], v11, varg0);
        v35; /* bool */ v36 = varg1.transfer().gas(msg.gas);
        require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v36 == bool(v36));
        if (varg1 < varg2) {
            v32 = 0;
        } else {
            v32 = v37 = 0;
        }
        v38 = v39 = 0;
        while (v38 < 0) {
            MEM[160 + (v38 + (MEM[64] + 36))] = MEM[32 + (v38 + MEM[64])];
            v38 += 32;
        }
        require(bool((address(varg0)).code.size));
        v40 = varg0.swap(v32, v32, address(this), 0).gas(msg.gas);
        require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (0 != varg6) {
            map_5[varg6] = uint112(v33) | bytes4(map_5[varg6]) | uint112(v11) << 112;
        }
        v41 = _SafeMul(16, msg.data.length);
        v42 = _SafeAdd(21000, msg.gas);
        v43 = _SafeSub(v42, msg.gas);
        v44 = _SafeAdd(v43, v41);
        v45 = _SafeAdd(14154, v44);
        require(41947, Panic(18)); // division by zero
        if (v45 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v46 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v45 / 41947).gas(msg.gas);
            require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function notowner2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4, address varg5, uint256 varg6) private { 
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = v2 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v3 = _SafeSub(block.timestamp, map_7[address(varg6)]);
        if (v3 < stor_4) {
            return ;
        } else {
            v4; /* uint112 */ v5; /* uint112 */ v6; /* uint32 */ v7 = address(varg6).getReserves().gas(msg.gas);
            require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v5 == uint112(v5));
            require(v6 == uint112(v6));
            require(v7 == uint32(v7));
            v8 = v9 = uint112(v6);
            v8 = v10 = uint112(v5);
            if (varg5 >= varg4) {
            }
            v11 = v12 = 0x542a(varg1, v8, v8, varg3);
            if (v12 >= varg2) {
                v13 = 0x5d92(4 + MEM[64], varg3, varg6);
                v14; /* bool */ v15 = varg5.transfer().gas(msg.gas);
                require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v15 == bool(v15));
                if (varg5 < varg4) {
                    v11 = v16 = 0;
                } else {
                    v11 = 0;
                }
                v17 = v18 = 0;
                while (v17 < 0) {
                    MEM[160 + (v17 + (MEM[64] + 36))] = MEM[32 + (v17 + MEM[64])];
                    v17 += 32;
                }
                require(bool((address(varg6)).code.size));
                v19 = address(varg6).swap(v11, v11, address(this), 0).gas(msg.gas);
                require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (0 != varg0) {
                    map_5[varg0] = uint112(v12) | bytes4(map_5[varg0]) | uint112(varg3) << 112;
                }
                return ;
            } else {
                return ;
            }
        }
    } else {
        v20 = _SafeSub(block.timestamp, map_7[address(varg6)]);
        if (v20 >= stor_4) {
            v21; /* uint112 */ v22; /* uint112 */ v23; /* uint32 */ v24 = address(varg6).getReserves().gas(msg.gas);
            require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v22 == uint112(v22));
            require(v23 == uint112(v23));
            require(v24 == uint32(v24));
            v25 = v26 = uint112(v23);
            v25 = v27 = uint112(v22);
            if (varg5 >= varg4) {
            }
            v28 = v29 = 0x542a(varg1, v25, v25, varg3);
            if (v29 >= varg2) {
                v30 = 0x5d92(4 + MEM[64], varg3, varg6);
                v31; /* bool */ v32 = varg5.transfer().gas(msg.gas);
                require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v32 == bool(v32));
                if (varg5 < varg4) {
                    v28 = v33 = 0;
                } else {
                    v28 = 0;
                }
                v34 = v35 = 0;
                while (v34 < 0) {
                    MEM[160 + (v34 + (MEM[64] + 36))] = MEM[32 + (v34 + MEM[64])];
                    v34 += 32;
                }
                require(bool((address(varg6)).code.size));
                v36 = address(varg6).swap(v28, v28, address(this), 0).gas(msg.gas);
                require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (0 != varg0) {
                    map_5[varg0] = uint112(v29) | bytes4(map_5[varg0]) | uint112(varg3) << 112;
                }
                v37 = v38 = _SafeMul(16, msg.data.length);
                v39 = msg.gas;
                v40 = v41 = _SafeAdd(21000, msg.gas);
            }
        }
        v37 = v42 = _SafeMul(16, msg.data.length);
        v39 = v43 = msg.gas;
        v40 = v44 = _SafeAdd(21000, msg.gas);
        v45 = _SafeSub(v40, v39);
        v46 = _SafeAdd(v45, v37);
        v47 = _SafeAdd(14154, v46);
        require(41947, Panic(18)); // division by zero
        if (v47 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v48 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v47 / 41947).gas(msg.gas);
            require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        return ;
    }
}

function withdraw() public  { 
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = msg.sender.call().value(this.balance).gas(2300 * !this.balance);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function nonpayable3(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public  { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    0x28e7(varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function nonpayable4(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public  { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    require(bool(stor_3_0_19.code.size));
    v0 = stor_3_0_19.checkApproval(varg6).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x28e7(varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function nonpayable5(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public  { 
    require(msg.data.length - 4 >= 288);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v2 = v3 & 0xffffffffffffffffffffffffffffffffffffffff;
        v4 = _SafeSub(block.timestamp, map_7[v2]);
        if (v4 >= stor_4) {
            v5; /* uint112 */ v6; /* uint112 */ v7; /* uint32 */ v8 = (0xffffffffffffffffffffffffffffffffffffffff & ()).getReserves().gas(msg.gas);
            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v6 == uint112(v6));
            require(v7 == uint112(v7));
            require(v8 == uint32(v8));
            v9 = v10 = uint112(v7);
            v9 = v11 = uint112(v6);
            if (0xffffffffffffffffffffffffffffffffffffffff & () >= 0xffffffffffffffffffffffffffffffffffffffff & ()) {
            }
            v12 = v13 = v9 > ();
            if (v9 <= ()) {
                v12 = v3 < v9;
            }
            if (!v12) {
                v14 = _SafeSub(v3, v9);
                if (v14 <= ()) {
                    if (v14 < ()) {
                        goto ;
                    }
                }
                v15 = v16 = 0x542a(v3, v9, v9, v14);
                v17 = 0x5d92(4 + MEM[64], v14, v3);
                v18; /* bool */ v19 = (0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
                require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v19 == bool(v19));
                if (0xffffffffffffffffffffffffffffffffffffffff & () < 0xffffffffffffffffffffffffffffffffffffffff & ()) {
                    v15 = 0;
                } else {
                    v15 = v20 = 0;
                }
                MEM[4 + MEM[64]] = v15;
                v21 = v22 = 0;
                while (v21 < v23.length) {
                    MEM[160 + (v21 + (4 + MEM[64]))] = v23[v21];
                    v21 += 32;
                }
                require(bool((v3 & 0xffffffffffffffffffffffffffffffffffffffff).code.size));
                v24 = (v3 & 0xffffffffffffffffffffffffffffffffffffffff).swap(v15, v15, address(this), 0).gas(msg.gas);
                require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (0 != ()) {
                    map_5[v2] = uint112(v16) | bytes4(map_5[v2]) | uint112(v14) << 112;
                }
                goto ;
            } else {
                goto ;
            }
        }
    } else {
        v25 = v3 & 0xffffffffffffffffffffffffffffffffffffffff;
        v26 = _SafeSub(block.timestamp, map_7[v25]);
        if (v26 >= stor_4) {
            v27; /* uint112 */ v28; /* uint112 */ v29 /* uint32 */ v30 = (0xffffffffffffffffffffffffffffffffffffffff & ()).getReserves().gas(msg.gas);
            require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v28 == uint112(v28));
            require(v29 == uint112(v29));
            require(v30 == uint32(v30));
            v31 = v32 = uint112(v29);
            v31 = v33 = uint112(v28);
            if (0xffffffffffffffffffffffffffffffffffffffff & () >= 0xffffffffffffffffffffffffffffffffffffffff & ()) {
            }
            v34 = v35 = v31 > ();
            if (v31 <= ()) {
                v34 = v3 < v31;
            }
            if (!v34) {
                v36 = _SafeSub(v3, v31);
                if (v36 <= ()) {
                    if (v36 < ()) {
                    }
                }
                v37 = v38 = 0x542a(v3, v31, v31, v36);
                v39 = 0x5d92(4 + MEM[64], v36, v3);
                v40 /* bool */ v41 = (0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
                require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v41 == bool(v41));
                if (0xffffffffffffffffffffffffffffffffffffffff & () < 0xffffffffffffffffffffffffffffffffffffffff & ()) {
                    v37 = 0;
                } else {
                    v37 = v42 = 0;
                }
                if (0) {
                    CALLDATACOPY(v43.data, msg.data.length, 0);
                    v44 = v43.data;
                }
                MEM[4 + MEM[64]] = v37;
                v45 = v46 = 0;
                while (v45 < v43.length) {
                    MEM[160 + (v45 + (4 + MEM[64]))] = v43[v45];
                    v45 += 32;
                }
                require(bool((0xffffffffffffffffffffffffffffffffffffffff & ()).code.size));
                v47 = (0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v37, v37, address(this), 0).gas(msg.gas);
                require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (0 != ()) {
                    map_5[v25] = uint112(v38) | bytes4(map_5[v25]) | uint112(v36) << 112;
                }
            }
        }
        v48 = _SafeMul(16, msg.data.length);
        v49 = _SafeAdd(21000, msg.gas);
        v50 = _SafeSub(v49, msg.gas);
        v51 = _SafeAdd(v50, v48);
        v52 = _SafeAdd(14154, v51);
        require(41947, Panic(18)); // division by zero
        if (v52 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v53 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v52 / 41947).gas(msg.gas);
            require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function addOwners(address[] varg0) public  { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= 0xffffffffffffffff);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= 0xffffffffffffffff);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v0 << 5) + varg0.data + 32 - ((v0 << 5) + varg0.data) >= 32);
        require(varg0[v0 << 5][v0] == address(varg0[v0 << 5][v0]));
        if (uint8(_isOwner[address(varg0[v0 << 5][v0])])) {
            goto;
        } else {
            _isOwner[address(varg0[v0 << 5][v0])] = 0x1 | bytes31(_isOwner[address(varg0[v0 << 5][v0])]);
            _owners = 1 + _owners.length;
            MEM[0] = 1;
            _owners[_owners.length] = address(varg0[v0 << 5][v0]) | bytes12(_owners[_owners.length]);
        }
        v0 = 0x5de3(v0);
    }
}

function nonpayable5 (address varg0, address varg1, address varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public  { 
    require(msg.data.length - 4 >= 288);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(varg3 == varg3);
    require(varg4 == varg4);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v2 /* bool */ v3 = stor_2_0_19.staticcall(0x21889a87, block.coinbase).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == bool(v3));
        require(v3, Error(0x6e6f742070750000000000000000000000000000000000000000000000000000));
        v4 = 0x5484(v5, v5, v5);
        v6 = 0x5484(v5, v5, v5);
        require(v5 > MEM[v6], Error(0x722d000000000000000000000000000000000000000000000000000000000000));
        v7 = _SafeSub(v5, MEM[v6]);
        v8 = v9 = 0x55e6(v5, MEM[v4 + 32], MEM[v4], v7);
        v10 v8 = (v5 & 0xffffffffffffffffffffffffffffffffffffffff).balanceOf(this).gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0 - v8, Error(0x622d000000000000000000000000000000000000000000000000000000000000));
        v11 = MEM[64];
        MEM[v11] = 0;
        MEM[32 + v11] = address(0x0);
        MEM[64 + v11] = address(0x0);
        MEM[96 + v11] = address(0x0);
        MEM[128 + v11] = address(0x0);
        MEM[160 + v11] = address(0x0);
        MEM[192 + v11] = 0;
        MEM[224 + v11] = 0;
        MEM[256 + v11] = 0;
        MEM[288 + v11] = 0;
        v12 = 0x5d92(4 + MEM[64], v8, v5 & 0xffffffffffffffffffffffffffffffffffffffff);
        v13 /* bool */ v14 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v14 == bool(v14));
        v15 = v16 = 0x542a(0, MEM[32 + v4], MEM[v4], v8);
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(0xffffffffffffffffffffffffffffffffffffffff & ())) {
            v15 = v17 = 0;
        } else {
            v15 = 0;
        }
        v18 = v19 = 0;
        while (v18 < 0) {
            MEM[160 + (v18 + (MEM[64] + 36))] = MEM[32 + (v18 + MEM[64])];
            v18 += 32;
        }
        require(bool((address(v5 & 0xffffffffffffffffffffffffffffffffffffffff)).code.size));
        v20 = address(v5 & 0xffffffffffffffffffffffffffffffffffffffff).swap(v15, v15, address(0xffffffffffffffffffffffffffffffffffffffff & ()), 0).gas(msg.gas);
        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v21 = v22 = 0x542a(0, MEM[v6 + 32], MEM[v6], v16);
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(v5 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            v21 = v23 = 0;
        } else {
            v21 = 0;
        }
        MEM[MEM[64] + 36] = v21;
        v24 = v25 = 0;
        while (v24 < 0) {
            MEM[160 + (v24 + (MEM[64] + 36))] = MEM[32 + (v24 + MEM[64])];
            v24 += 32;
        }
        require(bool((address(0xffffffffffffffffffffffffffffffffffffffff & ())).code.size));
        v26 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v5, v21, address(this), 128, v5, 0).gas(msg.gas);
        require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        map_5[msg.sender] = uint112(v22) | bytes4(map_5[msg.sender]) | uint112(v8) << 112;
    } else {
        v27 /* bool */ v28 = stor_2_0_19.staticcall(0x21889a87, block.coinbase).gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v28 == bool(v28));
        require(v28, Error(0x6e6f742070750000000000000000000000000000000000000000000000000000));
        v29 = 0x5484(v5, v5, v5);
        v30 = 0x5484(v5, v5, v5);
        require(v5 > MEM[v30], Error(0x722d000000000000000000000000000000000000000000000000000000000000));
        v31 = _SafeSub(v5, MEM[v30]);
        v32 = v33 = 0x55e6(v5, MEM[v29 + 32], MEM[v29], v31);
        v34 v32 = (v5 & 0xffffffffffffffffffffffffffffffffffffffff).balanceOf(this).gas(msg.gas);
        require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0 - v32, Error(0x622d000000000000000000000000000000000000000000000000000000000000));
        v35 = MEM[64];
        MEM[v35] = 0;
        MEM[32 + v35] = address(0x0);
        MEM[64 + v35] = address(0x0);
        MEM[96 + v35] = address(0x0);
        MEM[128 + v35] = address(0x0);
        MEM[160 + v35] = address(0x0);
        MEM[192 + v35] = 0;
        MEM[224 + v35] = 0;
        MEM[256 + v35] = 0;
        MEM[288 + v35] = 0;
        v36 = 0x5d92(4 + MEM[64], v32, v5 & 0xffffffffffffffffffffffffffffffffffffffff);
        v37 /* bool */ v38 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
        require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v38 == bool(v38));
        v39 = v40 = 0x542a(0, MEM[32 + v29], MEM[v29], v32);
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(0xffffffffffffffffffffffffffffffffffffffff & ())) {
            v39 = v41 = 0;
        } else {
            v39 = 0;
        }
        v42 = v43 = 0;
        while (v42 < 0) {
            MEM[160 + (v42 + (MEM[64] + 36))] = MEM[32 + (v42 + MEM[64])];
            v42 += 32;
        }
        require(bool((address(v5 & 0xffffffffffffffffffffffffffffffffffffffff)).code.size));
        v44 = address(v5 & 0xffffffffffffffffffffffffffffffffffffffff).swap(v39, v39, address(0xffffffffffffffffffffffffffffffffffffffff & ()), 0).gas(msg.gas);
        require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v45 = v46 = 0x542a(0, MEM[v30 + 32], MEM[v30], v40);
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(v5 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            v45 = v47 = 0;
        } else {
            v45 = 0;
        }
        v48 = v49 = 0;
        while (v48 < 0) {
            MEM[160 + (v48 + (MEM[64] + 36))] = MEM[32 + (v48 + MEM[64])];
            v48 += 32;
        }
        require(bool((address(0xffffffffffffffffffffffffffffffffffffffff & ())).code.size));
        v50 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v45, v45, address(this), 128, v5, 0).gas(msg.gas);
        require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        map_5[msg.sender] = uint112(v46) | bytes4(map_5[msg.sender]) | uint112(v32) << 112;
        v51 = _SafeMul(16, msg.data.length);
        v52 = _SafeAdd(21000, msg.gas);
        v53 = _SafeSub(v52, msg.gas);
        v54 = _SafeAdd(v53, v51);
        v55 = _SafeAdd(14154, v54);
        require(41947, Panic(18)); // division by zero
        if (v55 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v56 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v55 / 41947).gas(msg.gas);
            require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function nonpayable6 (address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public  { 
    require(msg.data.length - 4 >= 256);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    require(bool(stor_3_0_19.code.size));
    v0 = stor_3_0_19.checkApproval(varg7).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0xe68(varg7, varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function owners() public  { 
    v0 = new uint256[](_owners.length);
    v1 = v2 = v0.data;
    if (_owners.length) {
        v3 = v4 = _owners.data;
        do {
            MEM[v1] = address(STORAGE[v3]);
            v3 = v3 + 1;
            v1 += 32;
        } while (v2 + (_owners.length << 5) <= v1);
    }
    v5 = new array[](v0.length);
    v6 = v7 = 0;
    v8 = v9 = v0.data;
    v10 = v11 = v5.data;
    while (v6 < v0.length) {
        MEM[v10] = address(MEM[v8]);
        v8 += 32;
        v10 += 32;
        v6 += 1;
    }
    return v5;
}

function nonpayable7 (address varg0, address varg1, address varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public  { 
    require(msg.data.length - 4 >= 288);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(varg3 == varg3);
    require(varg4 == varg4);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        require(0 - uint112(map_5[varg8]), Error(0x662d000000000000000000000000000000000000000000000000000000000000));
        v2 = 0x5484(v3, v3, v3);
        v4 = 0x5484(v3, v3, v3);
        v5 = MEM[64];
        MEM[v5] = 0;
        MEM[32 + v5] = address(0x0);
        MEM[64 + v5] = address(0x0);
        MEM[96 + v5] = address(0x0);
        MEM[128 + v5] = address(0x0);
        MEM[160 + v5] = address(0x0);
        MEM[192 + v5] = 0;
        MEM[224 + v5] = 0;
        MEM[256 + v5] = 0;
        MEM[288 + v5] = 0;
        v6 v7 = (v3 & 0xffffffffffffffffffffffffffffffffffffffff).balanceOf(this).gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v8 = 0x5d92(4 + MEM[64], uint112(map_5[varg8]), 0xffffffffffffffffffffffffffffffffffffffff & ());
        v9 /* bool */ v10 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
        require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v10 == bool(v10));
        v11 = v12 = 0x542a(0, MEM[32 + v2], MEM[v2], uint112(map_5[varg8]));
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(0xffffffffffffffffffffffffffffffffffffffff & ())) {
            v11 = v13 = 0;
        } else {
            v11 = 0;
        }
        v14 = v15 = 0;
        while (v14 < 0) {
            MEM[160 + (v14 + (MEM[64] + 36))] = MEM[32 + (v14 + MEM[64])];
            v14 += 32;
        }
        require(bool((address(0xffffffffffffffffffffffffffffffffffffffff & ())).code.size));
        v16 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v11, v11, address(0xffffffffffffffffffffffffffffffffffffffff & ()), 0).gas(msg.gas);
        require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v17 = v18 = 0x542a(0, MEM[v4 + 32], MEM[v4], v12);
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(v3 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            v17 = v19 = 0;
        } else {
            v17 = 0;
        }
        v20 = v21 = 0;
        while (v20 < 0) {
            MEM[160 + (v20 + (MEM[64] + 36))] = MEM[32 + (v20 + MEM[64])];
            v20 += 32;
        }
        require(bool((address(0xffffffffffffffffffffffffffffffffffffffff & ())).code.size));
        v22 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v17, v17, address(this), 128, v3, 0).gas(msg.gas);
        require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v23 v24 = (v3 & 0xffffffffffffffffffffffffffffffffffffffff).balanceOf(this).gas(msg.gas);
        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v24 > v7, Error(0x732d000000000000000000000000000000000000000000000000000000000000));
        v25 = _SafeSub(v24, v7);
        v26 = v27 = v25 < uint112(map_5[varg8] >> 112);
        if (v25 >= uint112(map_5[varg8] >> 112)) {
            v26 ;
            if (v25 >= uint112(map_5[varg8] >> 112)) {
                v28 = _SafeSub(v25, uint112(map_5[varg8] >> 112));
                v26 = v29 = v28 < ();
            }
        }
        require(!v26, v3, v25, uint112(map_5[varg8] >> 112));
        map_5[varg8] = bytes4(map_5[varg8]);
    } else {
        require(0 - uint112(map_5[varg8]), Error(0x662d000000000000000000000000000000000000000000000000000000000000));
        v30 = 0x5484(v3, v3, v3);
        v31 = 0x5484(v3, v3, v3);
        v32 = MEM[64];
        MEM[v32] = 0;
        MEM[32 + v32] = address(0x0);
        MEM[64 + v32] = address(0x0);
        MEM[96 + v32] = address(0x0);
        MEM[128 + v32] = address(0x0);
        MEM[160 + v32] = address(0x0);
        MEM[192 + v32] = 0;
        MEM[224 + v32] = 0;
        MEM[256 + v32] = 0;
        MEM[288 + v32] = 0;
        v33 v34 = (v3 & 0xffffffffffffffffffffffffffffffffffffffff).balanceOf(this).gas(msg.gas);
        require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v35 = 0x5d92(4 + MEM[64], uint112(map_5[varg8]), 0xffffffffffffffffffffffffffffffffffffffff & ());
        v36 /* bool */ v37 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
        require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v37 == bool(v37));
        v38 = v39 = 0x542a(0, MEM[32 + v30], MEM[v30], uint112(map_5[varg8]));
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(0xffffffffffffffffffffffffffffffffffffffff & ())) {
            v38 = v40 = 0;
        } else {
            v38 = 0;
        }
        v41 = v42 = 0;
        while (v41 < 0) {
            MEM[160 + (v41 + (MEM[64] + 36))] = MEM[32 + (v41 + MEM[64])];
            v41 += 32;
        }
        require(bool((address(0xffffffffffffffffffffffffffffffffffffffff & ())).code.size));
        v43 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v38, v38, address(0xffffffffffffffffffffffffffffffffffffffff & ()), 0).gas(msg.gas);
        require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v44 = v45 = 0x542a(0, MEM[v31 + 32], MEM[v31], v39);
        if (address(0xffffffffffffffffffffffffffffffffffffffff & ()) < address(v3 & 0xffffffffffffffffffffffffffffffffffffffff)) {
            v44 = v46 = 0;
        } else {
            v44 = 0;
        }
        v47 = v48 = 0;
        while (v47 < 0) {
            MEM[160 + (v47 + (MEM[64] + 36))] = MEM[32 + (v47 + MEM[64])];
            v47 += 32;
        }
        require(bool((address(0xffffffffffffffffffffffffffffffffffffffff & ())).code.size));
        v49 = address(0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v44, v44, address(this), 128, v3, 0).gas(msg.gas);
        require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v50; v51 = (v3 & 0xffffffffffffffffffffffffffffffffffffffff).balanceOf(this).gas(msg.gas);
        require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v51 > v34, Error(0x732d000000000000000000000000000000000000000000000000000000000000));
        v52 = _SafeSub(v51, v34);
        v53 = v54 = v52 < uint112(map_5[varg8] >> 112);
        if (v52 >= uint112(map_5[varg8] >> 112)) {
            v53 = v53 = v54 = v52 < uint112(map_5[varg8] >> 112);
            if (v53 >= uint112(map_5[varg8] >> 112))  {
                v55 = _SafeSub(v52, uint112(map_5[varg8] >> 112));
                v53 = v56 = v55 < ();
            }
        }
        require(!v53, v3, v52, uint112(map_5[varg8] >> 112));
        map_5[varg8] = bytes4(map_5[varg8]);
        v57 = _SafeMul(16, msg.data.length);
        v58 = _SafeAdd(21000, msg.gas);
        v59 = _SafeSub(v58, msg.gas);
        v60 = _SafeAdd(v59, v57);
        v61 = _SafeAdd(14154, v60);
        require(41947, Panic(18)); // division by zero
        if (v61 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v62 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v61 / 41947).gas(msg.gas);
            require(bool(v62), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function nonpayable6 (address varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, uint256 varg6) public { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(varg3 == varg3);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v2; /* uint112 */ v3; /* uint112 */ v4; /* uint32 */ v5 = varg0.getReserves().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v3 == uint112(v3));
        require(v4 == uint112(v4));
        require(v5 == uint32(v5));
        v6 = v7 = uint112(v4);
        v6 = v8 = uint112(v3);
        if (varg1 >= varg2) {
        }
        if (varg4 >= v6) {
            v9 = _SafeSub(varg4, v6);
            if (v9 >= varg5) {
                v10 = v11 = 0x542a(varg6, v6, v6, v9);
                v12; /* bool */ v13 = varg1.transferFrom(varg3, varg0, v9).gas(msg.gas);
                require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v13 == bool(v13));
                if (varg1 < varg2) {
                    v10 = v14 = 0;
                } else {
                    v10 = 0;
                }
                v15 = v16 = 0;
                while (v15 < 0) {
                    MEM[160 + (v15 + (MEM[64] + 36))] = MEM[32 + (v15 + MEM[64])];
                    v15 += 32;
                }
                require(bool((address(varg0)).code.size));
                v17 = varg0.swap(v10, v10, varg3, 0).gas(msg.gas);
                require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                goto ;
            } else {
                goto ;
            }
        }
    } else {
        v18; /* uint112 */ v19; /* uint112 */ v20; /* uint32 */ v21 = varg0.getReserves().gas(msg.gas);
        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v19 == uint112(v19));
        require(v20 == uint112(v20));
        require(v21 == uint32(v21));
        v22 = v23 = uint112(v20);
        v22 = v24 = uint112(v19);
        if (varg1 >= varg2) {
        }
        if (varg4 >= v22) {
            v25 = _SafeSub(varg4, v22);
            if (v25 >= varg5) {
                v26 = v27 = 0x542a(varg6, v22, v22, v25);
                v28; /* bool */ v29 = varg1.transferFrom(varg3, varg0, v25).gas(msg.gas);
                require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v29 == bool(v29));
                if (varg1 < varg2) {
                    v26 = v30 = 0;
                } else {
                    v26 = 0;
                }
                MEM[4 + MEM[64]] = v26;
                v31 = v32 = 0;
                while (v31 < v33.length) {
                    MEM[160 + (v31 + (4 + MEM[64]))] = v33[v31];
                    v31 += 32;
                }
                require(bool((address(varg0)).code.size));
                v34 = varg0.swap(v26, v26, varg3, 0).gas(msg.gas);
                require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v35 = v36 = _SafeMul(16, msg.data.length);
                v37 = v38 = msg.gas;
                v39 = v40 = _SafeAdd(21000, msg.gas);
            }
        }
        v35 = _SafeMul(16, msg.data.length);
        v37 = msg.gas;
        v39 = _SafeAdd(21000, msg.gas);
        v41 = _SafeSub(v39, v37);
        v42 = _SafeAdd(v41, v35);
        v43 = _SafeAdd(14154, v42);
        require(41947, Panic(18)); // division by zero
        if (v43 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v44 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v43 / 41947).gas(msg.gas);
            require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto ;
    }
}

function withdrawTo(address varg0, address varg1, uint256 varg2) public { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = 0x5d92(4 + MEM[64], varg2, varg1);
    v1; /* bool */ v2 = varg0.transfer().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
}

function mintGasTokens(uint256 varg0) public  { 
    require(msg.data.length - 4 >= 32);
    require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
    v0 = address(0x4946c0e9f43f4dee607b0ef1fa1c).mint(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function poolSearch(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4, address varg5, uint256 varg6) private { 
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = v2 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v3 = v4 = uint112(map_5[varg2]);
        if (0 - v4) {
            v5; /* uint112 */ v6; /* uint112 */ v7; /* uint32 */ v8 = address(varg6).getReserves().gas(msg.gas);
            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v6 == uint112(v6));
            require(v7 == uint112(v7));
            require(v8 == uint32(v8));
            v9 = v10 = uint112(v7);
            v9 = v11 = uint112(v6);
            if (varg5 >= varg4) {
            }
            v12 = v13 = 0x542a(varg1, v9, v9, v4);
            v14 = v15 = bool(varg0);
            if (varg0) {
                v14 = v16 = v13 < uint112(map_5[varg2] >> 112);
                if (v13 >= uint112(map_5[varg2] >> 112)) {
                    v17 = _SafeSub(v13, uint112(map_5[varg2] >> 112));
                    v14 = v18 = v17 < varg0;
                }
            }
            require(!v14, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
            if (0 - varg3) {
                if (v9 > varg3) {
                    return ;
                }
            } else if (v13 < uint112(map_5[varg2] >> 112)) {
                map_7[address(varg6)] = block.timestamp;
                return ;
            }
            if (!(0 - varg0)) {
                v19; v3 = varg5.balanceOf(this).gas(msg.gas);
                require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (v4 > v3) {
                    v12 = v20 = 0x542a(varg1, v9, v9, v3);
                }
            }
            if (v3) {
                v21; v22 = varg4.balanceOf(this).gas(msg.gas);
                require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v23 = 0x5d92(4 + MEM[64], v3, varg6);
                v24; /* bool */ v25 = varg5.transfer().gas(msg.gas);
                require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v25 == bool(v25));
                if (varg5 < varg4) {
                    v12 = v26 = 0;
                } else {
                    v12 = v27 = 0;
                }
                MEM[4 + MEM[64]] = v12;
                v28 = v29 = 0;
                while (v28 < v30.length) {
                    MEM[160 + (v28 + (4 + MEM[64]))] = v30[v28];
                    v28 += 32;
                }
                require(bool((address(varg6)).code.size));
                v31 = address(varg6).swap(v12, v12, address(this), 0).gas(msg.gas);
                require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                MEM[4 + MEM[64]] = address(this);
                v32; v33 = varg4.balanceOf(address(this)).gas(msg.gas);
                require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v34 = v35 = v33 < v22;
                if (v33 >= v22) {
                    v36 = _SafeSub(v33, v22);
                    v34 = v37 = v36 < v12;
                }
                require(!v34, Error(0x732d000000000000000000000000000000000000000000000000000000000000));
            }
            map_7[address(varg6)] = 0;
            map_5[varg2] = bytes4(map_5[varg2]);
            return ;
        } else {
            require(!varg0, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
            return ;
        }
    } else {
        v38 = v39 = uint112(map_5[varg2]);
        if (0 - v39) {
            v40; /* uint112 */ v41; /* uint112 */ v42; /* uint32 */ v43 = address(varg6).getReserves().gas(msg.gas);
            require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v41 == uint112(v41));
            require(v42 == uint112(v42));
            require(v43 == uint32(v43));
            v44 = v45 = uint112(v42);
            v44 = v46 = uint112(v41);
            if (varg5 >= varg4) {
            }
            v47 = v48 = 0x542a(varg1, v44, v44, v39);
            v49 = v50 = bool(varg0);
            if (varg0) {
                v49 = v51 = v48 < uint112(map_5[varg2] >> 112);
                if (v48 >= uint112(map_5[varg2] >> 112)) {
                    v52 = _SafeSub(v48, uint112(map_5[varg2] >> 112));
                    v49 = v53 = v52 < varg0;
                }
            }
            require(!v49, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
            if (0 - varg3) {
                if (v44 > varg3) {
                    goto x2aa40x40ab;
                }
            } else if (v48 < uint112(map_5[varg2] >> 112)) {
                map_7[address(varg6)] = block.timestamp;
                goto x2aa40x40ab;
            }
            if (!(0 - varg0)) {
                v54; v38 = varg5.balanceOf(this).gas(msg.gas);
                require(bool(v54), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (v39 > v38) {
                    v47 = v55 = 0x542a(varg1, v44, v44, v38);
                }
            }
            if (v38) {
                v56; v57 = varg4.balanceOf(this).gas(msg.gas);
                require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v58 = 0x5d92(4 + MEM[64], v38, varg6);
                v59; /* bool */ v60 = varg5.transfer().gas(msg.gas);
                require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v60 == bool(v60));
                if (varg5 < varg4) {
                    v47 = v61 = 0;
                } else {
                    v47 = v62 = 0;
                }
                if (0) {
                    CALLDATACOPY(v63.data, msg.data.length, 0);
                    v64 = v63.data;
                }
                MEM[4 + MEM[64]] = v47;
                v65 = v66 = 0;
                while (v65 < v63.length) {
                    MEM[160 + (v65 + (4 + MEM[64]))] = v63[v65];
                    v65 += 32;
                }
                require(bool((address(varg6)).code.size));
                v67 = address(varg6).swap(v47, v47, address(this), 0).gas(msg.gas);
                require(bool(v67), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                MEM[4 + MEM[64]] = address(this);
                v68; v69 = varg4.balanceOf(address(this)).gas(msg.gas);
                require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v70 = v71 = v69 < v57;
                if (v69 >= v57) {
                    v72 = _SafeSub(v69, v57);
                    v70 = v73 = v72 < v47;
                }
                require(!v70, Error(0x732d000000000000000000000000000000000000000000000000000000000000));
            }
            map_7[address(varg6)] = 0;
            map_5[varg2] = bytes4(map_5[varg2]);
            v74 = v75 = _SafeMul(16, msg.data.length);
            v76 = v77 = msg.gas;
            v78 = v79 = _SafeAdd(21000, msg.gas);
        } else {
            require(!varg0, Error(0x702d000000000000000000000000000000000000000000000000000000000000));
        }
        v74 = v80 = _SafeMul(16, msg.data.length);
        v76 = msg.gas;
        v78 = v81 = _SafeAdd(21000, msg.gas);
        v82 = _SafeSub(v78, v76);
        v83 = _SafeAdd(v82, v74);
        v84 = _SafeAdd(14154, v83);
        require(41947, Panic(18)); // division by zero
        if (v84 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v85 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v84 / 41947).gas(msg.gas);
            require(bool(v85), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        return ;
    }
}

function xd8d1f807(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public  { 
    require(msg.data.length - 4 >= 224);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    0x40ab(varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function xdc9a7977(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public  { 
    require(msg.data.length - 4 >= 256);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(bool(stor_3_0_19.code.size));
    v0 = stor_3_0_19.checkApproval(varg7).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x40ab(varg6, varg5, varg4, varg3, varg2, varg1, varg0);
}

function approve(address varg0, address varg1, uint256 varg2) public  { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = 0x5d92(4 + MEM[64], varg2, varg1);
    v1; /* bool */ v2 = varg0.approve().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
}

function xf092191f(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public  { 
    require(msg.data.length - 4 >= 320);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(varg2 == varg2);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v2 = v3 & 0xffffffffffffffffffffffffffffffffffffffff;
        v4 = _SafeSub(block.timestamp, map_7[v2]);
        if (v4 >= stor_4) {
            MEM[MEM[64]] = 0;
            MEM[32 + MEM[64]] = 0;
            MEM[64 + MEM[64]] = bool(0);
            v5; /* uint112 */ v6; /* uint112 */ v7; /* uint32 */ v8 = (0xffffffffffffffffffffffffffffffffffffffff & ()).getReserves().gas(msg.gas);
            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v6 == uint112(v6));
            require(v7 == uint112(v7));
            require(v8 == uint32(v8));
            v9 = v10 = uint112(v7);
            v9 = v11 = uint112(v6);
            if (0xffffffffffffffffffffffffffffffffffffffff & () >= 0xffffffffffffffffffffffffffffffffffffffff & ()) {
            }
            MEM[MEM[64] + 64] = 0;
            if (v3 >= v9) {
                if (v3 >= v9) {
                    v12 = v13 = _SafeSub(v3, v9);
                } else {
                    goto x670f;
                }
            } else if (v3 >= v9) {
                v12 = v14 = _SafeSub(v3, v9);
                if (v14 <= ()) {
                    MEM[MEM[64] + 64] = 1;
                } else {
                    goto x670f;
                }
            } else {
                goto x670f;
            }
            v15 = v16 = 0x542a(v3, v9, v9, v12);
            v17 = 0x5d92(4 + MEM[64], v12, v3);
            v18; /* bool */ v19 = (0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
            require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v19 == bool(v19));
            if (0xffffffffffffffffffffffffffffffffffffffff & () < 0xffffffffffffffffffffffffffffffffffffffff & ()) {
                v15 = v20 = 0;
            } else {
                v15 = 0;
            }
            MEM[4 + MEM[64]] = v15;
            v21 = v22 = 0;
            while (v21 < v23.length) {
                MEM[160 + (v21 + (4 + MEM[64]))] = v23[v21];
                v21 += 32;
            }
            require(bool((v3 & 0xffffffffffffffffffffffffffffffffffffffff).code.size));
            v24 = (v3 & 0xffffffffffffffffffffffffffffffffffffffff).swap(v15, v15, address(this), 0).gas(msg.gas);
            require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (0 != ()) {
                map_5[v2] = uint112(v16) | bytes18(map_5[v2]);
                if (!MEM[MEM[64] + 64]) {
                    map_5[v2] = map_5[v2] & ~0xffffffffffffffffffffffffffff0000000000000000000000000000 | uint112(v12) << 112;
                    goto x670f;
                }
            }
            goto x670f;
        }
    } else {
        v25 = v3 & 0xffffffffffffffffffffffffffffffffffffffff;
        v26 = _SafeSub(block.timestamp, map_7[v25]);
        if (v26 >= stor_4) {
            MEM[MEM[64]] = 0;
            MEM[32 + MEM[64]] = 0;
            MEM[64 + MEM[64]] = bool(0);
            v27; /* uint112 */ v28; /* uint112 */ v29; /* uint32 */ v30 = (0xffffffffffffffffffffffffffffffffffffffff & ()).getReserves().gas(msg.gas);
            require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
            require(v28 == uint112(v28));
            require(v29 == uint112(v29));
            require(v30 == uint32(v30));
            v31 = v32 = uint112(v29);
            v31 = v33 = uint112(v28);
            if (0xffffffffffffffffffffffffffffffffffffffff & () >= 0xffffffffffffffffffffffffffffffffffffffff & ()) {
            }
            MEM[MEM[64] + 64] = 0;
            if (v3 >= v31) {
                if (v3 >= v31) {
                    v34 = v35 = _SafeSub(v3, v31);
                }
            } else if (v3 >= v31) {
                v34 = v36 = _SafeSub(v3, v31);
                if (v36 <= ()) {
                    MEM[MEM[64] + 64] = 1;
                }
            }
            v37 = v38 = 0x542a(v3, v31, v31, v34);
            v39 = 0x5d92(4 + MEM[64], v34, v3);
            v40; /* bool */ v41 = (0xffffffffffffffffffffffffffffffffffffffff & ()).transfer().gas(msg.gas);
            require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v41 == bool(v41));
            if (0xffffffffffffffffffffffffffffffffffffffff & () < 0xffffffffffffffffffffffffffffffffffffffff & ()) {
                v37 = v42 = 0;
            } else {
                v37 = 0;
            }
            if (0) {
                CALLDATACOPY(v43.data, msg.data.length, 0);
                v44 = v43.data;
            }
            MEM[4 + MEM[64]] = v37;
            v45 = v46 = 0;
            while (v45 < v43.length) {
                MEM[160 + (v45 + (4 + MEM[64]))] = v43[v45];
                v45 += 32;
            }
            require(bool((0xffffffffffffffffffffffffffffffffffffffff & ()).code.size));
            v47 = (0xffffffffffffffffffffffffffffffffffffffff & ()).swap(v37, v37, address(this), 0).gas(msg.gas);
            require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (0 != ()) {
                map_5[v25] = uint112(v38) | bytes18(map_5[v25]);
                if (!MEM[MEM[64] + 64]) {
                    map_5[v25] = uint112(v34) << 112 | ~0xffffffffffffffffffffffffffff0000000000000000000000000000 & map_5[v25];
                }
            }
        }
        v48 = _SafeMul(16, msg.data.length);
        v49 = _SafeAdd(21000, msg.gas);
        v50 = _SafeSub(v49, msg.gas);
        v51 = _SafeAdd(v50, v48);
        v52 = _SafeAdd(14154, v51);
        require(41947, Panic(18)); // division by zero
        if (v52 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v53 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v52 / 41947).gas(msg.gas);
            require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        goto x670f;
    }
}

function withdraw(address varg0, uint256 varg1) public  { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = 0x5d92(4 + MEM[64], varg1, msg.sender);
    v1; /* bool */ v2 = varg0.transfer().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
}

function x542a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = _SafeSub(10000, varg0);
    v1 = _SafeMul(varg3, v0);
    v2 = _SafeMul(v1, varg1);
    v3 = _SafeMul(10000, varg2);
    v4 = _SafeAdd(v3, v1);
    require(v4, Panic(18)); // division by zero
    return v2 / v4;
}

function x5484(address varg0, address varg1, address varg2) private { 
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    v0 = new mystruct(2);
    v0.word0 = 0;
    v0.word1 = 0;
    v1; /* uint112 */ v2; /* uint112 */ v3; /* uint32 */ v4 = varg2.getReserves().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v2 == uint112(v2));
    require(v3 == uint112(v3));
    require(v4 == uint32(v4));
    v5 = v6 = uint112(v3);
    v5 = v7 = uint112(v2);
    if (varg1 >= varg0) {
    }
    v0.word1 = v5;
    v0.word0 = v5;
    return v0;
}

function x55e6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = _SafeMul(varg2, varg3);
    v1 = _SafeMul(10000, v0);
    v2 = _SafeSub(10000, varg0);
    v3 = _SafeSub(varg1, varg3);
    v4 = _SafeMul(v3, v2);
    require(v4, Panic(18)); // division by zero
    v5 = _SafeAdd(1, v1 / v4);
    return v5;
}

function x5d92(uint256 varg0, uint256 varg1, address varg2) private { 
    MEM[varg0] = varg2;
    MEM[varg0 + 32] = varg1;
    return 64 + varg0;
}

function x5de3(uint256 varg0) private { 
    require(varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function payable3  () public payable { 
}

function xe68(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    require(uint8(_isOwner[msg.sender]), Error('Ownable: caller is not the owner'));
    v0 = v1 = bool(address(0x4946c0e9f43f4dee607b0ef1fa1c));
    if (address(0x4946c0e9f43f4dee607b0ef1fa1c)) {
        v0 = v2 = msg.gas >= 0x2cb417800;
    }
    if (!v0) {
        v3 = _SafeSub(block.timestamp, map_7[address(varg7)]);
        if (v3 < stor_4) {
            return ;
        } else {
            v4 = 0x5484(varg5, varg6, varg7);
            v5 = v6 = varg4 < MEM[v4];
            if (varg4 >= MEM[v4]) {
                v7 = _SafeSub(varg4, MEM[v4]);
                v5 = v8 = v7 < varg3;
            }
            if (!v5) {
                v9 = _SafeSub(varg4, MEM[v4]);
                v10 = v11 = _SafeMul(v9, varg2);
                v12; v10 = address(varg6).balanceOf(this).gas(msg.gas);
                require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (0 - v10) {
                    v13 = v14 = 0x542a(varg1, MEM[32 + v4], MEM[0 + v4], v10);
                    v15 = 0x5d92(4 + MEM[64], v10, varg7);
                    v16; /* bool */ v17 = address(varg6).transfer().gas(msg.gas);
                    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(v17 == bool(v17));
                    if (address(varg6) < address(varg5)) {
                        v13 = v18 = 0;
                    } else {
                        v13 = v19 = 0;
                    }
                    v20 = v21 = 0;
                    while (v20 < 0) {
                        MEM[160 + (v20 + (MEM[64] + 36))] = MEM[32 + (v20 + MEM[64])];
                        v20 += 32;
                    }
                    require(bool((address(varg7)).code.size));
                    v22 = address(varg7).swap(v13, v13, address(this), 0).gas(msg.gas);
                    require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    map_5[varg0] = uint112(v14) | bytes4(map_5[varg0]) | uint112(v10) << 112;
                    map_7[address(varg7)] = block.timestamp;
                    return ;
                } else {
                    return ;
                }
            } else {
                return ;
            }
        }
    } else {
        v23 = _SafeSub(block.timestamp, map_7[address(varg7)]);
        if (v23 >= stor_4) {
            v24 = 0x5484(varg5, varg6, varg7);
            v25 = v26 = varg4 < MEM[v24];
            if (varg4 >= MEM[v24]) {
                v27 = _SafeSub(varg4, MEM[v24]);
                v25 = v28 = v27 < varg3;
            }
            if (!v25) {
                v29 = _SafeSub(varg4, MEM[v24]);
                v30 = v31 = _SafeMul(v29, varg2);
                v32; v30 = address(varg6).balanceOf(this).gas(msg.gas);
                require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (0 - v30) {
                    v33 = v34 = 0x542a(varg1, MEM[32 + v24], MEM[0 + v24], v30);
                    v35 = 0x5d92(4 + MEM[64], v30, varg7);
                    v36; /* bool */ v37 = address(varg6).transfer().gas(msg.gas);
                    require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(v37 == bool(v37));
                    if (address(varg6) < address(varg5)) {
                        v33 = v38 = 0;
                    } else {
                        v33 = v39 = 0;
                    }
                    MEM[4 + MEM[64]] = v33;
                    v40 = v41 = 0;
                    while (v40 < v42.length) {
                        MEM[160 + (v40 + (4 + MEM[64]))] = v42[v40];
                        v40 += 32;
                    }
                    require(bool((address(varg7)).code.size));
                    v43 = address(varg7).swap(v33, v33, address(this), 0).gas(msg.gas);
                    require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    map_5[varg0] = uint112(v34) | bytes18(map_5[varg0]);
                    map_5[varg0] = uint112(v30) << 112 | ~0xffffffffffffffffffffffffffff0000000000000000000000000000 & map_5[varg0];
                    map_7[address(varg7)] = block.timestamp;
                }
            }
        }
        v44 = _SafeMul(16, msg.data.length);
        v45 = _SafeAdd(21000, msg.gas);
        v46 = _SafeSub(v45, msg.gas);
        v47 = _SafeAdd(v46, v44);
        v48 = _SafeAdd(14154, v47);
        require(41947, Panic(18)); // division by zero
        if (v48 / 41947) {
            require(bool((address(0x4946c0e9f43f4dee607b0ef1fa1c)).code.size));
            v49 = address(0x4946c0e9f43f4dee607b0ef1fa1c).freeUpTo(v48 / 41947).gas(msg.gas);
            require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        return ;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
       notowner1();
    } else if (0x6c46a2c5 > function_selector >> 224) {
        if (0x3386e4a6 > function_selector >> 224) {
            if (0x157620ab == function_selector >> 224) {
                withdraw(address[],address);
            } else if (withdrawalvalid == function_selector >> 224) {
                withdrawalvalid();
            } else if (withdrawalvalid2 == function_selector >> 224) {
                withdrawalvalid2();
            } else if (0x2f54bf6e == function_selector >> 224) {
                isOwner(address);
            } else if (0x2fa73990 == function_selector >> 224) {
                0x2fa73990();
            } else {
                require(0x331bfd6e == function_selector >> 224);
                0x331bfd6e();
            }
        } else if (0x3386e4a6 == function_selector >> 224) {
            0x3386e4a6();
        } else if (0x356bc373 == function_selector >> 224) {
            0x356bc373();
        } else if (0x3ccfd60b == function_selector >> 224) {
            withdraw();
        } else if (0x4846220e == function_selector >> 224) {
            0x4846220e();
        } else if (0x5360e21f == function_selector >> 224) {
            0x5360e21f();
        } else {
            require(0x6713b7e8 == function_selector >> 224);
            0x6713b7e8();
        }
    } else if (0xc3b35a7e > function_selector >> 224) {
        if (0x6c46a2c5 == function_selector >> 224) {
            addOwners(address[]);
        } else if (0x7137ee44 == function_selector >> 224) {
            0x7137ee44();
        } else if (0xabfb8e5c == function_selector >> 224) {
            0xabfb8e5c();
        } else if (0xaffe39c1 == function_selector >> 224) {
            owners();
        } else if (0xbf4cc240 == function_selector >> 224) {
            0xbf4cc240();
        } else {
            require(0xc36e8bc5 == function_selector >> 224);
            0xc36e8bc5();
        }
    } else if (0xdc9a7977 > function_selector >> 224) {
        if (0xc3b35a7e == function_selector >> 224) {
            withdrawTo(address,address,uint256);
        } else if (0xd0847f1c == function_selector >> 224) {
            mintGasTokens(uint256);
        } else {
            require(0xd8d1f807 == function_selector >> 224);
            0xd8d1f807();
        }
    } else if (0xdc9a7977 == function_selector >> 224) {
        0xdc9a7977();
    } else if (0xe1f21c67 == function_selector >> 224) {
        approve(address,address,uint256);
    } else if (0xf092191f == function_selector >> 224) {
        0xf092191f();
    } else {
        require(0xf3fef3a3 == function_selector >> 224);
        withdraw(address,uint256);
    }
}

}




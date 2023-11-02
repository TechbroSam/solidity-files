// Decompiled by library.dedaub.com
// 2023.07.17 10:56 UTC
// Compiled using the solidity compiler version 0.8.14


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Data structures and variables inferred from the use of storage instructions
uint256 _owner; // STORAGE[0x0] bytes 0 to 19
uint256 _wETH; // STORAGE[0x1] bytes 0 to 19



contract SamMevBot {


    modifier nonPayable() {
        require(msg.value == 0, "This function should not accept Ether.");
        _;
    }



    uint256 v0;
    uint256 v1; // Declaration of v1
    uint256 v2; // Declaration of v2 uint256 v1; // Declaration of v1
    uint256 v3;
    uint256 v4;
    uint256 v5; 
    uint256 v6;
    uint256 v7;
    uint256 v8;
    uint256 v9;
    uint256 v10;
    uint256 v11;
    uint256 v12;
    uint256 v13;
    uint256 v14;
    uint256 v15;
    uint256 v16;
    uint256 v17;
    uint256 v18;
    uint256 v19;
    uint256 v20;
    uint256 v21;
    uint256 v22;
    uint256 v23;
    uint256 v24;
    uint256 v25;
    uint256 v26;
    uint256 v27;
    

   

    // Example declaration of MEM as a mapping
    mapping(uint256 => uint256) public MEM;


    error BlockNumberErrorM(string message);
    error NotAdminM(string message);
    error Panic(uint256 code);




    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);




function memscan(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 


    uint256[] memory MEM; // Declaration of a memory array

    assembly {
        v0 := mload(varg4)
    }
    v0 = MEM[varg4];
    if (v0 > 0) {
        v1 = v2 = 32;
        while (v1 < v0 + 1) {
            MEM[v1 + (MEM[64] + 132)] = MEM[v1 + varg4];
            v1 += 32;
        }
        if (v0 & 0x1f) {
            MEM[MEM[64] + 132 + v1] = MEM[varg4 + v1];
        }
    }
     assembly {
        v3 := call(gas(), varg0, 0, varg1, varg2, varg3, 128, v0)
        let size := returndatasize()
        let ptr := mload(0x40)
        returndatacopy(ptr, 0, size)
        require(v3, ptr, size)
    }
    return ;
}

function memscan2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private {

    v0; v1 = 0x14b7(varg2, varg3);
    if (v1 == varg2 == 1) {
        v2 = v3 = 1;
    } else {
        v2 = v4 = 0;
    }
    if (!varg0 == 1) {
        v5; v6 = 0x1238(varg1, v2);
        require(varg4 * 997 * v5 / (v6 * 1000 + varg4 * 997) >= varg5, "Custom error message for require");
    } else {
        v7 = varg1.slot0().gas(msg.gas);
               assembly {
            // Copy returned data to memory
            returndata := mload(0x40)
            let size := returndatasize()
            returndatacopy(returndata, 0, size)
        }
        if (v2 == 1) {
            require(0x3850c7bd00000000000000000000000000000000000000000000000000000000 >= msg.data[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec + msg.data.length] >> 96, "Custom error message for require");
        } else {
            require(0x3850c7bd00000000000000000000000000000000000000000000000000000000 <= msg.data[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec + msg.data.length] >> 96, "Custom error message for require");
        }
    }
    return;
}


function memscan3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private {


    if (!varg0 == 1) {
        v0; v1 = 0x1238(varg1, varg2);
        require(varg3 * 997 * v0 / (v1 * 1000 + varg3 * 997) >= varg4, "Custom error message for require");
        return;
    } else {
        bytes memory returndata;
        v2 = varg1.slot0().gas(msg.gas);

        assembly {
            // Copy returned data to memory
            returndata := mload(0x40)
            let size := returndatasize()
            returndatacopy(returndata, 0, size)
        }

        if (varg2 == 1) {
            require(0x3850c7bd00000000000000000000000000000000000000000000000000000000 >= returndata[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec + returndata.length] >> 96, "Custom error message for require");
        } else {
            require(0x3850c7bd00000000000000000000000000000000000000000000000000000000 <= returndata[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec + returndata.length] >> 96, "Custom error message for require");
        }
        return;
    }
}


function memscan4(uint256 varg0, uint256 varg1) private returns (uint256) {


    v0 = varg0.getReserves().gas(msg.gas);

    assembly {
        // Copy returned data to memory
        let size := returndatasize()
        returndatacopy(0x40, 0, size)
        
        v3 := mload(add(0x40, 32))
    }

    v1 = v2 = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
    v1 = v3;

    if (varg1 != 1) {
        // Do something if varg1 is not equal to 1
        // ...
    }

    return v1;
}





function safeTransfer(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    bool v0 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(v0, "safeTransfer:transfer failed");
    return;
}


function memscan6(uint256 varg0, uint256 varg1) private { 
    if (varg0 < varg1 != 1) {
    }
    return varg1; varg1;
}

function withdrawToken(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg1 == varg1);
    require(msg.sender == _owner, 'Ownable: caller is not the owner');

    bool v0 = varg0.transfer(varg1, varg2).gas(msg.gas);
    
    assembly {
        // Copy the return data to memory starting from the 64th slot (offset 64 * 32 bytes)
        RETURNDATACOPY(64, 0, RETURNDATASIZE())
    }
    
    if (v0) {
        bool v2;
        assembly {
            // Load the value at the specified position in memory (0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            v2 := mload(0xa9059cbb00000000000000000000000000000000000000000000000000000000)
        }
        
        if (v2) {
            require(0xa9059cbb00000000000000000000000000000000000000000000000000000020 + v2 - 0xa9059cbb00000000000000000000000000000000000000000000000000000020 >= 32);
            v0 = v2;
            require(v0 == bool(v0));
        }
    }
    require(v0, 'TransferHelper::safeTransfer: transfer failed');
}



function depositWETH() public payable { 
    require(msg.value > 0, "value is 0");
    0x20c5(msg.value, _wETH);
}

function withdrawETH(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 == varg0);
   require(msg.sender == _owner, "Ownable: caller is not the owner");

    0x20c5(varg1, varg0);
}

    function renounceOwnership() public nonPayable {
        require(msg.sender == _owner, "Ownable: caller is not the owner");

        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

function owner() public nonPayable { 
    return _owner;
}

function WETH() public nonPayable { 
    return _wETH;
}

function payable1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= 0xffffffffffffffff);
    require(4 + varg0 + 31 < msg.data.length);
    v0 = v1 = varg0.length;
    require(v1 <= 0xffffffffffffffff);
    require(4 + varg0 + (v1 << 5) + 32 <= msg.data.length);
    v2 = v3 = !varg1;
    if (varg1) {
        v2 = varg1 == block.number;
    }
    require(v2, BlockNumberErrorM('Block number error'));

    v4 = v5 = msg.sender == 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5;
    if (msg.sender != 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5) {
        v4 = v6 = 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8 == msg.sender;
    }
    if (!v4) {
        v4 = v7 = 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b == msg.sender;
    }
    if (!v4) {
        v4 = v8 = 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50 == msg.sender;
    }
    if (!v4) {
        v4 = v9 = 0xde09838eedb3030153524b5a14972e7c9ef65765 == msg.sender;
    }
    if (!v4) {
        v4 = 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c == msg.sender;
    }
    require(v4, NotAdminM('Not admin error'));
    require(v1 <= 0xffffffffffffffff, Panic(65));
 // failed memory allocation (too much memory)
    v10 = new uint256[](v1);
    if (v1) {
        v11 = v10.data;
        do {
            assembly {
        // Set value 96 at the address pointed by v11
        mstore(v11, 96)
    }
            v11 += 32;
            v0 = v0 - 1;
        } while (!v0);
    }
    v12 = v13 = 0;

        while (v12 < v1) {
        require(v12 < v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v12 << 5][v12] < msg.data.length - varg0.data + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe1);
        require(varg0[varg0[v12 << 5][v12]] <= 0xffffffffffffffff);
        require(32 + (varg0.data + varg0[v12 << 5][v12]) <= msg.data.length - varg0[varg0[v12 << 5][v12]]);
                assembly {
            // Load the value at varg0[varg0[v12 << 5][v12]] into the EVM stack
            let index := mload(add(varg0, mul(mload(add(varg0, mul(v12, 0x20))), 0x20)))
            let offset := add(index, mload(0x40)) // Add the value in MEM[64] to the index

            // Set the value at MEM[index + MEM[64]] to 0
            mstore(add(offset, 0x20), 0)
        }
                assembly {
            // Load the value at varg0[varg0[v12 << 5][v12]] into the EVM stack
            let index := mload(add(varg0, mul(mload(add(varg0, mul(v12, 0x20))), 0x20)))
            let offset := add(index, mload(0x40)) // Add the value in MEM[64] to the index

            // Calculate the gas limit for the call
            let gasLimit := gas()
            gasLimit := sub(gasLimit, 2300) // Subtract 2300 for safety
            gasLimit := mul(gasLimit, 64) // Multiply by a safe multiplier

            // Perform the call operation using inline assembly
            let success := call(gasLimit, address(), 0, offset, 0x20, offset, 0x20)

            // Check if the call was successful (success == 1)
            if iszero(eq(success, 1)) {
                revert(0, 0)
            }

            // Load v14 into the EVM stack
            let v14Value := sload(v14.slot)

            // Load v15 into the EVM stack
            let v15Value := sload(v15.slot)

            // Store the result of the call into v15 storage slot
            sstore(v15.slot, success)
        }


        bool success;
        bytes memory returndata;
        assembly {
        // Check the return data size
        returndata := mload(0x40)  // Load the free memory pointer
        success := call(gas(), address(someOtherContract), 0, data, dataLength, returndata, returndataLength)
        if iszero(success) {
            revert(0, 0)
        }
        returndataLength := returndatasize()
     }
        

        if (returndata == 0) {
            v16 = v17 = 96;
        } else {
            v16 = v18 = new bytes[](returndata());
            assembly {
            // Copy the return data to the buffer
            // We use "add" to skip the first 32 bytes, which represent the length of the return data
            returndatacopy(add(v18, 0x20), 0, returndataLength)
        }
        }
        if (v14) {
            require(v12 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v10[v12] = v16;
            v12 += 1;
        } else {
            require(MEM[v16] >= 68);
            require(32 + (v16 + 4) + MEM[v16 + 4] - (32 + (v16 + 4)) >= 32);
            require(MEM[32 + (v16 + 4)] <= 0xffffffffffffffff);
            require(32 + (v16 + 4) + MEM[32 + (v16 + 4)] + 31 < 32 + (v16 + 4) + MEM[v16 + 4]);
            v19 = MEM[32 + (v16 + 4) + MEM[32 + (v16 + 4)]];
            require(v19 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)
            require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(32 + (v16 + 4) + MEM[32 + (v16 + 4)] + v19 + 32 <= 32 + (v16 + 4) + MEM[v16 + 4]);
            v20 = v21 = 0;
            while (v20 < v19) {
                MEM[v20 + (MEM[64] + 32)] = MEM[v20 + (32 + (v16 + 4) + MEM[32 + (v16 + 4)] + 32)];
                v20 += 32;
            }
            if (v20 <= v19) {
                 MEM[v19 + (MEM[64] + 32)] = 0;
            } else {
                MEM[v19 + (MEM[64] + 32)] = 0;
            }
            v22 = new uint256[](v19);
            v23 = v24 = 0;
            while (v23 < v19) {
                MEM[v23 + v22.data] = MEM[v23 + (MEM[64] + 32)];
                v23 += 32;
            }
            if (v23 <= v19) {
                 MEM[v19 + (MEM[64] + 32)] = 0;
            } else {
                MEM[v19 + v22.data] = 0;
            }
            revert(Error(v22));
        }
    }

    if (!msg.value) {
        if (!varg2) {
            MEM[v19 + (MEM[64] + 32)] = 0;
        } else {
            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
            v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg2).gas(msg.gas);
            require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0x20c5(varg2, block.coinbase);
             MEM[v19 + (MEM[64] + 32)] = 0;
        }
    } else {
        0x20c5(msg.value, block.coinbase);
    }
    if (varg3) {
        v26; v27 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v27 >= varg3, Error('BAErrorM'));
    }
    v28 = new uint256[](v10.length);
    v29 = v30 = v28.data;
    v31 = v32 = MEM[64] + (v10.length << 5) + 64;
    v33 = v34 = v10.data;
    v35 = v36 = 0;
    while (v35 < v10.length) {
        MEM[v29] = v31 - MEM[64] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc0;
        MEM[v31] = MEM[MEM[v33]];
        v37 = v38 = 0;
        while (v37 < MEM[MEM[v33]]) {
            MEM[v37 + (v31 + 32)] = MEM[v37 + (MEM[v33] + 32)];
            v37 += 32;
        }
        if (v37 <= MEM[MEM[v33]]) {
            goto x23adB0x240fB0x1629;
        } else {
            MEM[MEM[MEM[v33]] + (v31 + 32)] = 0;
        }
        v31 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v33]]) + v31);
        v29 += 32;
        v33 += 32;
        v35 += 1;
    }
    return v28;
}

function xc44de60c(address varg0, uint256 varg1, bool varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 == varg0);
    require(varg2 == varg2);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    if (varg2) {
        require(bool(_wETH.code.size));
        v0 = _wETH.withdraw(varg1).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        0x20c5(varg1, varg0);
    } else {
        v1; /* bool */ v2 = _wETH.transfer(varg0, varg1).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v2 == bool(v2));
        goto x3ab6;
    }
}

function transferOwnership(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 == varg0);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    require(varg0, Error('Ownable: new owner is the zero address'));
    emit OwnershipTransferred(_owner, varg0);
    _owner = varg0;
}

function memscan7(uint256 varg0, address varg1) private { 
    v0 = v1 = 0;
    while (v0 < 0) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 <= 0) {
        goto x26c4;
    } else {
        MEM[0 + MEM[64]] = 0;
    }
    v2; v3 = varg1.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v4 = new bytes[](RETURNDATASIZE());
        v3 = v4.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require(v2, Error('TransferHelper::safeTransferETH: ETH transfer failed'));
    return ;
}



function uniswapV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    0xada(tx.origin);
    if (varg2 == 20) {
        if (varg0 < 0) {
            0x1448(varg3 >> 96, msg.sender, varg1);
            exit;
        }
    } else {
        v0 = 0xbab(varg2);
        if (v0 == 1) {
            MEM[MEM[64]] = varg2 - 55;
            CALLDATACOPY(MEM[64] + 32, 187, varg2 - 55);
            MEM[64] = 32 + (MEM[64] + (varg2 - 55));
            if (varg5 >> 248) {
                v1 = 0xef3(varg8 >> 144, varg7 >> 96, varg3 >> 96, msg.sender, varg6 >> 96, MEM[64]);
            } else if (varg2 - 55 >= 89) {
                0xe27(varg4 >> 144, varg7 >> 96, varg3 >> 96, this, varg6 >> 96, MEM[64]);
                0x1448(varg3 >> 96, msg.sender, varg4 >> 144);
                goto x34f0;
            } else {
                0x1448(varg7 >> 96, varg6 >> 96, varg8 >> 144);
                0xe27(varg4 >> 144, varg7 >> 96, varg3 >> 96, msg.sender, varg6 >> 96, 0);
                goto x34f0;
            }
            exit;
        } else if (varg0 < 0) {
        }
    }
    0x1448(varg3 >> 96, msg.sender, v2);
}

function uniswapV2Call(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    0xada(tx.origin);
    v0 = 0xbab(varg0);
    if (v0 == 1) {
        MEM[MEM[64]] = varg0 - 55;
        CALLDATACOPY(MEM[64] + 32, 219, varg0 - 55);
        MEM[64] = 32 + (MEM[64] + (varg0 - 55));
        if (varg3 >> 248) {
            v1 = 0xef3(varg6 >> 144, varg5 >> 96, varg1 >> 96, msg.sender, varg4 >> 96, MEM[64]);
        } else if (varg0 - 55 >= 89) {
            0xe27(varg2 >> 144, varg5 >> 96, varg1 >> 96, this, varg4 >> 96, MEM[64]);
            0x1448(varg1 >> 96, msg.sender, varg2 >> 144);
            goto x3553;
        } else {
            0x1448(varg5 >> 96, varg4 >> 96, varg6 >> 144);
            0xe27(varg2 >> 144, varg5 >> 96, varg1 >> 96, msg.sender, varg4 >> 96, 0);
            goto x3553;
        }
        exit;
    } else {
        0x1448(varg1 >> 96, msg.sender, varg2 >> 144);
        exit;
    }
}

function msgsender1() private { 
    if (msg.sender == this == 1) {
        return 0;
    } else {
        return 1;
    }
}

function msgsender2(uint256 varg0, uint256 varg1) private { 
    if (varg1 == 1) {
        0xada(varg0);
        return ;
    } else {
        0xa61(varg0);
        return ;
    }
}

function msgsender3(uint256 varg0) private { 
    require((varg0 == 0x744bc1d963e8f54395dfe504e343fc3f2fe8fc8b) | ((varg0 == 0x83b4f74296738d8c2e15bd7c1f4a19df122354f5) | (varg0 == 0xde09838eedb3030153524b5a14972e7c9ef65765)), Error(0x2000000000000000000000000000000000000000000000000000000000, 8, 'NotAdmin'));
    return ;
}

function msgsender4(uint256 varg0) private { 
    require((varg0 == 0xe4b35743c2c15760d7551afc9c304ec0dc30ba50) | ((varg0 == 0x49f18c6370d3235fcc7cf4fd8167b8ca9bed0af8) | (varg0 == 0x19719e2aa3a47cb0080d7ba10ac3f9651ccd2a7c)), Error(0x2000000000000000000000000000000000000000000000000000000000, 9, 'NotAdminC'));
    return ;
}

function msgsender5(uint256 varg0) private { 
    if (varg0 <= 88) {
        return 0;
    } else {
        return 1;
    }
}

function msgsender6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (!varg0) {
        0xe27(varg6, varg2, varg3, varg4, varg1, 0);
        return 0;
    } else {
        v0 = new bytes[](20);
        MEM[v0.data] = varg2 << 96;
        v1 = 0xef3(varg5, varg2, varg3, varg4, varg1, v0);
        return v1;
    }
}

function msgsender7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0; v1 = 0x14b7(varg1, varg2);
    varg0 = v2 = 0;
    if (varg1 != v1) {
        varg0 = v3 = 0;
    }
    0x102f(varg4, varg0, varg0, varg3, varg5);
    return ;
}

function msgsender8(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (!varg0) {
        varg4 = v0 = 0;
        if (!varg5) {
            varg4 = v1 = 0;
        }
        0x102f(varg1, varg4, varg4, varg2, 0);
        return ;
    } else {
        v2 = v3 = 1;
        v4 = v5 = 0x1000276a4;
        if (!varg5) {
            v2 = v6 = 0;
            v4 = v7 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v8; v9 = 0xf63(varg1, v2, varg3, v4, varg2, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        return ;
    }
}

function msgsender9(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0; v1 = 0x14b7(varg1, varg2);
    v2 = v3 = 1;
    v4 = v5 = 0x1000276a4;
    if (varg1 != v1) {
        v2 = v6 = 0;
        v4 = v7 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v8; v9 = 0xf63(varg4, v2, varg0, v4, varg3, varg5);
    if (!v2) {
        v10 = v11 = 0 - v9;
    } else {
        v10 = v12 = 0 - v8;
    }
    return v10;
}

function msgsender10(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = new bytes[](varg5.length);
    v1 = v2 = 32;
    while (v1 < varg5.length + 1) {
        MEM[v1 + (MEM[64] + 164)] = MEM[v1 + varg5];
        v1 += 32;
    }
    if (varg5.length & 0x1f) {
        MEM[MEM[64] + 164 + v1] = MEM[varg5 + v1];
    }
    v3 = varg0.swap(varg4, varg1, varg2, varg3, v0).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    return MEM[MEM[64] + 32]; 0x128acb0800000000000000000000000000000000000000000000000000000000;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21, uint256 varg22, uint256 varg23, uint256 varg24, uint256 varg25, uint256 varg26, uint256 varg27, uint256 varg28, uint256 varg29, uint256 varg30, uint256 varg31, uint256 varg32, uint256 varg33) public payable { 
    if (msg.data.length < 4) {
        if (!msg.data.length) {
          
        }
    } else if (0x8da5cb5b > function_selector >> 224) {
        if (0x1e33667 == function_selector >> 224) {
            withdrawToken(address,address,uint256);
        } else if (0x1de3df2c == function_selector >> 224) {
            depositWETH();
        } else if (0x4782f779 == function_selector >> 224) {
            withdrawETH(address,uint256);
        } else if (0x715018a6 == function_selector >> 224) {
            renounceOwnership();
        }
    } else if (0xb1ebddda > function_selector >> 224) {
        if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0xad5c4648 == function_selector >> 224) {
            WETH();
        }
    } else if (0xb1ebddda == function_selector >> 224) {
        0xb1ebddda();
    } else if (0xc44de60c == function_selector >> 224) {
        0xc44de60c();
    } else if (0xf2fde38b == function_selector >> 224) {
        transferOwnership(address);
    }
    if (function_selector >> 224 == 1) {
        v0 = 0xa24();
        if (v0) {
            require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
            0xa61(msg.sender);
        }
        0x1448(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg5 >> 96, varg2 >> 144);
        0xe5b(0, varg5 >> 96, this, 0, varg3 >> 144, varg4 >> 248);
        exit;
    } else if (function_selector >> 224 == 2) {
        v1 = 0xa24();
        if (v1) {
            require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
            0xa61(msg.sender);
        }
        0x1448(varg4 >> 96, varg9 >> 96, varg2 >> 144);
        0xe27(varg3 >> 144, varg4 >> 96, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, varg9 >> 96, 0);
        if (!v1) {
            exit;
        } else {
            if (msg.value > 0 == 1) {
                v2 = block.coinbase.call().value(msg.value).gas(msg.gas);
                require(v2, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                goto x3343;
            } else if (!0) {
                goto x3343;
            } else if (varg3 >> 144) {
                v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                require(v3, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                v4 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                require(v4, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                goto x3343;
            }
            exit;
        }
    } else {
        if (!(function_selector >> 224)) {
            v5 = 0xa24();
            v6 = v7 = varg4 >> 240;
            if (v5) {
                require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                0xa41(msg.sender, v7 > 0);
            }
            v8 = v9 = 0;
            while (v8 < varg6 >> 248) {
                v10 = v11 = 111;
                if (v8 + 1 < varg6 >> 248) {
                    v10 = 0x3 & v7 >> (v8 + 1 << 1);
                }
                v12 = v13 = this;
                if (!v10) {
                    v12 = msg.data[39 + v8 * 20 + 20] >> 96;
                }
                if (!(v7 >> (v8 << 1) & 0x3)) {
                    if (!v8) {
                        if (!msg.value) {
                            0x10e6(v7 >> (v8 << 1) & 0x3, msg.data[39 + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20 + 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1)] >> 144, msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1) + (v8 + 1) * 14] >> 144);
                        }
                        0x1448(msg.data[39 + 20 * (varg6 >> 248) + v8 * 20] >> 96, msg.data[39 + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1)] >> 144);
                    }
                    0xe27(msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1) + (v8 + 1) * 14] >> 144, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20 + 20] >> 96, v12, msg.data[39 + v8 * 20] >> 96, 0);
                } else {
                    if (!v8) {
                        if (!msg.value) {
                            0x10e6(v7 >> (v8 << 1) & 0x3, msg.data[39 + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20 + 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1) + v8 * 14] >> 144, msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1) + (v8 + 1) * 14] >> 144);
                        }
                    }
                    v14 = new bytes[](20);
                    MEM[v14.data] = msg.data[39 + 20 * (varg6 >> 248) + v8 * 20] >> 96 << 96;
                    v15 = 0xef3(msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1) + v8 * 14] >> 144, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20] >> 96, msg.data[39 + 20 * (varg6 >> 248) + v8 * 20 + 20] >> 96, v12, msg.data[39 + v8 * 20] >> 96, v14);
                    if (!(v8 + 1 - (varg6 >> 248))) {
                        require(v15 >= msg.data[39 + 20 * (varg6 >> 248) + 20 * ((varg6 >> 248) + 1) + (v8 + 1) * 14] >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 9, 'V3AOError'));
                    }
                    goto xdbcB0x2d4;
                }
                v8 = v8 + 1;
            }
            if (!v5) {
                exit;
            } else if (msg.value > 0 == 1) {
                v16 = block.coinbase.call().value(msg.value).gas(msg.gas);
                require(v16, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                goto x30d;
            } else if (!1) {
                goto x30d;
            } else if (varg3 >> 144) {
                v17 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                require(v17, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                v18 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                require(v18, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                goto x30d;
            }
        } else {
            if (function_selector >> 224 == 6) {
                v19 = 0xa24();
                if (v19) {
                    require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                    0xada(msg.sender);
                }
                if (!msg.value) {
                    0x10e6(varg13 >> 248, varg14 >> 96, varg18 >> 96, varg4 >> 96, varg25 >> 144, varg9 >> 144);
                }
                MEM[128] = msg.data.length - 91;
                CALLDATACOPY(160, 91, msg.data.length - 91);
                if (!(varg13 >> 248) == 1) {
                    0xe27(varg9 >> 144, varg18 >> 96, varg4 >> 96, this, varg14 >> 96, 128);
                } else {
                    v20 = 0xef3(varg25 >> 144, varg18 >> 96, varg4 >> 96, this, varg14 >> 96, 128);
                    require(v20 >= varg9 >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 9, 'V3AOError'));
                }
                if (!v19) {
                    exit;
                } else if (msg.value > 0 == 1) {
                    v21 = block.coinbase.call().value(msg.value).gas(msg.gas);
                    require(v21, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                    goto x433;
                } else if (!1) {
                    goto x433;
                } else if (!(varg3 >> 144)) {
                    goto x433;
                } else {
                    v22 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                    require(v22, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                    v23 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                    require(v23, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                    goto x433;
                }
            } else if (function_selector >> 224 == 3) {
                v24 = 0xa24();
                if (v24) {
                    require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                    0xada(msg.sender);
                }
                0xe5b(1, varg3 >> 96, this, varg8 >> 144, varg10 >> 144, varg7 >> 248);
                if (!v24) {
                    exit;
                } else {
                    v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                    RETURNDATACOPY(128, 0, RETURNDATASIZE());
                    require(0x70a0823100000000000000000000000000000000000000000000000000000000 >= varg2 >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 7, 'BAError'));
                    exit;
                }
            } else if (function_selector >> 224 == 4) {
                v26 = 0xa24();
                if (v26) {
                    require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                    0xada(msg.sender);
                }
                v27 = 0xdd8(1, varg3 >> 96, varg7 >> 96, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, varg12 >> 144, varg15 >> 144);
                require(v27 >= varg15 >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 9, 'V3AOError'));
                if (!v26) {
                    exit;
                } else if (msg.value > 0 == 1) {
                    v28 = block.coinbase.call().value(msg.value).gas(msg.gas);
                    require(v28, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                    goto x433;
                } else if (!0) {
                    goto x433;
                } else if (varg3 >> 144) {
                    v29 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                    require(v29, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                    v30 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                    require(v30, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                    goto x433;
                }
            } else if (function_selector >> 224 == 5) {
                v31 = 0xa24();
                v6 = v32 = varg4 >> 240;
                if (v31) {
                    require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                    0xa41(msg.sender, v32 > 0);
                }
                if (!msg.value) {
                    0x1116(v32 & 0x3, varg6 >> 96, varg16 >> 248, varg17 >> 144, varg19 >> 144);
                }
                if (!(v32 & 0x3)) {
                    0x1448(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg6 >> 96, varg17 >> 144);
                }
                0xe5b(v32 & 0x3, varg6 >> 96, varg11 >> 96, varg17 >> 144, varg19 >> 144, varg16 >> 248);
                0xe5b(0, varg11 >> 96, this, 0, varg24 >> 144, 1 - (varg16 >> 248));
                if (!v31) {
                    exit;
                } else if (msg.value > 0 == 1) {
                    v33 = block.coinbase.call().value(msg.value).gas(msg.gas);
                    require(v33, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                    goto x30d;
                } else if (!1) {
                    goto x30d;
                } else if (!(varg3 >> 144)) {
                    goto x30d;
                } else {
                    v34 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                    require(v34, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                    v35 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                    require(v35, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                    goto x30d;
                }
            } else if (function_selector >> 224 == 7) {
                v36 = 0xa24();
                if (v36) {
                    require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                    0xada(msg.sender);
                }
                v37 = v38 = varg11 >> 96;
                if (!msg.value) {
                    0x10e6(varg4 >> 240 & 0x3, varg6 >> 96, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg20 >> 96, varg29 >> 144, varg31 >> 144);
                }
                if (varg4 >> 240 >> 2 & 0x3) {
                    v37 = v39 = this;
                }
                if (!(varg4 >> 240 & 0x3)) {
                    0x1448(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg6 >> 96, varg29 >> 144);
                }
                v40 = 0xdd8(varg4 >> 240 & 0x3, varg6 >> 96, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg20 >> 96, v37, varg29 >> 144, varg31 >> 144);
                v41 = v42 = varg16 >> 96;
                if (varg4 >> 240 >> 4 & 0x3) {
                    v41 = v43 = this;
                }
                v44 = 0xdd8(varg4 >> 240 >> 2 & 0x3, v38, varg20 >> 96, varg27 >> 96, v41, varg31 >> 144, varg32 >> 144);
                v45 = 0xdd8(varg4 >> 240 >> 4 & 0x3, v42, varg27 >> 96, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, varg32 >> 144, varg33 >> 144);
                if (varg4 >> 240 >> 4 & 0x3) {
                    require(v45 >= varg33 >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 9, 'V3AOError'));
                }
                if (!v36) {
                    exit;
                } else if (msg.value > 0 == 1) {
                    v46 = block.coinbase.call().value(msg.value).gas(msg.gas);
                    require(v46, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                    goto x433;
                } else if (!1) {
                    goto x433;
                } else if (!(varg3 >> 144)) {
                    goto x433;
                } else {
                    v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                    require(v47, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                    v48 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                    require(v48, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                    goto x433;
                }
            } else if (function_selector >> 224 == 8) {
                v49 = 0xa24();
                v6 = v50 = varg4 >> 240;
                if (v49) {
                    require((block.number == varg1 >> 224) | !(varg1 >> 224), Error(0x2000000000000000000000000000000000000000000000000000000000, 16, 'BlockNumberError'));
                    0xa41(msg.sender, v50 > 0);
                }
                if (!msg.value) {
                    0x1116(v50 & 0x3, varg6 >> 96, varg20 >> 248, varg23 >> 144, varg26 >> 144);
                }
                if (!(v50 & 0x3)) {
                    0x1448(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg6 >> 96, varg23 >> 144);
                }
                0xe5b(v50 & 0x3, varg6 >> 96, varg11 >> 96, varg23 >> 144, varg26 >> 144, varg20 >> 248);
                0xe5b(0, varg11 >> 96, varg16 >> 96, 0, varg28 >> 144, varg21 >> 248);
                0xe5b(0, varg16 >> 96, this, 0, varg30 >> 144, varg22 >> 248);
                if (!v49) {
                    exit;
                } else if (msg.value > 0 == 1) {
                    v51 = block.coinbase.call().value(msg.value).gas(msg.gas);
                    require(v51, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:1'));
                    goto x30d;
                } else if (!1) {
                    goto x30d;
                } else if (!(varg3 >> 144)) {
                    goto x30d;
                } else {
                    v52 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg3 >> 144).gas(msg.gas);
                    require(v52, Error(0x2000000000000000000000000000000000000000000000000000000000, 19, 'withdrawWeth failed'));
                    v53 = block.coinbase.call().value(varg3 >> 144).gas(msg.gas);
                    require(v53, Error(0x2000000000000000000000000000000000000000000000000000000000, 25, 'transfer coinbase error:2'));
                    goto x30d;
                }
            } else if (function_selector >> 224 == 0xfa461e33) {
                uniswapV3SwapCallback(int256,int256,bytes);
            } else {
                require(function_selector >> 224 == 0x10d1e85c, Error(0x2000000000000000000000000000000000000000000000000000000000, 6, 'UDFErr'));
                uniswapV2Call(address,uint256,uint256,bytes);
            }
            v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(0x70a0823100000000000000000000000000000000000000000000000000000000 >= varg2 >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 7, 'BAError'));
            exit;
        }
        if (!v6) {
            exit;
        } else {
            v55 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(0x70a0823100000000000000000000000000000000000000000000000000000000 >= varg2 >> 144, Error(0x2000000000000000000000000000000000000000000000000000000000, 7, 'BAError'));
            exit;
        }
    }
}



}




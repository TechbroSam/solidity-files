
//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract Contract {
    function main() {
       memory [0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (0x6fd6e126 > var0) {
                if (0x3367969a > var0) {
                    if (0x1c62c72c > var0) {
                        if (var0 == 0x3df8cd) {
                            // Dispatch table entry for 0x003df8cd (unknown)
                            var var1 = msg.value;
                        
                            if (var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = 0x0235;
                            var var2 = 0x0252;
                            var var3 = msg.data.length;
                            var var4 = 0x04;
                            var var5;
                            var2, var3, var4, var5 = func_3376(var3, var4);
                            func_0252(var2, var3, var4, var5);
                            stop();
                        } else if (var0 == 0x016ca4b5) {
                            // Dispatch table entry for 0x016ca4b5 (unknown)
                            var1 = msg.value;
                        
                            if (var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = 0x0235;
                            var2 = 0x0272;
                            var3 = msg.data.length;
                            var4 = 0x04;
                            var var6;
                            var var7;
                            var2, var3, var4, var5, var6, var7 = func_34C3(var3, var4);
                            func_0272(var2, var3, var4, var5, var6, var7);
                            stop();
                        } else if (var0 == 0x0fb0575d) {
                            // Dispatch table entry for 0x0fb0575d (unknown)
                            var1 = msg.value;
                        
                            if (var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = 0x0235;
                            var2 = 0x0292;
                            var3 = msg.data.length;
                            var4 = 0x04;
                            var2, var3, var4, var5, var6, var7 = func_34C3(var3, var4);
                            func_0292(var2, var3, var4, var5, var6, var7);
                            stop();
                        } else if (var0 == 0x1aaa155e) {
                            // Dispatch table entry for 0x1aaa155e (unknown)
                            var1 = msg.value;
                        
                            if (var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = 0x0235;
                            var2 = 0x02b2;
                            var3 = msg.data.length;
                            var4 = 0x04;
                            var2, var3, var4, var5 = func_3376(var3, var4);
                            func_02B2(var2, var3, var4, var5);
                            stop();
                        } else { stop(); }
                    } else if (0x1d52f141 > var0) {
                        if (var0 == 0x1c62c72c) {
                            // Dispatch table entry for 0x1c62c72c (unknown)
                            var1 = msg.value;
                        
                            if (var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = 0x0235;
                            var2 = 0x02d2;
                            var3 = msg.data.length;
                            var4 = 0x04;
                            var2, var3, var4, var5 = func_3376(var3, var4);
                            func_02D2(var2, var3, var4, var5);
                            stop();
                        } else if (var0 == 0x1d4534da) {
                            // Dispatch table entry for 0x1d4534da (unknown)
                            var1 = msg.value;
                        
                            if (var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = 0x0235;
                            var2 = 0x02f2;
                            var3 = msg.data.length;
                            var4 = 0x04;
                            var2, var3, var4, var5, var6 = func_3541(var3, var4);
                            func_02F2(var2, var3, var4, var5, var6);
                            stop();
                        } else { stop(); }
                    } else if (var0 == 0x1d52f141) {
                        // Dispatch table entry for 0x1d52f141 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0312;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_0312(var2, var3, var4, var5, var6);
                        stop();
                    } else if (var0 == 0x2077761c) {
                        // Dispatch table entry for 0x2077761c (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0332;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3 = func_35B5(var3, var4);
                    
                        if (msg.sender != 0xa9a20c7d6e0d6c9e3a90766bea34c442ed10aa01) { revert(memory[0x00:0x00]); }
                    
                        var temp0 = memory[0x40:0x60];
                        memory[temp0:temp0 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = msg.sender;
                        memory[temp0 + 0x24:temp0 + 0x24 + 0x20] = var3;
                        var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var5 = 0xa9059cbb;
                        var6 = temp0 + 0x44;
                        var temp1 = memory[0x40:0x60];
                        var temp2;
                        temp2, memory[temp1:temp1 + 0x20] = address(var4).call.gas(msg.gas)(memory[temp1:temp1 + var6 - temp1]);
                        var7 = !temp2;
                    
                        if (!var7) {
                            var temp3 = memory[0x40:0x60];
                            var temp4 = returndata.length;
                            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                            var4 = 0x0bc9;
                            var6 = temp3;
                            var5 = var6 + temp4;
                        
                        label_3961:
                            var7 = 0x00;
                        
                            if (var5 - var6 i< 0x20) { revert(memory[0x00:0x00]); }
                        
                            var var8 = memory[var6:var6 + 0x20];
                            var var9 = 0x380c;
                            var var10 = var8;
                            func_35E1(var10);
                        
                        label_380C:
                            var4 = var8;
                            // Error: Could not resolve jump destination!
                        } else {
                            var temp5 = returndata.length;
                            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else if (var0 == 0x219e94dc) {
                        // Dispatch table entry for 0x219e94dc (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0352;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_0352(var2, var3, var4, var5, var6);
                        stop();
                    } else { stop(); }
                } else if (0x41414a19 > var0) {
                    if (var0 == 0x3367969a) {
                        // Dispatch table entry for 0x3367969a (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0372;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5 = func_3376(var3, var4);
                        func_0372(var2, var3, var4, var5);
                        stop();
                    } else if (var0 == 0x3728cff9) {
                        // Dispatch table entry for 0x3728cff9 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0392;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5 = func_3376(var3, var4);
                        func_0392(var2, var3, var4, var5);
                        stop();
                    } else if (var0 == 0x3dadd89b) {
                        // Dispatch table entry for 0x3dadd89b (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x03b2;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_03B2(var2, var3, var4, var5, var6);
                        stop();
                    } else if (var0 == 0x3dde48c0) {
                        // Dispatch table entry for 0x3dde48c0 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x03d2;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5 = func_3376(var3, var4);
                        func_03D2(var2, var3, var4, var5);
                        stop();
                    } else { stop(); }
                } else if (0x61a3546f > var0) {
                    if (var0 == 0x41414a19) {
                        // Dispatch table entry for 0x41414a19 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x03f2;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_03F2(var2, var3, var4, var5, var6);
                        stop();
                    } else if (var0 == 0x58e84051) {
                        // Dispatch table entry for 0x58e84051 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0412;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3 = func_35EF(var3, var4);
                        func_0412(var2, var3);
                        stop();
                    } else { stop(); }
                } else if (var0 == 0x61a3546f) {
                    // Dispatch table entry for 0x61a3546f (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0432;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_3541(var3, var4);
                    var7 = 0x0a81;
                    var8 = var2;
                    var9 = var3;
                    var10 = var5;
                    var var11 = var6;
                    var7 = func_25AD(var8, var9, var10, var11);
                
                label_0A81:
                
                    if (!var7) {
                        // Error: Could not resolve jump destination!
                    } else {
                        var7 = var4;
                        var8 = 0x00;
                    
                        if (var8 < memory[var7:var7 + 0x20]) {
                            var temp6 = memory[0x40:0x60];
                            var temp7;
                            temp7, memory[temp6:temp6 + 0x00] = address(memory[var8 * 0x20 + 0x20 + var7:var8 * 0x20 + 0x20 + var7 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp6:temp6 + memory[0x40:0x60] - temp6]);
                            var8 = returndata.length;
                            var9 = var8;
                        
                            if (var9 == 0x00) {
                                var7 = var4;
                                var8 = 0x01;
                            
                                if (var8 < memory[var7:var7 + 0x20]) {
                                label_0A08:
                                    var temp8 = memory[0x40:0x60];
                                    var temp9;
                                    temp9, memory[temp8:temp8 + 0x00] = address(memory[var8 * 0x20 + 0x20 + var7:var8 * 0x20 + 0x20 + var7 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp8:temp8 + memory[0x40:0x60] - temp8]);
                                    var8 = returndata.length;
                                    var9 = var8;
                                
                                    if (var9 == 0x00) {
                                        // Error: Could not resolve jump destination!
                                    } else {
                                        var temp10 = memory[0x40:0x60];
                                        var8 = temp10;
                                        memory[0x40:0x60] = var8 + (returndata.length + 0x3f & ~0x1f);
                                        memory[var8:var8 + 0x20] = returndata.length;
                                        var temp11 = returndata.length;
                                        memory[var8 + 0x20:var8 + 0x20 + temp11] = returndata[0x00:0x00 + temp11];
                                        // Error: Could not resolve jump destination!
                                    }
                                } else {
                                label_0B0B:
                                    var9 = 0x0a08;
                                
                                label_38CB:
                                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                    memory[0x04:0x24] = 0x32;
                                    revert(memory[0x00:0x24]);
                                }
                            } else {
                                var temp12 = memory[0x40:0x60];
                                var8 = temp12;
                                memory[0x40:0x60] = var8 + (returndata.length + 0x3f & ~0x1f);
                                memory[var8:var8 + 0x20] = returndata.length;
                                var temp13 = returndata.length;
                                memory[var8 + 0x20:var8 + 0x20 + temp13] = returndata[0x00:0x00 + temp13];
                                var7 = var4;
                                var8 = 0x01;
                            
                                if (var8 < memory[var7:var7 + 0x20]) { goto label_0A08; }
                                else { goto label_0B0B; }
                            }
                        } else {
                            var9 = 0x0a99;
                            goto label_38CB;
                        }
                    }
                } else if (var0 == 0x63fb0b96) {
                    // Dispatch table entry for 0x63fb0b96 (unknown)
                    var1 = 0x044a;
                    var2 = 0x0445;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5 = func_368D(var3, var4);
                    var1 = func_0445(var2, var3, var4, var5);
                    var temp14 = var1;
                    var1 = 0x0457;
                    var2 = temp14;
                    var3 = memory[0x40:0x60];
                    var1 = func_376F(var2, var3);
                
                label_0457:
                    var temp15 = memory[0x40:0x60];
                    return memory[temp15:temp15 + var1 - temp15];
                } else if (var0 == 0x6877063a) {
                    // Dispatch table entry for 0x6877063a (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0480;
                    var2 = 0x047b;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_37EF(var3, var4);
                    var1 = func_047B(var2);
                    var temp16 = memory[0x40:0x60];
                    memory[temp16:temp16 + 0x20] = !!var1;
                    var1 = temp16 + 0x20;
                    goto label_0457;
                } else { stop(); }
            } else if (0xba4c7c31 > var0) {
                if (0x8734cb9e > var0) {
                    if (var0 == 0x6fd6e126) {
                        // Dispatch table entry for 0x6fd6e126 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x04ab;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5 = func_3376(var3, var4);
                        func_04AB(var2, var3, var4, var5);
                        stop();
                    } else if (var0 == 0x74269198) {
                        // Dispatch table entry for 0x74269198 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x04cb;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_04CB(var2, var3, var4, var5, var6);
                        stop();
                    } else if (var0 == 0x76aa6514) {
                        // Dispatch table entry for 0x76aa6514 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x04eb;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_04EB(var2, var3, var4, var5, var6);
                        stop();
                    } else if (var0 == 0x83197ef0) {
                        // Dispatch table entry for destroy()
                        var1 = 0x0235;
                        var2 = msg.sender == 0xd6f73fcc889259864c79697f7516915321263b24;
                    
                        if (var2) {
                            if (var2) { selfdestruct(msg.sender); }
                        
                        label_1256:
                            var temp17 = memory[0x40:0x60];
                            memory[temp17:temp17 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            memory[temp17 + 0x04:temp17 + 0x04 + 0x20] = 0x20;
                            memory[temp17 + 0x24:temp17 + 0x24 + 0x20] = 0x0c;
                            memory[temp17 + 0x44:temp17 + 0x44 + 0x20] = 0x44657374726f79206661696c0000000000000000000000000000000000000000;
                            var2 = temp17 + 0x64;
                            var temp18 = memory[0x40:0x60];
                            revert(memory[temp18:temp18 + var2 - temp18]);
                        } else if (msg.sender == 0xa9a20c7d6e0d6c9e3a90766bea34c442ed10aa01) { selfdestruct(msg.sender); }
                        else { goto label_1256; }
                    } else { stop(); }
                } else if (0x8a9ba0a3 > var0) {
                    if (var0 == 0x8734cb9e) {
                        // Dispatch table entry for 0x8734cb9e (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0513;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6 = func_3541(var3, var4);
                        func_0513(var2, var3, var4, var5, var6);
                        stop();
                    } else if (var0 == 0x879be3ea) {
                        // Dispatch table entry for 0x879be3ea (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0235;
                        var2 = 0x0533;
                        var3 = msg.data.length;
                        var4 = 0x04;
                        var2, var3, var4, var5, var6, var7 = func_34C3(var3, var4);
                        func_0533(var2, var3, var4, var5, var6, var7);
                        stop();
                    } else { stop(); }
                } else if (var0 == 0x8a9ba0a3) {
                    // Dispatch table entry for 0x8a9ba0a3 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0553;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_3541(var3, var4);
                    var7 = 0x0a81;
                    var8 = var2;
                    var9 = var3;
                    var10 = var5;
                    var11 = var6;
                    var7 = func_3196(var8, var9, var10, var11);
                    goto label_0A81;
                } else if (var0 == 0x8f96b8c1) {
                    // Dispatch table entry for 0x8f96b8c1 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0573;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_3541(var3, var4);
                    func_0573(var2, var3, var4, var5, var6);
                    stop();
                } else if (var0 == 0x9a398f28) {
                    // Dispatch table entry for 0x9a398f28 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0593;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_3541(var3, var4);
                    func_0593(var2, var3, var4, var5, var6);
                    stop();
                } else { stop(); }
            } else if (0xe02642f0 > var0) {
                if (var0 == 0xba4c7c31) {
                    // Dispatch table entry for 0xba4c7c31 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x05b3;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4 = func_3813(var3, var4);
                    func_05B3(var2, var3, var4);
                    stop();
                } else if (var0 == 0xc348c004) {
                    // Dispatch table entry for 0xc348c004 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x05d3;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5 = func_3376(var3, var4);
                    func_05D3(var2, var3, var4, var5);
                    stop();
                } else if (var0 == 0xc823c03a) {
                    // Dispatch table entry for withdrawAllTokenToOwner(address)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x05f3;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_37EF(var3, var4);
                
                    if (msg.sender != 0xa9a20c7d6e0d6c9e3a90766bea34c442ed10aa01) { revert(memory[0x00:0x00]); }
                
                    var temp19 = memory[0x40:0x60];
                    memory[temp19:temp19 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    memory[temp19 + 0x04:temp19 + 0x04 + 0x20] = address(this);
                    var3 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var4 = 0xa9059cbb;
                    var5 = msg.sender;
                    var6 = var3;
                    var7 = 0x70a08231;
                    var8 = temp19 + 0x24;
                    var temp20 = memory[0x40:0x60];
                    var temp21;
                    temp21, memory[temp20:temp20 + 0x20] = address(var6).staticcall.gas(msg.gas)(memory[temp20:temp20 + var8 - temp20]);
                    var9 = !temp21;
                
                    if (!var9) {
                        var temp22 = memory[0x40:0x60];
                        var temp23 = returndata.length;
                        memory[0x40:0x60] = temp22 + (temp23 + 0x1f & ~0x1f);
                        var6 = 0x1724;
                        var8 = temp22;
                        var7 = var8 + temp23;
                        var6 = func_3AAF(var7, var8);
                        var temp24 = memory[0x40:0x60];
                        memory[temp24:temp24 + 0x20] = (var4 << 0xe0) & 0xffffffff00000000000000000000000000000000000000000000000000000000;
                        memory[temp24 + 0x04:temp24 + 0x04 + 0x20] = var5 & 0xffffffffffffffffffffffffffffffffffffffff;
                        memory[temp24 + 0x24:temp24 + 0x24 + 0x20] = var6;
                        var5 = temp24 + 0x44;
                        var temp25 = memory[0x40:0x60];
                        var temp26;
                        temp26, memory[temp25:temp25 + 0x20] = address(var3).call.gas(msg.gas)(memory[temp25:temp25 + var5 - temp25]);
                        var6 = !temp26;
                    
                        if (!var6) {
                            var temp27 = memory[0x40:0x60];
                            var temp28 = returndata.length;
                            memory[0x40:0x60] = temp27 + (temp28 + 0x1f & ~0x1f);
                            var3 = 0x17b8;
                            var5 = temp27;
                            var4 = var5 + temp28;
                            goto label_3961;
                        } else {
                            var temp29 = returndata.length;
                            memory[0x00:0x00 + temp29] = returndata[0x00:0x00 + temp29];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else {
                        var temp30 = returndata.length;
                        memory[0x00:0x00 + temp30] = returndata[0x00:0x00 + temp30];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else if (var0 == 0xddeba0c3) {
                    // Dispatch table entry for 0xddeba0c3 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0613;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6, var7 = func_34C3(var3, var4);
                    func_0613(var2, var3, var4, var5, var6, var7);
                    stop();
                } else { stop(); }
            } else if (0xf2cdb852 > var0) {
                if (var0 == 0xe02642f0) {
                    // Dispatch table entry for 0xe02642f0 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0633;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_3541(var3, var4);
                    func_0633(var2, var3, var4, var5, var6);
                    stop();
                } else if (var0 == 0xeae6445e) {
                    // Dispatch table entry for 0xeae6445e (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0235;
                    var2 = 0x0653;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_3541(var3, var4);
                    func_0653(var2, var3, var4, var5, var6);
                    stop();
                } else { stop(); }
            } else if (var0 == 0xf2cdb852) {
                // Dispatch table entry for 0xf2cdb852 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0235;
                var2 = 0x0673;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5, var6 = func_3541(var3, var4);
                func_0673(var2, var3, var4, var5, var6);
                stop();
            } else if (var0 == 0xf40df983) {
                // Dispatch table entry for 0xf40df983 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0235;
                var2 = 0x0693;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5, var6, var7, var8 = func_3854(var3, var4);
            
                if (msg.sender != 0x6620f0f2d84f63118565119122ab988b7b9b6a45) { revert(memory[0x00:0x00]); }
            
                var9 = 0x00;
                var10 = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                var11 = 0x0dfe1681;
                var temp31 = memory[0x40:0x60];
                memory[temp31:temp31 + 0x20] = (var11 & 0xffffffff) << 0xe0;
                var var12 = temp31 + 0x04;
                var temp32 = memory[0x40:0x60];
                var temp33;
                temp33, memory[temp32:temp32 + 0x20] = address(var10).staticcall.gas(msg.gas)(memory[temp32:temp32 + var12 - temp32]);
                var var13 = !temp33;
            
                if (!var13) {
                    var temp34 = memory[0x40:0x60];
                    var temp35 = returndata.length;
                    memory[0x40:0x60] = temp34 + (temp35 + 0x1f & ~0x1f);
                    var10 = 0x1b0f;
                    var11 = temp34 + temp35;
                    var12 = temp34;
                    var13 = 0x00;
                
                    if (var11 - var12 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var var14 = memory[var12:var12 + 0x20];
                    var var15 = 0x380c;
                    var var16 = var14;
                    func_3351(var16);
                    goto label_380C;
                } else {
                    var temp36 = returndata.length;
                    memory[0x00:0x00 + temp36] = returndata[0x00:0x00 + temp36];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else if (var0 == 0xf808d657) {
                // Dispatch table entry for 0xf808d657 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0235;
                var2 = 0x06b3;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3, var4, var5, var6 = func_3541(var3, var4);
                func_06B3(var2, var3, var4, var5, var6);
                stop();
            } else { stop(); }
        } else if (msg.data.length) { stop(); }
        else { stop(); }
    }
    
    function func_0252(var arg0, var arg1, var arg2, var arg3) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return; }
    
        var var0 = 0x06dc;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var var5 = 0x00;
        var var6 = var5;
        var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var8 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
        var var9 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
        var var10 = !temp2;
    
        if (!var10) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var7 = 0x1faa;
            var9 = temp3;
            var8 = var9 + temp4;
            var7, var8, var9 = func_3B08(var8, var9);
            var temp5 = var8 & 0xffffffffffffffffffffffffffff;
            var6 = temp5;
            var temp6 = var7 & 0xffffffffffffffffffffffffffff;
            var5 = temp6;
            var7 = 0x00;
            var8 = 0x1fdd;
            var9 = var4;
            var10 = var5;
            var var11 = var6;
            var var12 = var3;
            var8 = func_32F7(var9, var10, var11, var12);
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
            var7 = var8;
            var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var9 = 0xa9059cbb;
            var10 = temp7 + 0x44;
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
            var11 = !temp9;
        
            if (!var11) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var8 = 0x207a;
                var10 = temp10;
                var9 = var10 + temp11;
                var11 = 0x00;
            
                if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
            
                var12 = memory[var10:var10 + 0x20];
                var var13 = 0x380c;
                var var14 = var12;
                func_35E1(var14);
                var8 = var12;
                // Error: Could not resolve jump destination!
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0272(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        if (block.timestamp > arg5) {
        label_0879:
            return;
        } else {
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = 0x00;
        
            if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { goto label_0879; }
        
            var var0 = 0x070d;
            var var1 = arg0;
            var var2 = arg1;
            var var3 = arg3;
            var var4 = arg4;
            var var5 = 0x00;
            var var6 = var5;
            var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var8 = 0x0902f1ac;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
            var var9 = temp0 + 0x04;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
            var var10 = !temp2;
        
            if (!var10) {
                var temp3 = memory[0x40:0x60];
                var temp4 = returndata.length;
                memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                var7 = 0x2192;
                var9 = temp3;
                var8 = var9 + temp4;
                var7, var8, var9 = func_3B08(var8, var9);
                var temp5 = var8 & 0xffffffffffffffffffffffffffff;
                var6 = temp5;
                var temp6 = var7 & 0xffffffffffffffffffffffffffff;
                var5 = temp6;
                var7 = 0x00;
                var8 = 0x21c5;
                var9 = var4;
                var10 = var6;
                var var11 = var5;
                var var12 = var3;
                var8 = func_32F7(var9, var10, var11, var12);
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
                var7 = var8;
                var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0xa9059cbb;
                var10 = temp7 + 0x44;
                var temp8 = memory[0x40:0x60];
                var temp9;
                temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
                var11 = !temp9;
            
                if (!var11) {
                    var temp10 = memory[0x40:0x60];
                    var temp11 = returndata.length;
                    memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                    var8 = 0x2262;
                    var10 = temp10;
                    var9 = var10 + temp11;
                    var11 = 0x00;
                
                    if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var12 = memory[var10:var10 + 0x20];
                    var var13 = 0x380c;
                    var var14 = var12;
                    func_35E1(var14);
                    var8 = var12;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp12 = returndata.length;
                    memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp13 = returndata.length;
                memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function func_0292(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        if (block.timestamp > arg5) {
        label_0879:
            return;
        } else {
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = 0x00;
        
            if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { goto label_0879; }
        
            var var0 = 0x08ac;
            var var1 = arg0;
            var var2 = arg1;
            var var3 = arg3;
            var var4 = arg4;
            var var5 = 0x00;
            var var6 = var5;
            var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var8 = 0x0902f1ac;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
            var var9 = temp0 + 0x04;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
            var var10 = !temp2;
        
            if (!var10) {
                var temp3 = memory[0x40:0x60];
                var temp4 = returndata.length;
                memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                var7 = 0x2192;
                var9 = temp3;
                var8 = var9 + temp4;
                var7, var8, var9 = func_3B08(var8, var9);
                var temp5 = var8 & 0xffffffffffffffffffffffffffff;
                var6 = temp5;
                var temp6 = var7 & 0xffffffffffffffffffffffffffff;
                var5 = temp6;
                var7 = 0x00;
                var8 = 0x21c5;
                var9 = var4;
                var10 = var6;
                var var11 = var5;
                var var12 = var3;
                var8 = func_32F7(var9, var10, var11, var12);
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
                var7 = var8;
                var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0xa9059cbb;
                var10 = temp7 + 0x44;
                var temp8 = memory[0x40:0x60];
                var temp9;
                temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
                var11 = !temp9;
            
                if (!var11) {
                    var temp10 = memory[0x40:0x60];
                    var temp11 = returndata.length;
                    memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                    var8 = 0x2262;
                    var10 = temp10;
                    var9 = var10 + temp11;
                    var11 = 0x00;
                
                    if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var12 = memory[var10:var10 + 0x20];
                    var var13 = 0x380c;
                    var var14 = var12;
                    func_35E1(var14);
                    var8 = var12;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp12 = returndata.length;
                    memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp13 = returndata.length;
                memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function func_02B2(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0958;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var0 = func_22D1(var1, var2, var3, var4);
    }
    
    function func_02D2(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0958;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var0 = func_25AD(var1, var2, var3, var4);
    }
    
    function func_02F2(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = arg2;
        var var1 = 0x00;
    
        if (var1 < memory[var0:var0 + 0x20]) {
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
            var1 = returndata.length;
            var var2 = var1;
        
            if (var2 == 0x00) {
                var0 = 0x09f0;
                var1 = arg0;
                var2 = arg1;
                var var3 = arg3;
                var var4 = arg4;
                var0 = func_270E(var1, var2, var3, var4);
            
            label_09F0:
            
                if (!var0) { return; }
            
                var0 = arg2;
                var1 = 0x01;
            
                if (var1 < memory[var0:var0 + 0x20]) {
                    var temp2 = memory[0x40:0x60];
                    var temp3;
                    temp3, memory[temp2:temp2 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
                    var1 = returndata.length;
                    var2 = var1;
                
                    if (var2 == 0x00) { return; }
                
                    var temp4 = memory[0x40:0x60];
                    var1 = temp4;
                    memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                    memory[var1:var1 + 0x20] = returndata.length;
                    var temp5 = returndata.length;
                    memory[var1 + 0x20:var1 + 0x20 + temp5] = returndata[0x00:0x00 + temp5];
                    return;
                } else {
                    var2 = 0x0a08;
                
                label_38CB:
                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    memory[0x04:0x24] = 0x32;
                    revert(memory[0x00:0x24]);
                }
            } else {
                var temp6 = memory[0x40:0x60];
                var1 = temp6;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp7 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp7] = returndata[0x00:0x00 + temp7];
                var0 = 0x09f0;
                var1 = arg0;
                var2 = arg1;
                var3 = arg3;
                var4 = arg4;
                var0 = func_270E(var1, var2, var3, var4);
                goto label_09F0;
            }
        } else {
            var2 = 0x097e;
            goto label_38CB;
        }
    }
    
    function func_0312(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x0a81;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var0 = func_29AA(var1, var2, var3, var4);
    
        if (!var0) { return; }
    
        var0 = arg2;
        var1 = 0x00;
    
        if (var1 < memory[var0:var0 + 0x20]) {
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
            var1 = returndata.length;
            var2 = var1;
        
            if (var2 == 0x00) {
                var0 = arg2;
                var1 = 0x01;
            
                if (var1 < memory[var0:var0 + 0x20]) {
                label_0A08:
                    var temp2 = memory[0x40:0x60];
                    var temp3;
                    temp3, memory[temp2:temp2 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
                    var1 = returndata.length;
                    var2 = var1;
                
                    if (var2 == 0x00) { return; }
                
                    var temp4 = memory[0x40:0x60];
                    var1 = temp4;
                    memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                    memory[var1:var1 + 0x20] = returndata.length;
                    var temp5 = returndata.length;
                    memory[var1 + 0x20:var1 + 0x20 + temp5] = returndata[0x00:0x00 + temp5];
                    return;
                } else {
                label_0B0B:
                    var2 = 0x0a08;
                
                label_38CB:
                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    memory[0x04:0x24] = 0x32;
                    revert(memory[0x00:0x24]);
                }
            } else {
                var temp6 = memory[0x40:0x60];
                var1 = temp6;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp7 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp7] = returndata[0x00:0x00 + temp7];
                var0 = arg2;
                var1 = 0x01;
            
                if (var1 < memory[var0:var0 + 0x20]) { goto label_0A08; }
                else { goto label_0B0B; }
            }
        } else {
            var2 = 0x0a99;
            goto label_38CB;
        }
    }
    
    function func_0352(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x0bda;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var0 = func_25AD(var1, var2, var3, var4);
    
        if (!var0) { return; }
    
        var0 = 0x00;
    
        if (var0 >= memory[arg2:arg2 + 0x20]) {
        label_0879:
            return;
        } else {
        label_0BEC:
            var1 = arg2;
            var2 = var0;
        
            if (var2 < memory[var1:var1 + 0x20]) {
                var temp0 = memory[0x40:0x60];
                var temp1;
                temp1, memory[temp0:temp0 + 0x00] = address(memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
                var2 = returndata.length;
                var3 = var2;
            
                if (var3 == 0x00) {
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x0c6e;
                    var2 = func_3929(var3);
                
                label_0C6E:
                    var0 = var2;
                
                    if (var0 >= memory[arg2:arg2 + 0x20]) { goto label_0879; }
                    else { goto label_0BEC; }
                } else {
                    var temp2 = memory[0x40:0x60];
                    var2 = temp2;
                    memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                    memory[var2:var2 + 0x20] = returndata.length;
                    var temp3 = returndata.length;
                    memory[var2 + 0x20:var2 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x0c6e;
                    var2 = func_3929(var3);
                    goto label_0C6E;
                }
            } else {
                var3 = 0x0bfd;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        }
    }
    
    function func_0372(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0958;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var0 = func_2DA0(var1, var2, var3, var4);
    }
    
    function func_0392(var arg0, var arg1, var arg2, var arg3) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return; }
    
        var var0 = 0x06dc;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var var5 = 0x00;
        var var6 = var5;
        var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var8 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
        var var9 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
        var var10 = !temp2;
    
        if (!var10) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var7 = 0x2192;
            var9 = temp3;
            var8 = var9 + temp4;
            var7, var8, var9 = func_3B08(var8, var9);
            var temp5 = var8 & 0xffffffffffffffffffffffffffff;
            var6 = temp5;
            var temp6 = var7 & 0xffffffffffffffffffffffffffff;
            var5 = temp6;
            var7 = 0x00;
            var8 = 0x21c5;
            var9 = var4;
            var10 = var6;
            var var11 = var5;
            var var12 = var3;
            var8 = func_32F7(var9, var10, var11, var12);
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
            var7 = var8;
            var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var9 = 0xa9059cbb;
            var10 = temp7 + 0x44;
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
            var11 = !temp9;
        
            if (!var11) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var8 = 0x2262;
                var10 = temp10;
                var9 = var10 + temp11;
                var11 = 0x00;
            
                if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
            
                var12 = memory[var10:var10 + 0x20];
                var var13 = 0x380c;
                var var14 = var12;
                func_35E1(var14);
                var8 = var12;
                // Error: Could not resolve jump destination!
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_03B2(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x0cb2;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var0 = func_29AA(var1, var2, var3, var4);
    
        if (!var0) { return; }
    
        var0 = 0x00;
    
        if (var0 >= memory[arg2:arg2 + 0x20]) {
        label_0879:
            return;
        } else {
        label_0CC4:
            var1 = arg2;
            var2 = var0;
        
            if (var2 < memory[var1:var1 + 0x20]) {
                var temp0 = memory[0x40:0x60];
                var temp1;
                temp1, memory[temp0:temp0 + 0x00] = address(memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
                var2 = returndata.length;
                var3 = var2;
            
                if (var3 == 0x00) {
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x0d46;
                    var2 = func_3929(var3);
                
                label_0D46:
                    var0 = var2;
                
                    if (var0 >= memory[arg2:arg2 + 0x20]) { goto label_0879; }
                    else { goto label_0CC4; }
                } else {
                    var temp2 = memory[0x40:0x60];
                    var2 = temp2;
                    memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                    memory[var2:var2 + 0x20] = returndata.length;
                    var temp3 = returndata.length;
                    memory[var2 + 0x20:var2 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x0d46;
                    var2 = func_3929(var3);
                    goto label_0D46;
                }
            } else {
                var3 = 0x0cd5;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        }
    }
    
    function func_03D2(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0958;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var0 = func_270E(var1, var2, var3, var4);
    }
    
    function func_03F2(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = arg2;
        var var1 = 0x00;
    
        if (var1 < memory[var0:var0 + 0x20]) {
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
            var1 = returndata.length;
            var var2 = var1;
        
            if (var2 == 0x00) {
                var0 = 0x0ddf;
                var1 = arg0;
                var2 = arg1;
                var var3 = arg3;
                var var4 = arg4;
                var0 = func_22D1(var1, var2, var3, var4);
            
            label_0DDF:
            
                if (!var0) { return; }
            
                var0 = 0x01;
            
                if (var0 >= memory[arg2:arg2 + 0x20]) {
                label_0879:
                    return;
                } else {
                label_0DF1:
                    var1 = arg2;
                    var2 = var0;
                
                    if (var2 < memory[var1:var1 + 0x20]) {
                        var temp2 = memory[0x40:0x60];
                        var temp3;
                        temp3, memory[temp2:temp2 + 0x00] = address(memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
                        var2 = returndata.length;
                        var3 = var2;
                    
                        if (var3 == 0x00) {
                            var1 = var0;
                            var3 = var1;
                            var2 = 0x0e73;
                            var2 = func_3929(var3);
                        
                        label_0E73:
                            var0 = var2;
                        
                            if (var0 >= memory[arg2:arg2 + 0x20]) { goto label_0879; }
                            else { goto label_0DF1; }
                        } else {
                            var temp4 = memory[0x40:0x60];
                            var2 = temp4;
                            memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                            memory[var2:var2 + 0x20] = returndata.length;
                            var temp5 = returndata.length;
                            memory[var2 + 0x20:var2 + 0x20 + temp5] = returndata[0x00:0x00 + temp5];
                            var1 = var0;
                            var3 = var1;
                            var2 = 0x0e73;
                            var2 = func_3929(var3);
                            goto label_0E73;
                        }
                    } else {
                        var3 = 0x0e02;
                    
                    label_38CB:
                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                        memory[0x04:0x24] = 0x32;
                        revert(memory[0x00:0x24]);
                    }
                }
            } else {
                var temp6 = memory[0x40:0x60];
                var1 = temp6;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp7 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp7] = returndata[0x00:0x00 + temp7];
                var0 = 0x0ddf;
                var1 = arg0;
                var2 = arg1;
                var3 = arg3;
                var4 = arg4;
                var0 = func_22D1(var1, var2, var3, var4);
                goto label_0DDF;
            }
        } else {
            var2 = 0x0d6d;
            goto label_38CB;
        }
    }
    
    function func_0412(var arg0, var arg1) {
        if (msg.sender != 0xa9a20c7d6e0d6c9e3a90766bea34c442ed10aa01) { revert(memory[0x00:0x00]); }
    
        var var0 = 0x00;
    
        if (var0 >= memory[arg0:arg0 + 0x20]) {
        label_0BC9:
            return;
        } else {
        label_0EA8:
            var var1 = arg1;
            var var2 = 0x00;
            var var3 = var2;
            var var4 = arg0;
            var var5 = var0;
        
            if (var5 < memory[var4:var4 + 0x20]) {
                var temp0 = var3;
                memory[temp0:temp0 + 0x20] = memory[var5 * 0x20 + var4 + 0x20:var5 * 0x20 + var4 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = var2;
                var temp1 = keccak256(memory[0x00:0x00 + temp0 + 0x40]);
                storage[temp1] = !!var1 | (storage[temp1] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00);
                var1 = var0;
                var2 = 0x0f24;
                var3 = var1;
                var2 = func_3929(var3);
                var0 = var2;
            
                if (var0 >= memory[arg0:arg0 + 0x20]) { goto label_0BC9; }
                else { goto label_0EA8; }
            } else {
                var var6 = 0x0ebd;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        }
    }
    
    function func_0445(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
        var var0 = 0x60;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { revert(memory[0x00:0x00]); }
    
        var var1 = arg3;
    
        if (var1 <= 0xffffffffffffffff) {
            var temp0 = memory[0x40:0x60];
            var temp1 = var1;
            var1 = temp0;
            var var2 = temp1;
            memory[var1:var1 + 0x20] = var2;
            memory[0x40:0x60] = var1 + var2 * 0x20 + 0x20;
        
            if (!var2) {
            label_0FA3:
                var0 = var1;
                var1 = 0x00;
            
                if (var1 >= arg3) {
                label_1105:
                    return var0;
                } else {
                label_0FB2:
                    var2 = 0x00;
                    var var3 = var2;
                    var var4 = arg0;
                    var var5 = arg1;
                    var var6 = var1;
                
                    if (var6 < var5) {
                        var temp2 = var6 * 0x20 + var4;
                        var temp3 = temp2 + 0x20;
                        var4 = 0x0fdb;
                        var6 = temp2;
                        var5 = temp3;
                        var4 = func_37EF(var5, var6);
                        var4 = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var5 = arg2;
                        var6 = arg3;
                        var var7 = var1;
                    
                        if (var7 < var6) {
                            var temp4 = var5;
                            var temp5 = temp4 + var7 * 0x20;
                            var5 = 0x1015;
                            var6 = temp5;
                            var7 = temp4;
                            var5, var6 = func_397E(var6, var7);
                            var temp6 = var5;
                            var5 = 0x1023;
                            var temp7 = var6;
                            var6 = temp6;
                            var7 = temp7;
                            var var8 = memory[0x40:0x60];
                            var5 = func_39E3(var6, var7, var8);
                            var temp8 = memory[0x40:0x60];
                            var temp9;
                            temp9, memory[temp8:temp8 + 0x00] = address(var4).delegatecall.gas(msg.gas)(memory[temp8:temp8 + var5 - temp8]);
                            var5 = returndata.length;
                            var6 = var5;
                        
                            if (var6 == 0x00) {
                                var3 = 0x60;
                                var2 = var4;
                            
                                if (var2) {
                                label_10D2:
                                    var4 = var3;
                                    var5 = var0;
                                    var6 = var1;
                                
                                    if (var6 < memory[var5:var5 + 0x20]) {
                                        memory[var6 * 0x20 + 0x20 + var5:var6 * 0x20 + 0x20 + var5 + 0x20] = var4;
                                        var2 = var1;
                                        var4 = var2;
                                        var3 = 0x10fd;
                                        var3 = func_3929(var4);
                                        var1 = var3;
                                    
                                        if (var1 >= arg3) { goto label_1105; }
                                        else { goto label_0FB2; }
                                    } else {
                                        var7 = 0x10e5;
                                    
                                    label_38CB:
                                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                        memory[0x04:0x24] = 0x32;
                                        revert(memory[0x00:0x24]);
                                    }
                                } else {
                                label_106E:
                                
                                    if (memory[var3:var3 + 0x20] < 0x44) { revert(memory[0x00:0x00]); }
                                
                                    var temp10 = var3 + 0x04;
                                    var3 = temp10;
                                    var4 = 0x1096;
                                    var5 = var3 + 0x20 + memory[var3:var3 + 0x20];
                                    var6 = var3 + 0x20;
                                    var7 = 0x00;
                                
                                    if (var5 - var6 i< 0x20) { revert(memory[0x00:0x00]); }
                                
                                    var8 = memory[var6:var6 + 0x20];
                                    var var9 = 0xffffffffffffffff;
                                
                                    if (var8 > var9) { revert(memory[0x00:0x00]); }
                                
                                    var temp11 = var6 + var8;
                                    var8 = temp11;
                                
                                    if (var8 + 0x1f i>= var5) { revert(memory[0x00:0x00]); }
                                
                                    var var10 = memory[var8:var8 + 0x20];
                                
                                    if (var10 <= var9) {
                                        var var11 = 0x3a74;
                                        var var12 = (var10 + 0x1f & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 0x20;
                                        var11 = func_33EB(var12);
                                        var9 = var11;
                                        var temp12 = var10;
                                        memory[var9:var9 + 0x20] = temp12;
                                    
                                        if (var8 + temp12 + 0x20 > var5) { revert(memory[0x00:0x00]); }
                                    
                                        var11 = 0x1105;
                                        var12 = var10;
                                        var var13 = var9 + 0x20;
                                        var var14 = var8 + 0x20;
                                        func_36F9(var12, var13, var14);
                                        goto label_1105;
                                    } else {
                                        var11 = 0x3a43;
                                    
                                    label_33BC:
                                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                        memory[0x04:0x24] = 0x41;
                                        revert(memory[0x00:0x24]);
                                    }
                                }
                            } else {
                                var temp13 = memory[0x40:0x60];
                                var5 = temp13;
                                memory[0x40:0x60] = var5 + (returndata.length + 0x3f & ~0x1f);
                                memory[var5:var5 + 0x20] = returndata.length;
                                var temp14 = returndata.length;
                                memory[var5 + 0x20:var5 + 0x20 + temp14] = returndata[0x00:0x00 + temp14];
                                var3 = var5;
                                var2 = var4;
                            
                                if (var2) { goto label_10D2; }
                                else { goto label_106E; }
                            }
                        } else {
                            var8 = 0x1003;
                            goto label_38CB;
                        }
                    } else {
                        var7 = 0x0fc6;
                        goto label_38CB;
                    }
                }
            } else {
                var temp15 = var1 + 0x20;
                memory[temp15:temp15 + 0x20] = 0x60;
                var2 = var2 - 0x01;
                var3 = temp15 + 0x20;
            
                if (!var2) { goto label_0FA1; }
            
            label_0F8E:
                var temp16 = var3;
                memory[temp16:temp16 + 0x20] = 0x60;
                var3 = temp16 + 0x20;
                var2 = var2 - 0x01;
            
                if (var2) { goto label_0F8E; }
            
            label_0FA1:
                var2 = var3;
                goto label_0FA3;
            }
        } else {
            var2 = 0x0f70;
            goto label_33BC;
        }
    }
    
    function func_047B(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (msg.sender != 0xa9a20c7d6e0d6c9e3a90766bea34c442ed10aa01) { revert(memory[0x00:0x00]); }
    
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x00;
        return storage[keccak256(memory[0x00:0x40])] & 0xff;
    }
    
    function func_04AB(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0958;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var0 = func_29AA(var1, var2, var3, var4);
    }
    
    function func_04CB(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x1174;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var0 = func_2DA0(var1, var2, var3, var4);
    
        if (!var0) { return; }
    
        var0 = 0x00;
    
        if (var0 >= memory[arg2:arg2 + 0x20]) {
        label_0879:
            return;
        } else {
        label_1186:
            var1 = arg2;
            var2 = var0;
        
            if (var2 < memory[var1:var1 + 0x20]) {
                var temp0 = memory[0x40:0x60];
                var temp1;
                temp1, memory[temp0:temp0 + 0x00] = address(memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
                var2 = returndata.length;
                var3 = var2;
            
                if (var3 == 0x00) {
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x1208;
                    var2 = func_3929(var3);
                
                label_1208:
                    var0 = var2;
                
                    if (var0 >= memory[arg2:arg2 + 0x20]) { goto label_0879; }
                    else { goto label_1186; }
                } else {
                    var temp2 = memory[0x40:0x60];
                    var2 = temp2;
                    memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                    memory[var2:var2 + 0x20] = returndata.length;
                    var temp3 = returndata.length;
                    memory[var2 + 0x20:var2 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x1208;
                    var2 = func_3929(var3);
                    goto label_1208;
                }
            } else {
                var3 = 0x1197;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        }
    }
    
    function func_04EB(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x0a81;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var0 = func_2DA0(var1, var2, var3, var4);
    
        if (!var0) { return; }
    
        var0 = arg2;
        var1 = 0x00;
    
        if (var1 < memory[var0:var0 + 0x20]) {
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
            var1 = returndata.length;
            var2 = var1;
        
            if (var2 == 0x00) {
                var0 = arg2;
                var1 = 0x01;
            
                if (var1 < memory[var0:var0 + 0x20]) {
                label_0A08:
                    var temp2 = memory[0x40:0x60];
                    var temp3;
                    temp3, memory[temp2:temp2 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
                    var1 = returndata.length;
                    var2 = var1;
                
                    if (var2 == 0x00) { return; }
                
                    var temp4 = memory[0x40:0x60];
                    var1 = temp4;
                    memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                    memory[var1:var1 + 0x20] = returndata.length;
                    var temp5 = returndata.length;
                    memory[var1 + 0x20:var1 + 0x20 + temp5] = returndata[0x00:0x00 + temp5];
                    return;
                } else {
                label_0B0B:
                    var2 = 0x0a08;
                
                label_38CB:
                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    memory[0x04:0x24] = 0x32;
                    revert(memory[0x00:0x24]);
                }
            } else {
                var temp6 = memory[0x40:0x60];
                var1 = temp6;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp7 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp7] = returndata[0x00:0x00 + temp7];
                var0 = arg2;
                var1 = 0x01;
            
                if (var1 < memory[var0:var0 + 0x20]) { goto label_0A08; }
                else { goto label_0B0B; }
            }
        } else {
            var2 = 0x0a99;
            goto label_38CB;
        }
    }
    
    function func_0513(var arg0, var arg1, var arg2, var arg3, var arg4) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return; }
    
        var var0 = 0x12de;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var var5 = 0x00;
        var var6 = var5;
        var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var8 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
        var var9 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
        var var10 = !temp2;
    
        if (!var10) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var7 = 0x2192;
            var9 = temp3;
            var8 = var9 + temp4;
            var7, var8, var9 = func_3B08(var8, var9);
            var temp5 = var8 & 0xffffffffffffffffffffffffffff;
            var6 = temp5;
            var temp6 = var7 & 0xffffffffffffffffffffffffffff;
            var5 = temp6;
            var7 = 0x00;
            var8 = 0x21c5;
            var9 = var4;
            var10 = var6;
            var var11 = var5;
            var var12 = var3;
            var8 = func_32F7(var9, var10, var11, var12);
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
            var7 = var8;
            var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var9 = 0xa9059cbb;
            var10 = temp7 + 0x44;
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
            var11 = !temp9;
        
            if (!var11) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var8 = 0x2262;
                var10 = temp10;
                var9 = var10 + temp11;
                var11 = 0x00;
            
                if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
            
                var12 = memory[var10:var10 + 0x20];
                var var13 = 0x380c;
                var var14 = var12;
                func_35E1(var14);
                var8 = var12;
                // Error: Could not resolve jump destination!
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0533(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        if (block.timestamp > arg5) {
        label_0879:
            return;
        } else {
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = 0x00;
        
            if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { goto label_0879; }
        
            var var0 = 0x070d;
            var var1 = arg0;
            var var2 = arg1;
            var var3 = arg3;
            var var4 = arg4;
            var var5 = 0x00;
            var var6 = var5;
            var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var8 = 0x0902f1ac;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
            var var9 = temp0 + 0x04;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
            var var10 = !temp2;
        
            if (!var10) {
                var temp3 = memory[0x40:0x60];
                var temp4 = returndata.length;
                memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                var7 = 0x1faa;
                var9 = temp3;
                var8 = var9 + temp4;
                var7, var8, var9 = func_3B08(var8, var9);
                var temp5 = var8 & 0xffffffffffffffffffffffffffff;
                var6 = temp5;
                var temp6 = var7 & 0xffffffffffffffffffffffffffff;
                var5 = temp6;
                var7 = 0x00;
                var8 = 0x1fdd;
                var9 = var4;
                var10 = var5;
                var var11 = var6;
                var var12 = var3;
                var8 = func_32F7(var9, var10, var11, var12);
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
                var7 = var8;
                var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0xa9059cbb;
                var10 = temp7 + 0x44;
                var temp8 = memory[0x40:0x60];
                var temp9;
                temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
                var11 = !temp9;
            
                if (!var11) {
                    var temp10 = memory[0x40:0x60];
                    var temp11 = returndata.length;
                    memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                    var8 = 0x207a;
                    var10 = temp10;
                    var9 = var10 + temp11;
                    var11 = 0x00;
                
                    if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var12 = memory[var10:var10 + 0x20];
                    var var13 = 0x380c;
                    var var14 = var12;
                    func_35E1(var14);
                    var8 = var12;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp12 = returndata.length;
                    memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp13 = returndata.length;
                memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function func_0573(var arg0, var arg1, var arg2, var arg3, var arg4) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return; }
    
        var var0 = 0x13d0;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var var5 = 0x00;
        var var6 = var5;
        var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var8 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
        var var9 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
        var var10 = !temp2;
    
        if (!var10) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var7 = 0x2192;
            var9 = temp3;
            var8 = var9 + temp4;
            var7, var8, var9 = func_3B08(var8, var9);
            var temp5 = var8 & 0xffffffffffffffffffffffffffff;
            var6 = temp5;
            var temp6 = var7 & 0xffffffffffffffffffffffffffff;
            var5 = temp6;
            var7 = 0x00;
            var8 = 0x21c5;
            var9 = var4;
            var10 = var6;
            var var11 = var5;
            var var12 = var3;
            var8 = func_32F7(var9, var10, var11, var12);
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
            var7 = var8;
            var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var9 = 0xa9059cbb;
            var10 = temp7 + 0x44;
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
            var11 = !temp9;
        
            if (!var11) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var8 = 0x2262;
                var10 = temp10;
                var9 = var10 + temp11;
                var11 = 0x00;
            
                if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
            
                var12 = memory[var10:var10 + 0x20];
                var var13 = 0x380c;
                var var14 = var12;
                func_35E1(var14);
                var8 = var12;
                // Error: Could not resolve jump destination!
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0593(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = 0x14e1;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var0 = func_3196(var1, var2, var3, var4);
    
        if (!var0) { return; }
    
        var0 = 0x00;
    
        if (var0 >= memory[arg2:arg2 + 0x20]) {
        label_0879:
            return;
        } else {
        label_14F3:
            var1 = arg2;
            var2 = var0;
        
            if (var2 < memory[var1:var1 + 0x20]) {
                var temp0 = memory[0x40:0x60];
                var temp1;
                temp1, memory[temp0:temp0 + 0x00] = address(memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
                var2 = returndata.length;
                var3 = var2;
            
                if (var3 == 0x00) {
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x1575;
                    var2 = func_3929(var3);
                
                label_1575:
                    var0 = var2;
                
                    if (var0 >= memory[arg2:arg2 + 0x20]) { goto label_0879; }
                    else { goto label_14F3; }
                } else {
                    var temp2 = memory[0x40:0x60];
                    var2 = temp2;
                    memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                    memory[var2:var2 + 0x20] = returndata.length;
                    var temp3 = returndata.length;
                    memory[var2 + 0x20:var2 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                    var1 = var0;
                    var3 = var1;
                    var2 = 0x1575;
                    var2 = func_3929(var3);
                    goto label_1575;
                }
            } else {
                var3 = 0x1504;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x32;
                revert(memory[0x00:0x24]);
            }
        }
    }
    
    function func_05B3(var arg0, var arg1, var arg2) {
        if (msg.sender != 0x6620f0f2d84f63118565119122ab988b7b9b6a45) { revert(memory[0x00:0x00]); }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = arg2;
        var var0 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var1 = 0x2e1a7d4d;
        var var2 = temp0 + 0x24;
        var var3 = 0x00;
        var var4 = memory[0x40:0x60];
        var var5 = var2 - var4;
        var var6 = var4;
        var var7 = 0x00;
        var var8 = var0;
        var var9 = !address(var8).code.length;
    
        if (var9) { revert(memory[0x00:0x00]); }
    
        var temp1;
        temp1, memory[var4:var4 + var3] = address(var8).call.gas(msg.gas).value(var7)(memory[var6:var6 + var5]);
        var3 = !temp1;
    
        if (!var3) {
            var temp2 = memory[0x40:0x60];
            var temp3 = arg2;
            var temp4;
            temp4, memory[temp2:temp2 + 0x00] = address(arg1 & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp3 * 0x08fc).value(temp3)(memory[temp2:temp2 + 0x00]);
            var0 = !temp4;
        
            if (!var0) { return; }
        
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp6 = returndata.length;
            memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_05D3(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x0958;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg2;
        var var4 = arg3;
        var0 = func_3196(var1, var2, var3, var4);
    }
    
    function func_0613(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        if (block.timestamp > arg5) {
        label_0879:
            return;
        } else {
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = 0x00;
        
            if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { goto label_0879; }
        
            var var0 = 0x17e7;
            var var1 = arg0;
            var var2 = arg1;
            var var3 = arg3;
            var var4 = arg4;
            var var5 = 0x00;
            var var6 = var5;
            var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var8 = 0x0902f1ac;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
            var var9 = temp0 + 0x04;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
            var var10 = !temp2;
        
            if (!var10) {
                var temp3 = memory[0x40:0x60];
                var temp4 = returndata.length;
                memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                var7 = 0x1faa;
                var9 = temp3;
                var8 = var9 + temp4;
                var7, var8, var9 = func_3B08(var8, var9);
                var temp5 = var8 & 0xffffffffffffffffffffffffffff;
                var6 = temp5;
                var temp6 = var7 & 0xffffffffffffffffffffffffffff;
                var5 = temp6;
                var7 = 0x00;
                var8 = 0x1fdd;
                var9 = var4;
                var10 = var5;
                var var11 = var6;
                var var12 = var3;
                var8 = func_32F7(var9, var10, var11, var12);
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
                var7 = var8;
                var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0xa9059cbb;
                var10 = temp7 + 0x44;
                var temp8 = memory[0x40:0x60];
                var temp9;
                temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
                var11 = !temp9;
            
                if (!var11) {
                    var temp10 = memory[0x40:0x60];
                    var temp11 = returndata.length;
                    memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                    var8 = 0x207a;
                    var10 = temp10;
                    var9 = var10 + temp11;
                    var11 = 0x00;
                
                    if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var12 = memory[var10:var10 + 0x20];
                    var var13 = 0x380c;
                    var var14 = var12;
                    func_35E1(var14);
                    var8 = var12;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp12 = returndata.length;
                    memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp13 = returndata.length;
                memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function func_0633(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = arg2;
        var var1 = 0x00;
    
        if (var1 < memory[var0:var0 + 0x20]) {
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
            var1 = returndata.length;
            var var2 = var1;
        
            if (var2 == 0x00) {
                var0 = 0x1903;
                var1 = arg0;
                var2 = arg1;
                var var3 = arg3;
                var var4 = arg4;
                var0 = func_270E(var1, var2, var3, var4);
            
            label_1903:
            
                if (!var0) { return; }
            
                var0 = 0x01;
            
                if (var0 >= memory[arg2:arg2 + 0x20]) {
                label_0879:
                    return;
                } else {
                label_1915:
                    var1 = arg2;
                    var2 = var0;
                
                    if (var2 < memory[var1:var1 + 0x20]) {
                        var temp2 = memory[0x40:0x60];
                        var temp3;
                        temp3, memory[temp2:temp2 + 0x00] = address(memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
                        var2 = returndata.length;
                        var3 = var2;
                    
                        if (var3 == 0x00) {
                            var1 = var0;
                            var3 = var1;
                            var2 = 0x1997;
                            var2 = func_3929(var3);
                        
                        label_1997:
                            var0 = var2;
                        
                            if (var0 >= memory[arg2:arg2 + 0x20]) { goto label_0879; }
                            else { goto label_1915; }
                        } else {
                            var temp4 = memory[0x40:0x60];
                            var2 = temp4;
                            memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                            memory[var2:var2 + 0x20] = returndata.length;
                            var temp5 = returndata.length;
                            memory[var2 + 0x20:var2 + 0x20 + temp5] = returndata[0x00:0x00 + temp5];
                            var1 = var0;
                            var3 = var1;
                            var2 = 0x1997;
                            var2 = func_3929(var3);
                            goto label_1997;
                        }
                    } else {
                        var3 = 0x1926;
                    
                    label_38CB:
                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                        memory[0x04:0x24] = 0x32;
                        revert(memory[0x00:0x24]);
                    }
                }
            } else {
                var temp6 = memory[0x40:0x60];
                var1 = temp6;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp7 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp7] = returndata[0x00:0x00 + temp7];
                var0 = 0x1903;
                var1 = arg0;
                var2 = arg1;
                var3 = arg3;
                var4 = arg4;
                var0 = func_270E(var1, var2, var3, var4);
                goto label_1903;
            }
        } else {
            var2 = 0x1891;
            goto label_38CB;
        }
    }
    
    function func_0653(var arg0, var arg1, var arg2, var arg3, var arg4) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return; }
    
        var var0 = 0x13d0;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var var5 = 0x00;
        var var6 = var5;
        var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var8 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
        var var9 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
        var var10 = !temp2;
    
        if (!var10) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var7 = 0x1faa;
            var9 = temp3;
            var8 = var9 + temp4;
            var7, var8, var9 = func_3B08(var8, var9);
            var temp5 = var8 & 0xffffffffffffffffffffffffffff;
            var6 = temp5;
            var temp6 = var7 & 0xffffffffffffffffffffffffffff;
            var5 = temp6;
            var7 = 0x00;
            var8 = 0x1fdd;
            var9 = var4;
            var10 = var5;
            var var11 = var6;
            var var12 = var3;
            var8 = func_32F7(var9, var10, var11, var12);
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
            var7 = var8;
            var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var9 = 0xa9059cbb;
            var10 = temp7 + 0x44;
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
            var11 = !temp9;
        
            if (!var11) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var8 = 0x207a;
                var10 = temp10;
                var9 = var10 + temp11;
                var11 = 0x00;
            
                if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
            
                var12 = memory[var10:var10 + 0x20];
                var var13 = 0x380c;
                var var14 = var12;
                func_35E1(var14);
                var8 = var12;
                // Error: Could not resolve jump destination!
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_0673(var arg0, var arg1, var arg2, var arg3, var arg4) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return; }
    
        var var0 = 0x19e7;
        var var1 = arg0;
        var var2 = arg1;
        var var3 = arg3;
        var var4 = arg4;
        var var5 = 0x00;
        var var6 = var5;
        var var7 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var8 = 0x0902f1ac;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var8 & 0xffffffff) << 0xe0;
        var var9 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x60] = address(var7).staticcall.gas(msg.gas)(memory[temp1:temp1 + var9 - temp1]);
        var var10 = !temp2;
    
        if (!var10) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var7 = 0x1faa;
            var9 = temp3;
            var8 = var9 + temp4;
            var7, var8, var9 = func_3B08(var8, var9);
            var temp5 = var8 & 0xffffffffffffffffffffffffffff;
            var6 = temp5;
            var temp6 = var7 & 0xffffffffffffffffffffffffffff;
            var5 = temp6;
            var7 = 0x00;
            var8 = 0x1fdd;
            var9 = var4;
            var10 = var5;
            var var11 = var6;
            var var12 = var3;
            var8 = func_32F7(var9, var10, var11, var12);
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            memory[temp7 + 0x04:temp7 + 0x04 + 0x20] = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[temp7 + 0x24:temp7 + 0x24 + 0x20] = var4;
            var7 = var8;
            var8 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var9 = 0xa9059cbb;
            var10 = temp7 + 0x44;
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var8).call.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
            var11 = !temp9;
        
            if (!var11) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var8 = 0x207a;
                var10 = temp10;
                var9 = var10 + temp11;
                var11 = 0x00;
            
                if (var9 - var10 i< 0x20) { revert(memory[0x00:0x00]); }
            
                var12 = memory[var10:var10 + 0x20];
                var var13 = 0x380c;
                var var14 = var12;
                func_35E1(var14);
                var8 = var12;
                // Error: Could not resolve jump destination!
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_06B3(var arg0, var arg1, var arg2, var arg3, var arg4) {
        var var0 = arg2;
        var var1 = 0x00;
    
        if (var1 < memory[var0:var0 + 0x20]) {
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp0:temp0 + memory[0x40:0x60] - temp0]);
            var1 = returndata.length;
            var var2 = var1;
        
            if (var2 == 0x00) {
                var0 = 0x09f0;
                var1 = arg0;
                var2 = arg1;
                var var3 = arg3;
                var var4 = arg4;
                var0 = func_22D1(var1, var2, var3, var4);
            
            label_09F0:
            
                if (!var0) { return; }
            
                var0 = arg2;
                var1 = 0x01;
            
                if (var1 < memory[var0:var0 + 0x20]) {
                    var temp2 = memory[0x40:0x60];
                    var temp3;
                    temp3, memory[temp2:temp2 + 0x00] = address(memory[var1 * 0x20 + 0x20 + var0:var1 * 0x20 + 0x20 + var0 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(msg.gas)(memory[temp2:temp2 + memory[0x40:0x60] - temp2]);
                    var1 = returndata.length;
                    var2 = var1;
                
                    if (var2 == 0x00) { return; }
                
                    var temp4 = memory[0x40:0x60];
                    var1 = temp4;
                    memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                    memory[var1:var1 + 0x20] = returndata.length;
                    var temp5 = returndata.length;
                    memory[var1 + 0x20:var1 + 0x20 + temp5] = returndata[0x00:0x00 + temp5];
                    return;
                } else {
                    var2 = 0x0a08;
                
                label_38CB:
                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                    memory[0x04:0x24] = 0x32;
                    revert(memory[0x00:0x24]);
                }
            } else {
                var temp6 = memory[0x40:0x60];
                var1 = temp6;
                memory[0x40:0x60] = var1 + (returndata.length + 0x3f & ~0x1f);
                memory[var1:var1 + 0x20] = returndata.length;
                var temp7 = returndata.length;
                memory[var1 + 0x20:var1 + 0x20 + temp7] = returndata[0x00:0x00 + temp7];
                var0 = 0x09f0;
                var1 = arg0;
                var2 = arg1;
                var3 = arg3;
                var4 = arg4;
                var0 = func_22D1(var1, var2, var3, var4);
                goto label_09F0;
            }
        } else {
            var2 = 0x1ec6;
            goto label_38CB;
        }
    }
    
    function func_22D1(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = temp0 + 0x24;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x2364;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_3AAF(var3, var4);
            var1 = var2;
        
            if (var1 > 0x01) {
                var2 = arg0;
                var3 = 0x00;
                var4 = var3;
                var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var var6 = 0x0902f1ac;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var6 & 0xffffffff) << 0xe0;
                var var7 = temp5 + 0x04;
                var temp6 = memory[0x40:0x60];
                var temp7;
                temp7, memory[temp6:temp6 + 0x60] = address(var5).staticcall.gas(msg.gas)(memory[temp6:temp6 + var7 - temp6]);
                var var8 = !temp7;
            
                if (!var8) {
                    var temp8 = memory[0x40:0x60];
                    var temp9 = returndata.length;
                    memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                    var5 = 0x23ef;
                    var7 = temp8;
                    var6 = var7 + temp9;
                    var5, var6, var7 = func_3B08(var6, var7);
                    var temp10 = var6 & 0xffffffffffffffffffffffffffff;
                    var4 = temp10;
                    var temp11 = var5 & 0xffffffffffffffffffffffffffff;
                    var3 = temp11;
                    var temp12 = var1 - 0x01;
                    var1 = temp12;
                    var5 = 0x00;
                    var6 = 0x2428;
                    var7 = var1;
                    var8 = var4;
                    var var9 = var3;
                    var var10 = arg2;
                    var6 = func_32F7(var7, var8, var9, var10);
                    var5 = var6;
                
                    if (var5 >= arg3) {
                        memory[0x00:0x20] = msg.sender;
                        memory[0x20:0x40] = 0x00;
                    
                        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
                            var temp13 = memory[0x40:0x60];
                            memory[temp13:temp13 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            memory[temp13 + 0x04:temp13 + 0x04 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[temp13 + 0x24:temp13 + 0x24 + 0x20] = var1;
                            var6 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var7 = 0xa9059cbb;
                            var8 = temp13 + 0x44;
                            var temp14 = memory[0x40:0x60];
                            var temp15;
                            temp15, memory[temp14:temp14 + 0x20] = address(var6).call.gas(msg.gas)(memory[temp14:temp14 + var8 - temp14]);
                            var9 = !temp15;
                        
                            if (!var9) {
                                var temp16 = memory[0x40:0x60];
                                var temp17 = returndata.length;
                                memory[0x40:0x60] = temp16 + (temp17 + 0x1f & ~0x1f);
                                var6 = 0x24fe;
                                var8 = temp16;
                                var7 = var8 + temp17;
                                var9 = 0x00;
                            
                                if (var7 - var8 i< 0x20) { revert(memory[0x00:0x00]); }
                            
                                var10 = memory[var8:var8 + 0x20];
                                var var11 = 0x380c;
                                var var12 = var10;
                                func_35E1(var12);
                                var6 = var10;
                                // Error: Could not resolve jump destination!
                            } else {
                                var temp18 = returndata.length;
                                memory[0x00:0x00 + temp18] = returndata[0x00:0x00 + temp18];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                            var0 = 0x00;
                        
                        label_25A5:
                            return var0;
                        }
                    } else {
                        var0 = 0x00;
                        goto label_25A5;
                    }
                } else {
                    var temp19 = returndata.length;
                    memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var0 = 0x00;
                goto label_25A5;
            }
        } else {
            var temp20 = returndata.length;
            memory[0x00:0x00 + temp20] = returndata[0x00:0x00 + temp20];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_25AD(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = temp0 + 0x24;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x2640;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_3AAF(var3, var4);
            var1 = var2;
        
            if (var1 <= 0x01) { revert(memory[0x00:0x00]); }
        
            var2 = arg0;
            var3 = 0x00;
            var4 = var3;
            var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var6 = 0x0902f1ac;
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = (var6 & 0xffffffff) << 0xe0;
            var var7 = temp5 + 0x04;
            var temp6 = memory[0x40:0x60];
            var temp7;
            temp7, memory[temp6:temp6 + 0x60] = address(var5).staticcall.gas(msg.gas)(memory[temp6:temp6 + var7 - temp6]);
            var var8 = !temp7;
        
            if (!var8) {
                var temp8 = memory[0x40:0x60];
                var temp9 = returndata.length;
                memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                var5 = 0x26c6;
                var7 = temp8;
                var6 = var7 + temp9;
                var5, var6, var7 = func_3B08(var6, var7);
                var temp10 = var6 & 0xffffffffffffffffffffffffffff;
                var4 = temp10;
                var temp11 = var5 & 0xffffffffffffffffffffffffffff;
                var3 = temp11;
                var temp12 = var1 - 0x01;
                var1 = temp12;
                var5 = 0x00;
                var6 = 0x26ff;
                var7 = var1;
                var8 = var4;
                var var9 = var3;
                var var10 = arg2;
                var6 = func_32F7(var7, var8, var9, var10);
                var5 = var6;
            
                if (var5 < arg3) { revert(memory[0x00:0x00]); }
            
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x00;
            
                if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return 0x00; }
            
                var temp13 = memory[0x40:0x60];
                memory[temp13:temp13 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp13 + 0x04:temp13 + 0x04 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp13 + 0x24:temp13 + 0x24 + 0x20] = var1;
                var6 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var7 = 0xa9059cbb;
                var8 = temp13 + 0x44;
                var temp14 = memory[0x40:0x60];
                var temp15;
                temp15, memory[temp14:temp14 + 0x20] = address(var6).call.gas(msg.gas)(memory[temp14:temp14 + var8 - temp14]);
                var9 = !temp15;
            
                if (!var9) {
                    var temp16 = memory[0x40:0x60];
                    var temp17 = returndata.length;
                    memory[0x40:0x60] = temp16 + (temp17 + 0x1f & ~0x1f);
                    var6 = 0x24fe;
                    var8 = temp16;
                    var7 = var8 + temp17;
                    var9 = 0x00;
                
                    if (var7 - var8 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var10 = memory[var8:var8 + 0x20];
                    var var11 = 0x380c;
                    var var12 = var10;
                    func_35E1(var12);
                    var6 = var10;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp18 = returndata.length;
                    memory[0x00:0x00 + temp18] = returndata[0x00:0x00 + temp18];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp19 = returndata.length;
                memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp20 = returndata.length;
            memory[0x00:0x00 + temp20] = returndata[0x00:0x00 + temp20];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_270E(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = temp0 + 0x24;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x27a1;
            var3 = temp3 + temp4;
            var4 = temp3;
            var2 = func_3AAF(var3, var4);
            var1 = var2;
        
            if (var1 > 0x01) {
                var2 = arg0;
                var3 = 0x00;
                var4 = var3;
                var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var var6 = 0x0902f1ac;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var6 & 0xffffffff) << 0xe0;
                var var7 = temp5 + 0x04;
                var temp6 = memory[0x40:0x60];
                var temp7;
                temp7, memory[temp6:temp6 + 0x60] = address(var5).staticcall.gas(msg.gas)(memory[temp6:temp6 + var7 - temp6]);
                var var8 = !temp7;
            
                if (!var8) {
                    var temp8 = memory[0x40:0x60];
                    var temp9 = returndata.length;
                    memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                    var5 = 0x282c;
                    var7 = temp8;
                    var6 = var7 + temp9;
                    var5, var6, var7 = func_3B08(var6, var7);
                    var temp10 = var6 & 0xffffffffffffffffffffffffffff;
                    var4 = temp10;
                    var temp11 = var5 & 0xffffffffffffffffffffffffffff;
                    var3 = temp11;
                    var temp12 = var1 - 0x01;
                    var1 = temp12;
                    var5 = 0x00;
                    var6 = 0x2865;
                    var7 = var1;
                    var8 = var3;
                    var var9 = var4;
                    var var10 = arg2;
                    var6 = func_32F7(var7, var8, var9, var10);
                    var5 = var6;
                
                    if (var5 >= arg3) {
                        memory[0x00:0x20] = msg.sender;
                        memory[0x20:0x40] = 0x00;
                    
                        if (storage[keccak256(memory[0x00:0x40])] & 0xff) {
                            var temp13 = memory[0x40:0x60];
                            memory[temp13:temp13 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            memory[temp13 + 0x04:temp13 + 0x04 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                            memory[temp13 + 0x24:temp13 + 0x24 + 0x20] = var1;
                            var6 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var7 = 0xa9059cbb;
                            var8 = temp13 + 0x44;
                            var temp14 = memory[0x40:0x60];
                            var temp15;
                            temp15, memory[temp14:temp14 + 0x20] = address(var6).call.gas(msg.gas)(memory[temp14:temp14 + var8 - temp14]);
                            var9 = !temp15;
                        
                            if (!var9) {
                                var temp16 = memory[0x40:0x60];
                                var temp17 = returndata.length;
                                memory[0x40:0x60] = temp16 + (temp17 + 0x1f & ~0x1f);
                                var6 = 0x293b;
                                var8 = temp16;
                                var7 = var8 + temp17;
                                var9 = 0x00;
                            
                                if (var7 - var8 i< 0x20) { revert(memory[0x00:0x00]); }
                            
                                var10 = memory[var8:var8 + 0x20];
                                var var11 = 0x380c;
                                var var12 = var10;
                                func_35E1(var12);
                                var6 = var10;
                                // Error: Could not resolve jump destination!
                            } else {
                                var temp18 = returndata.length;
                                memory[0x00:0x00 + temp18] = returndata[0x00:0x00 + temp18];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                            var0 = 0x00;
                        
                        label_25A5:
                            return var0;
                        }
                    } else {
                        var0 = 0x00;
                        goto label_25A5;
                    }
                } else {
                    var temp19 = returndata.length;
                    memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var0 = 0x00;
                goto label_25A5;
            }
        } else {
            var temp20 = returndata.length;
            memory[0x00:0x00 + temp20] = returndata[0x00:0x00 + temp20];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_29AA(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = temp0 + 0x24;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x2a3d;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_3AAF(var3, var4);
            var1 = var2;
        
            if (var1 > 0x01) {
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x00;
            
                if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return 0x00; }
            
                var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var3 = 0xa9059cbb;
                var4 = arg0;
                var5 = 0x2af2;
                var var6 = 0x01;
                var var7 = var1;
                var5 = func_3B58(var6, var7);
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var3 << 0xe0) & 0xffffffff00000000000000000000000000000000000000000000000000000000;
                memory[temp5 + 0x04:temp5 + 0x04 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp5 + 0x24:temp5 + 0x24 + 0x20] = var5;
                var4 = temp5 + 0x44;
                var temp6 = memory[0x40:0x60];
                var temp7;
                temp7, memory[temp6:temp6 + 0x20] = address(var2).call.gas(msg.gas)(memory[temp6:temp6 + var4 - temp6]);
                var5 = !temp7;
            
                if (!var5) {
                    var temp8 = memory[0x40:0x60];
                    var temp9 = returndata.length;
                    memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                    var2 = 0x2b86;
                    var4 = temp8;
                    var3 = var4 + temp9;
                    var5 = 0x00;
                
                    if (var3 - var4 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var6 = memory[var4:var4 + 0x20];
                    var7 = 0x380c;
                    var var8 = var6;
                    func_35E1(var8);
                    var2 = var6;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp10 = returndata.length;
                    memory[0x00:0x00 + temp10] = returndata[0x00:0x00 + temp10];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp11 = memory[0x40:0x60];
                memory[temp11:temp11 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                memory[temp11 + 0x04:temp11 + 0x04 + 0x20] = 0x20;
                memory[temp11 + 0x24:temp11 + 0x24 + 0x20] = 0x01;
                memory[temp11 + 0x44:temp11 + 0x44 + 0x20] = 0x3100000000000000000000000000000000000000000000000000000000000000;
                var2 = temp11 + 0x64;
                var temp12 = memory[0x40:0x60];
                revert(memory[temp12:temp12 + var2 - temp12]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_2DA0(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = temp0 + 0x24;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x2e33;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_3AAF(var3, var4);
            var1 = var2;
        
            if (var1 > 0x01) {
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x00;
            
                if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return 0x00; }
            
                var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var3 = 0xa9059cbb;
                var4 = arg0;
                var5 = 0x2ee8;
                var var6 = 0x01;
                var var7 = var1;
                var5 = func_3B58(var6, var7);
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var3 << 0xe0) & 0xffffffff00000000000000000000000000000000000000000000000000000000;
                memory[temp5 + 0x04:temp5 + 0x04 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp5 + 0x24:temp5 + 0x24 + 0x20] = var5;
                var4 = temp5 + 0x44;
                var temp6 = memory[0x40:0x60];
                var temp7;
                temp7, memory[temp6:temp6 + 0x20] = address(var2).call.gas(msg.gas)(memory[temp6:temp6 + var4 - temp6]);
                var5 = !temp7;
            
                if (!var5) {
                    var temp8 = memory[0x40:0x60];
                    var temp9 = returndata.length;
                    memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                    var2 = 0x2f7c;
                    var4 = temp8;
                    var3 = var4 + temp9;
                    var5 = 0x00;
                
                    if (var3 - var4 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var6 = memory[var4:var4 + 0x20];
                    var7 = 0x380c;
                    var var8 = var6;
                    func_35E1(var8);
                    var2 = var6;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp10 = returndata.length;
                    memory[0x00:0x00 + temp10] = returndata[0x00:0x00 + temp10];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp11 = memory[0x40:0x60];
                memory[temp11:temp11 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                memory[temp11 + 0x04:temp11 + 0x04 + 0x20] = 0x20;
                memory[temp11 + 0x24:temp11 + 0x24 + 0x20] = 0x01;
                memory[temp11 + 0x44:temp11 + 0x44 + 0x20] = 0x3100000000000000000000000000000000000000000000000000000000000000;
                var2 = temp11 + 0x64;
                var temp12 = memory[0x40:0x60];
                revert(memory[temp12:temp12 + var2 - temp12]);
            }
        } else {
            var temp13 = returndata.length;
            memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_3196(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x04:temp0 + 0x04 + 0x20] = address(this);
        var var0 = 0x00;
        var var1 = var0;
        var var2 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x70a08231;
        var var4 = temp0 + 0x24;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x3229;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_3AAF(var3, var4);
            var1 = var2;
        
            if (var1 <= 0x01) { revert(memory[0x00:0x00]); }
        
            var2 = arg0;
            var3 = 0x00;
            var4 = var3;
            var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var6 = 0x0902f1ac;
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = (var6 & 0xffffffff) << 0xe0;
            var var7 = temp5 + 0x04;
            var temp6 = memory[0x40:0x60];
            var temp7;
            temp7, memory[temp6:temp6 + 0x60] = address(var5).staticcall.gas(msg.gas)(memory[temp6:temp6 + var7 - temp6]);
            var var8 = !temp7;
        
            if (!var8) {
                var temp8 = memory[0x40:0x60];
                var temp9 = returndata.length;
                memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                var5 = 0x32af;
                var7 = temp8;
                var6 = var7 + temp9;
                var5, var6, var7 = func_3B08(var6, var7);
                var temp10 = var6 & 0xffffffffffffffffffffffffffff;
                var4 = temp10;
                var temp11 = var5 & 0xffffffffffffffffffffffffffff;
                var3 = temp11;
                var temp12 = var1 - 0x01;
                var1 = temp12;
                var5 = 0x00;
                var6 = 0x32e8;
                var7 = var1;
                var8 = var3;
                var var9 = var4;
                var var10 = arg2;
                var6 = func_32F7(var7, var8, var9, var10);
                var5 = var6;
            
                if (var5 < arg3) { revert(memory[0x00:0x00]); }
            
                memory[0x00:0x20] = msg.sender;
                memory[0x20:0x40] = 0x00;
            
                if (!(storage[keccak256(memory[0x00:0x40])] & 0xff)) { return 0x00; }
            
                var temp13 = memory[0x40:0x60];
                memory[temp13:temp13 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[temp13 + 0x04:temp13 + 0x04 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                memory[temp13 + 0x24:temp13 + 0x24 + 0x20] = var1;
                var6 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var7 = 0xa9059cbb;
                var8 = temp13 + 0x44;
                var temp14 = memory[0x40:0x60];
                var temp15;
                temp15, memory[temp14:temp14 + 0x20] = address(var6).call.gas(msg.gas)(memory[temp14:temp14 + var8 - temp14]);
                var9 = !temp15;
            
                if (!var9) {
                    var temp16 = memory[0x40:0x60];
                    var temp17 = returndata.length;
                    memory[0x40:0x60] = temp16 + (temp17 + 0x1f & ~0x1f);
                    var6 = 0x293b;
                    var8 = temp16;
                    var7 = var8 + temp17;
                    var9 = 0x00;
                
                    if (var7 - var8 i< 0x20) { revert(memory[0x00:0x00]); }
                
                    var10 = memory[var8:var8 + 0x20];
                    var var11 = 0x380c;
                    var var12 = var10;
                    func_35E1(var12);
                    var6 = var10;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp18 = returndata.length;
                    memory[0x00:0x00 + temp18] = returndata[0x00:0x00 + temp18];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp19 = returndata.length;
                memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp20 = returndata.length;
            memory[0x00:0x00 + temp20] = returndata[0x00:0x00 + temp20];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_32F7(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x3306;
        var var3 = arg3;
        var var4 = 0x2710;
        var2 = func_3B58(var3, var4);
        var3 = var2;
        var2 = 0x3310;
        var4 = arg0;
        var2 = func_3B6F(var3, var4);
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x00;
        var3 = 0x331e;
        var4 = arg2;
        var var5 = var1;
        var3 = func_3B6F(var4, var5);
        var2 = var3;
        var3 = 0x00;
        var4 = var1;
        var5 = 0x332f;
        var var6 = arg1;
        var var7 = 0x2710;
        var5 = func_3B6F(var6, var7);
        var temp1 = var4;
        var4 = 0x3339;
        var temp2 = var5;
        var5 = temp1;
        var6 = temp2;
        var4 = func_3BAC(var5, var6);
        var temp3 = var4;
        var3 = temp3;
        var4 = 0x3345;
        var5 = var3;
        var6 = var2;
        return func_3BC4(var5, var6);
    }
    
    function func_3351(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == temp0 & 0xffffffffffffffffffffffffffffffffffffffff) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_3376(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i< 0x80) { revert(memory[0x00:0x00]); }
    
        var var4 = msg.data[arg1:arg1 + 0x20];
        var var5 = 0x3397;
        var var6 = var4;
        func_3351(var6);
        r3 = var4;
        var4 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var5 = 0x33a7;
        var6 = var4;
        func_3351(var6);
        r0 = r3;
        arg0 = var4;
        var temp0 = arg1;
        arg1 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
        r3 = msg.data[temp0 + 0x60:temp0 + 0x60 + 0x20];
        return r0, arg0, arg1, r3;
    }
    
    function func_33EB(var arg0) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var var0 = temp0;
        var temp1 = var0 + (arg0 + 0x1f & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        var var1 = temp1;
    
        if (!((var1 < var0) | (var1 > 0xffffffffffffffff))) {
            memory[0x40:0x60] = var1;
            return var0;
        } else {
            var var2 = 0x3432;
            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            memory[0x04:0x24] = 0x41;
            revert(memory[0x00:0x24]);
        }
    }
    
    function func_343A(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 + 0x1f i>= arg0) { revert(memory[0x00:0x00]); }
    
        var var1 = msg.data[arg1:arg1 + 0x20];
        var var2 = 0x20;
    
        if (var1 <= 0xffffffffffffffff) {
            var var3 = var1 << 0x05;
            var var4 = 0x3476;
            var var5 = var3 + var2;
            var4 = func_33EB(var5);
            var temp0 = var4;
            memory[temp0:temp0 + 0x20] = var1;
            var temp1 = var2;
            var1 = temp1 + var3 + arg1;
            var4 = temp0 + temp1;
            var5 = temp0;
        
            if (var1 > arg0) { revert(memory[0x00:0x00]); }
        
            var3 = arg1 + var2;
        
            if (var3 >= var1) {
            label_34B8:
                return var5;
            } else {
            label_349F:
                var var6 = msg.data[var3:var3 + 0x20];
                var var7 = 0x34a9;
                var var8 = var6;
                func_3351(var8);
                var temp2 = var4;
                memory[temp2:temp2 + 0x20] = var6;
                var temp3 = var2;
                var3 = temp3 + var3;
                var4 = temp3 + temp2;
                var5 = var5;
            
                if (var3 >= var1) { goto label_34B8; }
                else { goto label_349F; }
            }
        } else {
            var3 = 0x3467;
            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            memory[0x04:0x24] = 0x41;
            revert(memory[0x00:0x24]);
        }
    }
    
    function func_34C3(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4, var r5) {
        r3 = 0x00;
        r4 = r3;
        r5 = 0x00;
        var var3 = r5;
        var var4 = 0x00;
        var var5 = var4;
    
        if (arg0 - arg1 i< 0xc0) { revert(memory[0x00:0x00]); }
    
        var var6 = msg.data[arg1:arg1 + 0x20];
        var var7 = 0x34e7;
        var var8 = var6;
        func_3351(var8);
        r3 = var6;
        var6 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var7 = 0x34f7;
        var8 = var6;
        func_3351(var8);
        r4 = var6;
        var6 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
    
        if (var6 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var7 = 0x351f;
        var8 = arg0;
        var var9 = arg1 + var6;
        var7 = func_343A(var8, var9);
        var temp0 = arg1;
        r5 = msg.data[temp0 + 0xa0:temp0 + 0xa0 + 0x20];
        arg1 = var7;
        var temp1 = r4;
        r4 = msg.data[temp0 + 0x80:temp0 + 0x80 + 0x20];
        arg0 = temp1;
        var temp2 = r3;
        r3 = msg.data[temp0 + 0x60:temp0 + 0x60 + 0x20];
        r0 = temp2;
        return r0, arg0, arg1, r3, r4, r5;
    }
    
    function func_3541(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4) {
        r3 = 0x00;
        r4 = r3;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
    
        if (arg0 - arg1 i< 0xa0) { revert(memory[0x00:0x00]); }
    
        var var5 = msg.data[arg1:arg1 + 0x20];
        var var6 = 0x3564;
        var var7 = var5;
        func_3351(var7);
        r3 = var5;
        var5 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var6 = 0x3574;
        var7 = var5;
        func_3351(var7);
        r4 = var5;
        var5 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
    
        if (var5 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var6 = 0x359c;
        var7 = arg0;
        var var8 = arg1 + var5;
        var6 = func_343A(var7, var8);
        r0 = r3;
        arg0 = r4;
        var temp0 = arg1;
        arg1 = var6;
        r3 = msg.data[temp0 + 0x60:temp0 + 0x60 + 0x20];
        r4 = msg.data[temp0 + 0x80:temp0 + 0x80 + 0x20];
        return r0, arg0, arg1, r3, r4;
    }
    
    function func_35B5(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i< 0x40) { revert(memory[0x00:0x00]); }
    
        var var2 = msg.data[arg1:arg1 + 0x20];
        var var3 = 0x35d3;
        var var4 = var2;
        func_3351(var4);
        r0 = var2;
        arg0 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        return r0, arg0;
    }
    
    function func_35E1(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == !!temp0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_35EF(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i< 0x40) { revert(memory[0x00:0x00]); }
    
        var var2 = msg.data[arg1:arg1 + 0x20];
    
        if (var2 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var var3 = 0x3625;
        var var4 = arg0;
        var var5 = arg1 + var2;
        var3 = func_343A(var4, var5);
        var0 = var3;
        var2 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var3 = 0x3636;
        var4 = var2;
        func_35E1(var4);
        arg0 = var2;
        r0 = var0;
        return r0, arg0;
    }
    
    function func_3641(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg1 + 0x1f i>= arg0) { revert(memory[0x00:0x00]); }
    
        var1 = msg.data[arg1:arg1 + 0x20];
    
        if (var1 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1;
        var0 = temp0 + 0x20;
    
        if (temp0 + (var1 << 0x05) + 0x20 > arg0) { revert(memory[0x00:0x00]); }
    
        arg0 = var1;
        r0 = var0;
        return r0, arg0;
    }
    
    function func_368D(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i< 0x40) { revert(memory[0x00:0x00]); }
    
        var var4 = msg.data[arg1:arg1 + 0x20];
        var var5 = 0xffffffffffffffff;
    
        if (var4 > var5) { revert(memory[0x00:0x00]); }
    
        var var6 = 0x36c7;
        var var7 = arg0;
        var var8 = arg1 + var4;
        var6, var7 = func_3641(var7, var8);
        r3 = var6;
        var1 = var7;
        var4 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
    
        if (var4 > var5) { revert(memory[0x00:0x00]); }
    
        var5 = 0x36ed;
        var6 = arg0;
        var7 = arg1 + var4;
        var5, var6 = func_3641(var6, var7);
        var temp0 = r3;
        r3 = var6;
        r0 = temp0;
        arg0 = var1;
        arg1 = var5;
        return r0, arg0, arg1, r3;
    }
    
    function func_36F9(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
    
        if (var0 >= arg0) {
        label_3714:
        
            if (var0 <= arg0) { return; }
        
            memory[arg0 + arg1:arg0 + arg1 + 0x20] = 0x00;
            return;
        } else {
        label_3705:
            var temp0 = var0;
            memory[temp0 + arg1:temp0 + arg1 + 0x20] = memory[temp0 + arg2:temp0 + arg2 + 0x20];
            var0 = temp0 + 0x20;
        
            if (var0 >= arg0) { goto label_3714; }
            else { goto label_3705; }
        }
    }
    
    function func_3725(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg1;
        var temp1 = memory[temp0:temp0 + 0x20];
        var var1 = temp1;
        var temp2 = arg0;
        memory[temp2:temp2 + 0x20] = var1;
        var var2 = 0x373d;
        var var3 = var1;
        var var4 = temp2 + 0x20;
        var var5 = temp0 + 0x20;
        func_36F9(var3, var4, var5);
        return (var1 + 0x1f & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + arg0 + 0x20;
    }
    
    function func_376F(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x20;
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = var1;
        var temp1 = arg0;
        var temp2 = memory[temp1:temp1 + 0x20];
        var var4 = temp2;
        memory[temp0 + var1:temp0 + var1 + 0x20] = var4;
        var var3 = temp0 + 0x40;
        var var2 = temp0 + (var4 << 0x05) + 0x40;
        var var5 = temp1 + var1;
        var var6 = 0x00;
    
        if (var6 >= var4) {
        label_37E2:
            return var2;
        } else {
        label_379F:
            memory[var3:var3 + 0x20] = var2 - arg1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc0;
            var var7 = 0x37d0;
            var var8 = var2;
            var var9 = memory[var5:var5 + 0x20];
            var7 = func_3725(var8, var9);
            var2 = var7;
            var temp3 = var1;
            var3 = temp3 + var3;
            var5 = temp3 + var5;
            var6 = var6 + 0x01;
        
            if (var6 >= var4) { goto label_37E2; }
            else { goto label_379F; }
        }
    }
    
    function func_37EF(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i< 0x20) { revert(memory[0x00:0x00]); }
    
        var var1 = msg.data[arg1:arg1 + 0x20];
        var var2 = 0x380c;
        var var3 = var1;
        func_3351(var3);
        return var1;
    }
    
    function func_3813(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i< 0x60) { revert(memory[0x00:0x00]); }
    
        var var3 = msg.data[arg1:arg1 + 0x20];
        var var4 = 0x3833;
        var var5 = var3;
        func_3351(var5);
        var0 = var3;
        var3 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var4 = 0x3843;
        var5 = var3;
        func_3351(var5);
        r0 = var0;
        arg0 = var3;
        arg1 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
        return r0, arg0, arg1;
    }
    
    function func_3854(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4, var r5, var r6) {
        r3 = 0x00;
        r4 = r3;
        r5 = 0x00;
        r6 = r5;
        var var4 = 0x00;
        var var5 = var4;
        var var6 = 0x00;
    
        if (arg0 - arg1 i< 0xe0) { revert(memory[0x00:0x00]); }
    
        var var7 = msg.data[arg1:arg1 + 0x20];
        var var8 = 0x387a;
        var var9 = var7;
        func_3351(var9);
        r3 = var7;
        var7 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var8 = 0x388a;
        var9 = var7;
        func_3351(var9);
        r4 = var7;
        var7 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
        var8 = 0x389a;
        var9 = var7;
        func_3351(var9);
        r5 = var7;
        var7 = msg.data[arg1 + 0x60:arg1 + 0x60 + 0x20];
        var8 = 0x38aa;
        var9 = var7;
        func_3351(var9);
        var temp0 = r3;
        r3 = var7;
        r0 = temp0;
        arg0 = r4;
        var temp1 = arg1;
        arg1 = r5;
        r4 = msg.data[temp1 + 0x80:temp1 + 0x80 + 0x20];
        r5 = msg.data[temp1 + 0xa0:temp1 + 0xa0 + 0x20];
        r6 = msg.data[temp1 + 0xc0:temp1 + 0xc0 + 0x20];
        return r0, arg0, arg1, r3, r4, r5, r6;
    }
    
    function func_3929(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { return arg0 + 0x01; }
    
        var var1 = 0x395a;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_397E(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = msg.data[arg0:arg0 + 0x20];
    
        if (var2 i>= msg.data.length - arg1 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe1) { revert(memory[0x00:0x00]); }
    
        var temp0 = arg1 + var2;
        var2 = temp0;
        var1 = msg.data[var2:var2 + 0x20];
    
        if (var1 > 0xffffffffffffffff) { revert(memory[0x00:0x00]); }
    
        var0 = var2 + 0x20;
    
        if (var0 i> msg.data.length - var1) { revert(memory[0x00:0x00]); }
    
        arg0 = var1;
        r0 = var0;
        return r0, arg0;
    }
    
    function func_39E3(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg1;
        var temp1 = arg2;
        memory[temp1:temp1 + temp0] = msg.data[arg0:arg0 + temp0];
        memory[temp0 + temp1:temp0 + temp1 + 0x20] = 0x00;
        return temp0 + temp1;
    }
    
    function func_3AAF(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return memory[arg1:arg1 + 0x20]; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_3AE5(var arg0) returns (var r0) {
        var temp0 = memory[arg0:arg0 + 0x20];
        var var0 = temp0;
    
        if (var0 == var0 & 0xffffffffffffffffffffffffffff) { return var0; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_3B08(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i< 0x60) { revert(memory[0x00:0x00]); }
    
        var var3 = 0x3b26;
        var var4 = arg1;
        var3 = func_3AE5(var4);
        var0 = var3;
        var3 = 0x3b34;
        var4 = arg1 + 0x20;
        var3 = func_3AE5(var4);
        var1 = var3;
        var temp0 = memory[arg1 + 0x40:arg1 + 0x40 + 0x20];
        var3 = temp0;
    
        if (var3 != var3 & 0xffffffff) { revert(memory[0x00:0x00]); }
    
        arg1 = var3;
        arg0 = var1;
        r0 = var0;
        return r0, arg0, arg1;
    }
    
    function func_3B58(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 >= arg0) { return arg1 - arg0; }
    
        var var1 = 0x3b6a;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3B6F(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var temp0 = arg1;
    
        if (!(!!temp0 & (arg0 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / temp0))) { return arg1 * arg0; }
    
        var var1 = 0x3ba7;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3BAC(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 <= ~arg0) { return arg1 + arg0; }
    
        var var1 = 0x3bbf;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3BC4(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0) { return arg1 / arg0; }
    
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x12;
        revert(memory[0x00:0x24]);
    }
}


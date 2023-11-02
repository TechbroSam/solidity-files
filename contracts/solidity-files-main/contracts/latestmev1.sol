
contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (0xc4d66de8 > var0) {
                if (0x568f47a5 > var0) {
                    if (var0 == 0x31c1ade5) {
                        // Dispatch table entry for 0x31c1ade5 (unknown)
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0216;
                        var2 = func_151D();
                    
                    label_0216:
                        var temp16 = var2;
                        var2 = 0x0223;
                        var3 = temp16;
                        var4 = memory[0x40:0x60];
                        var2 = func_310C(var3, var4);
                    
                    label_0223:
                        var temp17 = memory[0x40:0x60];
                        return memory[temp17:temp17 + var2 - temp17];
                    } else if (var0 == 0x3ccfd60b) {
                        // Dispatch table entry for withdraw()
                        var1 = msg.value;
                    
                        if (var1) { revert(memory[0x00:0x00]); }
                    
                        var1 = 0x0241;
                        withdraw();
                        stop();
                    } else { goto label_00BC; }
                } else if (var0 == 0x568f47a5) {
                    // Dispatch table entry for 0x568f47a5 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0263;
                    var2 = 0x025e;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_2B7E(var3, var4);
                    var1 = func_025E(var2);
                    var temp18 = var1;
                    var1 = 0x0223;
                    var2 = temp18;
                    var3 = memory[0x40:0x60];
                    var1 = func_2CD5(var2, var3);
                    goto label_0223;
                } else if (var0 == 0x70480275) {
                    // Dispatch table entry for addAdmin(address)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0241;
                    var2 = 0x028b;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_2A98(var3, var4);
                    func_028B(var2);
                    stop();
                } else if (var0 == 0x83786f8c) {
                    // Dispatch table entry for getBalanceOfToken(address)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0216;
                    var2 = 0x02ab;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_2A98(var3, var4);
                    var temp19 = memory[0x40:0x60];
                    memory[temp19:temp19 + 0x20] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    var3 = 0x00;
                    var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var5 = 0x70a08231;
                    var6 = 0x1728;
                    var7 = address(this);
                    var8 = temp19 + 0x04;
                    var6 = func_2CD5(var7, var8);
                    var7 = 0x20;
                    var8 = memory[0x40:0x60];
                    var9 = var6 - var8;
                    var10 = var8;
                    var var11 = var4;
                    var var12 = !address(var11).code.length;
                
                    if (var12) { revert(memory[0x00:0x00]); }
                
                    var temp20;
                    temp20, memory[var8:var8 + var7] = address(var11).staticcall.gas(msg.gas)(memory[var10:var10 + var9]);
                    var7 = !temp20;
                
                    if (!var7) {
                        var temp21 = memory[0x40:0x60];
                        var temp22 = returndata.length;
                        memory[0x40:0x60] = temp21 + (temp22 + 0x1f & ~0x1f);
                        var4 = 0x1778;
                        var5 = temp21 + temp22;
                        var6 = temp21;
                        var4 = func_2BEA(var5, var6);
                        goto label_1778;
                    } else {
                        var temp23 = returndata.length;
                        memory[0x00:0x00 + temp23] = returndata[0x00:0x00 + temp23];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else { goto label_00BC; }
            } else if (0xd26ccb2c > var0) {
                if (var0 == 0xc4d66de8) {
                    // Dispatch table entry for initialize(address)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0241;
                    var2 = 0x02cb;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2 = func_2A98(var3, var4);
                    func_02CB(var2);
                    stop();
                } else if (var0 == 0xc9cf7837) {
                    // Dispatch table entry for 0xc9cf7837 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0241;
                    var2 = 0x02eb;
                    var3 = msg.data.length;
                    var4 = 0x04;
                    var2, var3, var4, var5, var6 = func_2C02(var3, var4);
                    memory[0x00:0x20] = msg.sender;
                    memory[0x20:0x40] = 0x00;
                
                    if (!!(storage[keccak256(memory[0x00:0x40])] & 0xff) == 0x01) {
                        var7 = 0x00;
                        var8 = var7;
                    
                        if (var6) {
                            var9 = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var10 = 0x0dfe1681;
                            var temp24 = memory[0x40:0x60];
                            memory[temp24:temp24 + 0x20] = (var10 & 0xffffffff) << 0xe0;
                            var11 = temp24 + 0x04;
                            var12 = 0x20;
                            var var13 = memory[0x40:0x60];
                            var var14 = var11 - var13;
                            var var15 = var13;
                            var var16 = var9;
                            var var17 = !address(var16).code.length;
                        
                            if (var17) { revert(memory[0x00:0x00]); }
                        
                            var temp25;
                            temp25, memory[var13:var13 + var12] = address(var16).staticcall.gas(msg.gas)(memory[var15:var15 + var14]);
                            var12 = !temp25;
                        
                            if (!var12) {
                                var temp26 = memory[0x40:0x60];
                                var temp27 = returndata.length;
                                memory[0x40:0x60] = temp26 + (temp27 + 0x1f & ~0x1f);
                                var9 = 0x19ea;
                                var11 = temp26;
                                var10 = var11 + temp27;
                            
                            label_2AB4:
                                var12 = 0x00;
                            
                                if (var10 - var11 i>= 0x20) {
                                    var13 = memory[var11:var11 + 0x20];
                                    var14 = 0x1e7e;
                                    var15 = var13;
                                    func_31C1(var15);
                                
                                label_1E7E:
                                    var9 = var13;
                                    // Error: Could not resolve jump destination!
                                } else {
                                    var temp28 = var12;
                                    revert(memory[temp28:temp28 + temp28]);
                                }
                            } else {
                                var temp29 = returndata.length;
                                memory[0x00:0x00 + temp29] = returndata[0x00:0x00 + temp29];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                            var9 = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var10 = 0xd21220a7;
                            var temp30 = memory[0x40:0x60];
                            memory[temp30:temp30 + 0x20] = (var10 & 0xffffffff) << 0xe0;
                            var11 = temp30 + 0x04;
                            var12 = 0x20;
                            var13 = memory[0x40:0x60];
                            var14 = var11 - var13;
                            var15 = var13;
                            var16 = var9;
                            var17 = !address(var16).code.length;
                        
                            if (var17) { revert(memory[0x00:0x00]); }
                        
                            var temp31;
                            temp31, memory[var13:var13 + var12] = address(var16).staticcall.gas(msg.gas)(memory[var15:var15 + var14]);
                            var12 = !temp31;
                        
                            if (!var12) {
                                var temp32 = memory[0x40:0x60];
                                var temp33 = returndata.length;
                                memory[0x40:0x60] = temp32 + (temp33 + 0x1f & ~0x1f);
                                var9 = 0x18e9;
                                var10 = temp32 + temp33;
                                var11 = temp32;
                                goto label_2AB4;
                            } else {
                                var temp34 = returndata.length;
                                memory[0x00:0x00 + temp34] = returndata[0x00:0x00 + temp34];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        }
                    } else {
                        var temp35 = memory[0x40:0x60];
                        memory[temp35:temp35 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var8 = temp35 + 0x04;
                        var7 = 0x0117;
                        var7 = func_2F97(var8);
                        goto label_0117;
                    }
                } else { goto label_00BC; }
            } else if (var0 == 0xd26ccb2c) {
                // Dispatch table entry for 0xd26ccb2c (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0216;
                var2 = func_1D66();
                goto label_0216;
            } else if (var0 == 0xd7081e03) {
                // Dispatch table entry for transferAmount(address,uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0325;
                var2 = 0x0320;
                var3 = msg.data.length;
                var4 = 0x04;
                var2, var3 = func_2B37(var3, var4);
                var4 = 0x00;
                memory[var4:var4 + 0x20] = msg.sender;
                memory[0x20:0x40] = var4;
            
                if (!!(storage[keccak256(memory[var4:var4 + 0x40])] & 0xff) == 0x01) {
                    var temp36 = memory[0x40:0x60];
                    memory[temp36:temp36 + 0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var6 = 0xa9059cbb;
                    var7 = 0x1e2c;
                    var8 = msg.sender;
                    var9 = var3;
                    var10 = temp36 + 0x04;
                    var7 = func_2CF6(var8, var9, var10);
                    var8 = 0x20;
                    var9 = memory[0x40:0x60];
                    var10 = var7 - var9;
                    var11 = var9;
                    var12 = 0x00;
                    var13 = var5;
                    var14 = !address(var13).code.length;
                
                    if (var14) { revert(memory[0x00:0x00]); }
                
                    var temp37;
                    temp37, memory[var9:var9 + var8] = address(var13).call.gas(msg.gas).value(var12)(memory[var11:var11 + var10]);
                    var8 = !temp37;
                
                    if (!var8) {
                        var temp38 = memory[0x40:0x60];
                        var temp39 = returndata.length;
                        memory[0x40:0x60] = temp38 + (temp39 + 0x1f & ~0x1f);
                        var5 = 0x1e7e;
                        var7 = temp38;
                        var6 = var7 + temp39;
                        var8 = 0x00;
                    
                        if (var6 - var7 i>= 0x20) {
                            var9 = memory[var7:var7 + 0x20];
                            var10 = 0x1e7e;
                            var11 = var9;
                            func_31E3(var11);
                            goto label_1E7E;
                        } else {
                            var temp40 = var8;
                            revert(memory[temp40:temp40 + temp40]);
                        }
                    } else {
                        var temp41 = returndata.length;
                        memory[0x00:0x00 + temp41] = returndata[0x00:0x00 + temp41];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var temp42 = memory[0x40:0x60];
                    memory[temp42:temp42 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var6 = temp42 + 0x04;
                    var5 = 0x0117;
                    var5 = func_2F97(var6);
                    goto label_0117;
                }
            } else if (var0 == 0xeabcf340) {
                // Dispatch table entry for 0xeabcf340 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0352;
                var2 = 0x034d;
                var3 = msg.data.length;
                var4 = 0x04;
                var5 = 0x00;
                var6 = var5;
                var7 = 0x00;
                var8 = var7;
                var9 = 0x00;
            
                if (var3 - var4 i>= 0xa0) {
                    var10 = msg.data[var4:var4 + 0x20];
                    var11 = 0x2af2;
                    var12 = var10;
                    func_31C1(var12);
                    var5 = var10;
                    var10 = msg.data[var4 + 0x20:var4 + 0x20 + 0x20];
                    var11 = 0x2b02;
                    var12 = var10;
                    func_31C1(var12);
                    var6 = var10;
                    var10 = msg.data[var4 + 0x40:var4 + 0x40 + 0x20];
                    var11 = 0x2b12;
                    var12 = var10;
                    func_31C1(var12);
                    var7 = var10;
                    var temp43 = var4;
                    var8 = msg.data[temp43 + 0x60:temp43 + 0x60 + 0x20];
                    var10 = msg.data[temp43 + 0x80:temp43 + 0x80 + 0x20];
                    var11 = 0x2b29;
                    var12 = var10;
                    func_320D(var12);
                    var temp44 = var6;
                    var6 = var10;
                    var3 = temp44;
                    var temp45 = var5;
                    var5 = var8;
                    var2 = temp45;
                    var4 = var7;
                    // Error: Could not resolve jump destination!
                } else {
                    var temp46 = var9;
                    revert(memory[temp46:temp46 + temp46]);
                }
            } else { goto label_00BC; }
        } else if (msg.data.length) {
        label_00BC:
            var var0 = msg.value;
        
            if (var0) { revert(memory[0x00:0x00]); }
        
            memory[0x00:0x20] = msg.sender;
            memory[0x20:0x40] = 0x00;
        
            if (!!(storage[keccak256(memory[0x00:0x40])] & 0xff) == 0x01) {
                var0 = 0x00;
                var var1 = 0x0165;
                var temp0 = msg.data.length;
                var temp1 = memory[0x40:0x60];
                memory[0x40:0x60] = temp1 + (temp0 + 0x1f) / 0x20 * 0x20 + 0x20;
                var var2 = temp1;
                memory[var2:var2 + 0x20] = temp0;
                var temp2 = var2 + 0x20;
                memory[temp2:temp2 + temp0] = msg.data[0x00:0x00 + temp0];
                memory[temp2 + temp0:temp2 + temp0 + 0x20] = 0x00;
                var var3 = 0x05;
                var1 = func_035F(var2, var3);
                var0 = var1;
            
                if (!(var0 & 0xff)) {
                    var1 = 0x0177;
                    var temp10 = msg.data.length;
                    var temp11 = memory[0x40:0x60];
                    memory[0x40:0x60] = temp11 + (temp10 + 0x1f) / 0x20 * 0x20 + 0x20;
                    memory[temp11:temp11 + 0x20] = temp10;
                    var temp12 = temp11 + 0x20;
                    memory[temp12:temp12 + temp10] = msg.data[0x00:0x00 + temp10];
                    memory[temp12 + temp10:temp12 + temp10 + 0x20] = 0x00;
                    var3 = 0x00;
                    var2 = temp11;
                    var4 = 0x03ab;
                    var5 = var2;
                    var4 = func_2505(var5);
                    var3 = var4 & 0xffffffffffffffff;
                
                    if (!var3) {
                    label_042E:
                        var4 = 0x00;
                        var5 = 0x0439;
                        var6 = var2;
                        goto label_2512;
                    } else if (block.number <= var3) {
                        var temp14 = memory[0x40:0x60];
                        memory[temp14:temp14 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var5 = temp14 + 0x04;
                        var4 = 0x0117;
                        var4 = func_2F60(var5);
                        goto label_0117;
                    } else if (block.blockHash(var3)) { goto label_042E; }
                    else {
                        var temp13 = memory[0x40:0x60];
                        memory[temp13:temp13 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var5 = temp13 + 0x04;
                        var4 = 0x0117;
                        var4 = func_3005(var5);
                        goto label_0117;
                    }
                } else if (var0 & 0xff == 0x01) {
                    var1 = 0x0177;
                    var temp5 = msg.data.length;
                    var temp6 = memory[0x40:0x60];
                    memory[0x40:0x60] = temp6 + (temp5 + 0x1f) / 0x20 * 0x20 + 0x20;
                    memory[temp6:temp6 + 0x20] = temp5;
                    var temp7 = temp6 + 0x20;
                    memory[temp7:temp7 + temp5] = msg.data[0x00:0x00 + temp5];
                    memory[temp7 + temp5:temp7 + temp5 + 0x20] = 0x00;
                    var3 = 0x00;
                    var2 = temp6;
                    var var4 = 0x0b6c;
                    var var5 = var2;
                    var4 = func_28CD(var5);
                    var3 = var4 & 0xffffffffffffffff;
                
                    if (!var3) {
                    label_0BEF:
                        var4 = 0x00;
                        var5 = 0x0bfa;
                        var var6 = var2;
                    
                    label_2512:
                        var var7 = 0x00;
                        var var8 = 0x1778;
                        var var9 = var6;
                        var var10 = 0x7c;
                        var8 = func_035F(var9, var10);
                    
                    label_1778:
                        var5 = var8;
                        // Error: Could not resolve jump destination!
                    } else if (block.number <= var3) {
                        var temp9 = memory[0x40:0x60];
                        memory[temp9:temp9 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var5 = temp9 + 0x04;
                        var4 = 0x0117;
                        var4 = func_2F60(var5);
                        goto label_0117;
                    } else if (block.blockHash(var3)) { goto label_0BEF; }
                    else {
                        var temp8 = memory[0x40:0x60];
                        memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var4 = 0x0117;
                        var5 = temp8 + 0x04;
                        var4 = func_3005(var5);
                        goto label_0117;
                    }
                } else if (var0 & 0xff == 0x02) {
                    var1 = 0x0177;
                    func_11DF();
                    goto label_0177;
                } else if (var0 & 0xff == 0x03) {
                    var1 = 0x0177;
                    func_128B();
                
                label_0177:
                    stop();
                } else if (var0 & 0xff != 0x11) {
                    var temp3 = memory[0x40:0x60];
                    memory[temp3:temp3 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var2 = temp3 + 0x04;
                    var1 = 0x0117;
                    var1 = func_2FCE(var2);
                
                label_0117:
                    var temp4 = memory[0x40:0x60];
                    revert(memory[temp4:temp4 + var1 - temp4]);
                } else {
                    var1 = 0x0177;
                    selfdestruct(msg.sender);
                }
            } else {
                var temp15 = memory[0x40:0x60];
                memory[temp15:temp15 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var0 = 0x0117;
                var1 = temp15 + 0x04;
                var0 = func_2F97(var1);
                goto label_0117;
            }
        } else { stop(); }
    }
    
    function func_025E(var arg0) returns (var r0) {
        r0 = func_15BB(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_028B(var arg0) {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!!(storage[keccak256(memory[0x00:0x40])] & 0xff) == 0x01) {
            memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x00;
            var temp0 = keccak256(memory[0x00:0x40]);
            storage[temp0] = (storage[temp0] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | 0x01;
            return;
        } else {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var var1 = temp1 + 0x04;
            var var0 = 0x0117;
            var0 = func_2F97(var1);
            var temp2 = memory[0x40:0x60];
            revert(memory[temp2:temp2 + var0 - temp2]);
        }
    }
    
    function func_02CB(var arg0) {
        if (!(storage[0x01] & 0xff)) {
            memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            memory[0x20:0x40] = 0x00;
            var temp0 = keccak256(memory[0x00:0x40]);
            storage[temp0] = (storage[temp0] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | 0x01;
            storage[0x01] = (storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00) | 0x01;
            return;
        } else {
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var var1 = temp1 + 0x04;
            var var0 = 0x0117;
            var0 = func_2EBB(var1);
            var temp2 = memory[0x40:0x60];
            revert(memory[temp2:temp2 + var0 - temp2]);
        }
    }
    
    function func_035F(var arg0, var arg1) returns (var r0) { return memory[arg1 + arg0:arg1 + arg0 + 0x20]; }
    
    function func_11DF() {
        var var0 = 0x00;
        var var1 = 0x1224;
        var temp0 = msg.data.length;
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + (temp0 + 0x1f) / 0x20 * 0x20 + 0x20;
        var var2 = temp1;
        memory[var2:var2 + 0x20] = temp0;
        var temp2 = var2 + 0x20;
        memory[temp2:temp2 + temp0] = msg.data[0x00:0x00 + temp0];
        memory[temp2 + temp0:temp2 + temp0 + 0x20] = 0x00;
        var var3 = 0x06;
        var1 = func_035F(var2, var3);
        var0 = var1 & 0xff;
    
        if (!var0) {
        label_1288:
            return;
        } else {
            var1 = 0x00;
            var2 = 0x1274;
            var temp3 = msg.data.length;
            var temp4 = memory[0x40:0x60];
            memory[0x40:0x60] = temp4 + (temp3 + 0x1f) / 0x20 * 0x20 + 0x20;
            var3 = temp4;
            memory[var3:var3 + 0x20] = temp3;
            var temp5 = var3 + 0x20;
            memory[temp5:temp5 + temp3] = msg.data[0x00:0x00 + temp3];
            memory[temp5 + temp3:temp5 + temp3 + 0x20] = 0x00;
            var var4 = 0x0a;
            var2 = func_035F(var3, var4);
            var temp6 = var2 & 0xffffffff;
            var1 = temp6;
            var2 = 0x1286;
            var3 = var1;
            var4 = var0;
            func_25C7(var3, var4);
            goto label_1288;
        }
    }
    
    function func_128B() {
        var var0 = 0x00;
        var var1 = 0x12d0;
        var temp0 = msg.data.length;
        var temp1 = memory[0x40:0x60];
        memory[0x40:0x60] = temp1 + (temp0 + 0x1f) / 0x20 * 0x20 + 0x20;
        var var2 = temp1;
        memory[var2:var2 + 0x20] = temp0;
        var temp2 = var2 + 0x20;
        memory[temp2:temp2 + temp0] = msg.data[0x00:0x00 + temp0];
        memory[temp2 + temp0:temp2 + temp0 + 0x20] = 0x00;
        var var3 = 0x25;
        var1 = func_035F(var2, var3);
        var0 = var1;
        var1 = 0x00;
        var2 = 0x1317;
        var temp3 = msg.data.length;
        var temp4 = memory[0x40:0x60];
        memory[0x40:0x60] = temp4 + (temp3 + 0x1f) / 0x20 * 0x20 + 0x20;
        var3 = temp4;
        memory[var3:var3 + 0x20] = temp3;
        var temp5 = var3 + 0x20;
        memory[temp5:temp5 + temp3] = msg.data[0x00:0x00 + temp3];
        memory[temp5 + temp3:temp5 + temp3 + 0x20] = 0x00;
        var var4 = 0x45;
        var2 = func_035F(var3, var4);
        var1 = var2;
        memory[0x00:0x20] = 0x756e27583d895e5c06b7b9e96762c1e1653318585733ff6000526016600af300;
        var temp6 = var1 / 0x20;
        var2 = temp6;
    
        if (!var2) {
        label_14D3:
            var2 = var1 & 0x1f;
        
            if (!var2) {
            label_1515:
                return;
            } else {
            label_14E0:
                var temp7 = var0;
                var temp8 = new(memory[0x00:0x1f]).value(0x00).salt(temp7)();
                var0 = temp7 + 0x01;
                var2 = var2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
            
                if (!var2) { goto label_1515; }
                else { goto label_14E0; }
            }
        } else {
        label_1349:
            var temp9 = var0;
            var temp10 = new(memory[0x00:0x1f]).value(0x00).salt(temp9)();
            var temp11 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x01)();
            var temp12 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x02)();
            var temp13 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x03)();
            var temp14 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x04)();
            var temp15 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x05)();
            var temp16 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x06)();
            var temp17 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x07)();
            var temp18 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x08)();
            var temp19 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x09)();
            var temp20 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x0a)();
            var temp21 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x0b)();
            var temp22 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x0c)();
            var temp23 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x0d)();
            var temp24 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x0e)();
            var temp25 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x0f)();
            var temp26 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x10)();
            var temp27 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x11)();
            var temp28 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x12)();
            var temp29 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x13)();
            var temp30 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x14)();
            var temp31 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x15)();
            var temp32 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x16)();
            var temp33 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x17)();
            var temp34 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x18)();
            var temp35 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x19)();
            var temp36 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x1a)();
            var temp37 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x1b)();
            var temp38 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x1c)();
            var temp39 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x1d)();
            var temp40 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x1e)();
            var temp41 = new(memory[0x00:0x1f]).value(0x00).salt(temp9 + 0x1f)();
            var0 = temp9 + 0x20;
            var2 = var2 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
        
            if (!var2) { goto label_14D3; }
            else { goto label_1349; }
        }
    }
    
    function func_151D() returns (var r0) { return 0x3035515fbf4b06f29022a9bc048a66ff51cfea15d173ffc668434520893ff664; }
    
    function withdraw() {
        memory[0x00:0x20] = msg.sender;
        memory[0x20:0x40] = 0x00;
    
        if (!!(storage[keccak256(memory[0x00:0x40])] & 0xff) == 0x01) {
            var temp0 = memory[0x40:0x60];
            var temp1 = address(this).balance;
            var temp2;
            temp2, memory[temp0:temp0 + 0x00] = address(msg.sender).call.gas(!temp1 * 0x08fc).value(temp1)(memory[temp0:temp0 + 0x00]);
            var var0 = !temp2;
        
            if (!var0) { return; }
        
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var var1 = temp4 + 0x04;
            var0 = 0x0117;
            var0 = func_2F97(var1);
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var0 - temp5]);
        }
    }
    
    function func_15BB(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x15f9;
        var var3 = 0xff << 0xf8;
        var var4 = address(this);
        var var5 = arg0;
        var var7 = memory[0x40:0x60] + 0x20;
        var var6 = 0x3035515fbf4b06f29022a9bc048a66ff51cfea15d173ffc668434520893ff664;
        var2 = func_2C52(var3, var4, var5, var6, var7);
        var temp0 = memory[0x40:0x60];
        var temp1 = var2;
        memory[temp0:temp0 + 0x20] = temp1 - temp0 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;
        memory[0x40:0x60] = temp1;
        return keccak256(memory[temp0 + 0x20:temp0 + 0x20 + memory[temp0:temp0 + 0x20]]);
    }
    
    function func_1D66() returns (var r0) { return 0x756e27583d895e5c06b7b9e96762c1e1653318585733ff6000526016600af300; }
    
    function func_2505(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x1778;
        var var2 = arg0;
        var var3 = 0x95;
        return func_035F(var2, var3);
    }
    
    function func_25C7(var arg0, var arg1) {
        var var0 = 0x00;
    
        if (var0 & 0xff >= arg1) {
        label_1515:
            return;
        } else {
        label_25D6:
            var var1 = 0x25e3;
            var var2 = arg0 + (var0 & 0xff);
            var1 = func_15BB(var2);
            var1 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var3 = memory[0x40:0x60];
            var2 = 0x2605;
            var2 = func_2CD2(var3);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var1).call.gas(msg.gas)(memory[temp0:temp0 + var2 - temp0]);
            var2 = returndata.length;
            var3 = var2;
        
            if (var3 == 0x00) {
                var0 = var0 + 0x01;
            
            label_25CA:
            
                if (var0 & 0xff >= arg1) { goto label_1515; }
                else { goto label_25D6; }
            } else {
                var temp2 = memory[0x40:0x60];
                var2 = temp2;
                memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                memory[var2:var2 + 0x20] = returndata.length;
                var temp3 = returndata.length;
                memory[var2 + 0x20:var2 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                var0 = var0 + 0x01;
                goto label_25CA;
            }
        }
    }
    
    function func_28CD(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x1778;
        var var2 = arg0;
        var var3 = 0x90;
        return func_035F(var2, var3);
    }
    
    function func_2A98(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = msg.data[arg1:arg1 + 0x20];
            var var2 = 0x1e7e;
            var var3 = var1;
            func_31C1(var3);
            return var1;
        } else {
            var temp0 = var0;
            revert(memory[temp0:temp0 + temp0]);
        }
    }
    
    function func_2B37(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = msg.data[arg1:arg1 + 0x20];
            var var3 = 0x2b54;
            var var4 = var2;
            func_31C1(var4);
            r0 = var2;
            arg0 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
            return r0, arg0;
        } else {
            var temp0 = var0;
            revert(memory[temp0:temp0 + temp0]);
        }
    }
    
    function func_2B7E(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return msg.data[arg1:arg1 + 0x20]; }
    
        var temp0 = var0;
        revert(memory[temp0:temp0 + temp0]);
    }
    
    function func_2BEA(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) { return memory[arg1:arg1 + 0x20]; }
    
        var temp0 = var0;
        revert(memory[temp0:temp0 + temp0]);
    }
    
    function func_2C02(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4) {
        r3 = 0x00;
        r4 = r3;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
    
        if (arg0 - arg1 i>= 0xa0) {
            var temp0 = arg1;
            r3 = msg.data[temp0:temp0 + 0x20];
            r4 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20];
            var var5 = msg.data[temp0 + 0x40:temp0 + 0x40 + 0x20];
            var var6 = 0x2c32;
            var var7 = var5;
            func_31C1(var7);
            var2 = var5;
            var5 = msg.data[arg1 + 0x60:arg1 + 0x60 + 0x20];
            var6 = 0x2c42;
            var7 = var5;
            func_320D(var7);
            var3 = var5;
            var5 = msg.data[arg1 + 0x80:arg1 + 0x80 + 0x20];
            var6 = 0x2b29;
            var7 = var5;
            func_31E3(var7);
            var temp1 = r4;
            r4 = var5;
            arg0 = temp1;
            var temp2 = r3;
            r3 = var3;
            r0 = temp2;
            arg1 = var2;
            return r0, arg0, arg1, r3, r4;
        } else {
            var temp3 = var4;
            revert(memory[temp3:temp3 + temp3]);
        }
    }
    
    function func_2C52(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0) {
        var temp0 = arg4;
        memory[temp0:temp0 + 0x20] = arg0 & 0xff00000000000000000000000000000000000000000000000000000000000000;
        memory[temp0 + 0x01:temp0 + 0x01 + 0x20] = (arg1 << 0x60) & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000;
        memory[temp0 + 0x15:temp0 + 0x15 + 0x20] = arg2;
        memory[temp0 + 0x35:temp0 + 0x35 + 0x20] = arg3;
        return temp0 + 0x55;
    }
    
    function func_2CD2(var arg0) returns (var r0) { return arg0; }
    
    function func_2CD5(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        return temp0 + 0x20;
    }
    
    function func_2CF6(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg2;
        memory[temp0:temp0 + 0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = arg1;
        return temp0 + 0x40;
    }
    
    function func_2EBB(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x06;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x7765776577650000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_2F60(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x02;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x3a4f000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_2F97(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x04;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x6175746800000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_2FCE(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x01;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x6600000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_3005(var arg0) returns (var r0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x20;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x02;
        memory[temp0 + 0x40:temp0 + 0x40 + 0x20] = 0x3a58000000000000000000000000000000000000000000000000000000000000;
        return temp0 + 0x60;
    }
    
    function func_310C(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_31C1(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == temp0 & 0xffffffffffffffffffffffffffffffffffffffff) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_31E3(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == !!temp0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_320D(var arg0) {
        var temp0 = arg0;
    
        if (temp0 == temp0 & 0xffff) { return; }
        else { revert(memory[0x00:0x00]); }
    }
}
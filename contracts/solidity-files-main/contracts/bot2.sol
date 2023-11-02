


contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length >= 0x04) {
            var var0 = msg.data[0x00:0x20] >> 0xe0;
        
            if (var0 == 0x3ccfd60b) {
                // Dispatch table entry for withdraw()
                var var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x007a;
                withdraw();
                stop();
            } else if (var0 == 0x41c0e1b5) {
                // Dispatch table entry for kill()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0091;
            
                if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) { selfdestruct(msg.sender); }
            
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var var3 = temp0 + 0x04;
                var var2 = 0x02a8;
                var2 = kill(var3);
                var temp1 = memory[0x40:0x60];
                revert(memory[temp1:temp1 + var2 - temp1]);
            } else if (var0 == 0x51ba162c) {
                // Dispatch table entry for disperseTokenSimple(address,address[],uint256[])
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00ba;
                var2 = 0x00b5;
                var3 = msg.data.length - 0x04 + 0x04;
                var var4 = 0x04;
                var2, var3, var4 = func_0B98(var3, var4);
                func_00B5(var2, var3, var4);
                stop();
            } else if (var0 == 0xc73a2d60) {
                // Dispatch table entry for disperseToken(address,address[],uint256[])
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00e3;
                var2 = 0x00de;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2, var3, var4 = func_0B98(var3, var4);
                func_00DE(var2, var3, var4);
                stop();
            } else if (var0 == 0xd321fe29) {
                // Dispatch table entry for getAmount()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00fa;
                var1 = func_067B();
                var temp2 = var1;
                var1 = 0x0107;
                var2 = temp2;
                var3 = memory[0x40:0x60];
                var1 = func_0C32(var2, var3);
                var temp3 = memory[0x40:0x60];
                return memory[temp3:temp3 + var1 - temp3];
            } else if (var0 == 0xe63d38ed) {
                // Dispatch table entry for disperseEther(address[],uint256[])
                var1 = 0x012a;
                var2 = 0x0125;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2, var3 = func_0C4D(var3, var4);
                func_0125(var2, var3);
                stop();
            } else { revert(memory[0x00:0x00]); }
        } else if (msg.data.length) { revert(memory[0x00:0x00]); }
        else { stop(); }
    }
    
    function func_00B5(var arg0, var arg1, var arg2) {
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var var0 = 0x00;
        
            if (var0 >= memory[arg1:arg1 + 0x20]) {
            label_0434:
                return;
            } else {
            label_0365:
                var var1 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var var2 = 0x23b872dd;
                var var3 = msg.sender;
                var var4 = arg1;
                var var5 = var0;
            
                if (var5 < memory[var4:var4 + 0x20]) {
                    var4 = memory[var5 * 0x20 + 0x20 + var4:var5 * 0x20 + 0x20 + var4 + 0x20];
                    var5 = arg2;
                    var var6 = var0;
                
                    if (var6 < memory[var5:var5 + 0x20]) {
                        var temp0 = memory[var6 * 0x20 + 0x20 + var5:var6 * 0x20 + 0x20 + var5 + 0x20];
                        var temp1 = memory[0x40:0x60];
                        memory[temp1:temp1 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                        var temp2 = var3;
                        var3 = 0x03d5;
                        var temp3 = var4;
                        var4 = temp2;
                        var5 = temp3;
                        var var7 = temp1 + 0x04;
                        var6 = temp0;
                        var3 = func_0D80(var4, var5, var6, var7);
                        var temp4 = memory[0x40:0x60];
                        var temp5;
                        temp5, memory[temp4:temp4 + 0x20] = address(var1).call.gas(msg.gas)(memory[temp4:temp4 + var3 - temp4]);
                        var4 = !temp5;
                    
                        if (!var4) {
                            var temp6 = memory[0x40:0x60];
                            var temp7 = returndata.length;
                            memory[0x40:0x60] = temp6 + (temp7 + 0x1f & ~0x1f);
                            var1 = 0x0418;
                            var3 = temp6;
                            var2 = var3 + temp7;
                            var1 = func_0DEF(var2, var3);
                        
                            if (!var1) { revert(memory[0x00:0x00]); }
                        
                            var1 = var0;
                            var2 = 0x042c;
                            var3 = var1;
                            var2 = func_0E4B(var3);
                            var0 = var2;
                        
                            if (var0 >= memory[arg1:arg1 + 0x20]) { goto label_0434; }
                            else { goto label_0365; }
                        } else {
                            var temp8 = returndata.length;
                            memory[0x00:0x00 + temp8] = returndata[0x00:0x00 + temp8];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else {
                        var7 = 0x03ae;
                    
                    label_0D42:
                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                        memory[0x04:0x24] = 0x32;
                        revert(memory[0x00:0x24]);
                    }
                } else {
                    var6 = 0x0393;
                    goto label_0D42;
                }
            }
        } else {
            var temp9 = memory[0x40:0x60];
            memory[temp9:temp9 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp9 + 0x04;
            var0 = 0x034f;
            var0 = kill(var1);
            var temp10 = memory[0x40:0x60];
            revert(memory[temp10:temp10 + var0 - temp10]);
        }
    }
    
    function func_00DE(var arg0, var arg1, var arg2) {
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var var0 = 0x00;
            var var1 = var0;
        
            if (var1 >= memory[arg1:arg1 + 0x20]) {
            label_0510:
                var1 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var var2 = 0x23b872dd;
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                var var3 = 0x054e;
                var var4 = msg.sender;
                var var5 = address(this);
                var var7 = temp0 + 0x04;
                var var6 = var0;
                var3 = func_0D80(var4, var5, var6, var7);
                var temp1 = memory[0x40:0x60];
                var temp2;
                temp2, memory[temp1:temp1 + 0x20] = address(var1).call.gas(msg.gas)(memory[temp1:temp1 + var3 - temp1]);
                var4 = !temp2;
            
                if (!var4) {
                    var temp3 = memory[0x40:0x60];
                    var temp4 = returndata.length;
                    memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                    var1 = 0x0591;
                    var2 = temp3 + temp4;
                    var3 = temp3;
                    var1 = func_0DEF(var2, var3);
                
                    if (!var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x00;
                
                    if (var1 >= memory[arg1:arg1 + 0x20]) {
                    label_0674:
                        return;
                    } else {
                    label_05A7:
                        var2 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var3 = 0xa9059cbb;
                        var4 = arg1;
                        var5 = var1;
                    
                        if (var5 < memory[var4:var4 + 0x20]) {
                            var4 = memory[var5 * 0x20 + 0x20 + var4:var5 * 0x20 + 0x20 + var4 + 0x20];
                            var5 = arg2;
                            var6 = var1;
                        
                            if (var6 < memory[var5:var5 + 0x20]) {
                                var temp5 = memory[var6 * 0x20 + 0x20 + var5:var6 * 0x20 + 0x20 + var5 + 0x20];
                                var temp6 = memory[0x40:0x60];
                                memory[temp6:temp6 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                                var temp7 = var4;
                                var4 = 0x0615;
                                var5 = temp7;
                                var7 = temp6 + 0x04;
                                var6 = temp5;
                                var4 = func_0EEA(var5, var6, var7);
                                var temp8 = memory[0x40:0x60];
                                var temp9;
                                temp9, memory[temp8:temp8 + 0x20] = address(var2).call.gas(msg.gas)(memory[temp8:temp8 + var4 - temp8]);
                                var5 = !temp9;
                            
                                if (!var5) {
                                    var temp10 = memory[0x40:0x60];
                                    var temp11 = returndata.length;
                                    memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                                    var2 = 0x0658;
                                    var3 = temp10 + temp11;
                                    var4 = temp10;
                                    var2 = func_0DEF(var3, var4);
                                
                                    if (!var2) { revert(memory[0x00:0x00]); }
                                
                                    var2 = var1;
                                    var3 = 0x066c;
                                    var4 = var2;
                                    var3 = func_0E4B(var4);
                                    var1 = var3;
                                
                                    if (var1 >= memory[arg1:arg1 + 0x20]) { goto label_0674; }
                                    else { goto label_05A7; }
                                } else {
                                    var temp12 = returndata.length;
                                    memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var7 = 0x05ef;
                            
                            label_0D42:
                                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                memory[0x04:0x24] = 0x32;
                                revert(memory[0x00:0x24]);
                            }
                        } else {
                            var6 = 0x05d4;
                            goto label_0D42;
                        }
                    }
                } else {
                    var temp13 = returndata.length;
                    memory[0x00:0x00 + temp13] = returndata[0x00:0x00 + temp13];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
            label_04D6:
                var2 = arg2;
                var3 = var1;
            
                if (var3 < memory[var2:var2 + 0x20]) {
                    var temp14 = memory[var3 * 0x20 + 0x20 + var2:var3 * 0x20 + 0x20 + var2 + 0x20];
                    var2 = 0x04fb;
                    var4 = var0;
                    var3 = temp14;
                    var2 = func_0E94(var3, var4);
                    var0 = var2;
                    var2 = var1;
                    var4 = var2;
                    var3 = 0x0508;
                    var3 = func_0E4B(var4);
                    var1 = var3;
                
                    if (var1 >= memory[arg1:arg1 + 0x20]) { goto label_0510; }
                    else { goto label_04D6; }
                } else {
                    var4 = 0x04e7;
                    goto label_0D42;
                }
            }
        } else {
            var temp15 = memory[0x40:0x60];
            memory[temp15:temp15 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x04bf;
            var1 = temp15 + 0x04;
            var0 = kill(var1);
            var temp16 = memory[0x40:0x60];
            revert(memory[temp16:temp16 + var0 - temp16]);
        }
    }
    
    function func_0125(var arg0, var arg1) {
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var var0 = 0x00;
        
            if (var0 >= memory[arg0:arg0 + 0x20]) {
            label_083A:
                var0 = address(this).balance;
            
                if (var0 <= 0x00) {
                label_0891:
                    return;
                } else {
                    var temp0 = var0;
                    var temp1 = memory[0x40:0x60];
                    var temp2;
                    temp2, memory[temp1:temp1 + 0x00] = address(msg.sender).call.gas(!temp0 * 0x08fc).value(temp0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
                    var var1 = !temp2;
                
                    if (!var1) { goto label_0891; }
                
                    var temp3 = returndata.length;
                    memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
            label_07AD:
                var1 = arg0;
                var var2 = var0;
            
                if (var2 < memory[var1:var1 + 0x20]) {
                    var1 = memory[var2 * 0x20 + 0x20 + var1:var2 * 0x20 + 0x20 + var1 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
                    var2 = 0x08fc;
                    var var3 = arg1;
                    var var4 = var0;
                
                    if (var4 < memory[var3:var3 + 0x20]) {
                        var temp4 = memory[var4 * 0x20 + 0x20 + var3:var4 * 0x20 + 0x20 + var3 + 0x20];
                        var temp5 = memory[0x40:0x60];
                        var temp6;
                        temp6, memory[temp5:temp5 + 0x00] = address(var1).call.gas(!temp4 * var2).value(temp4)(memory[temp5:temp5 + memory[0x40:0x60] - temp5]);
                        var1 = !temp6;
                    
                        if (!var1) {
                            var1 = var0;
                            var3 = var1;
                            var2 = 0x0832;
                            var2 = func_0E4B(var3);
                            var0 = var2;
                        
                            if (var0 >= memory[arg0:arg0 + 0x20]) { goto label_083A; }
                            else { goto label_07AD; }
                        } else {
                            var temp7 = returndata.length;
                            memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else {
                        var var5 = 0x07f2;
                    
                    label_0D42:
                        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                        memory[0x04:0x24] = 0x32;
                        revert(memory[0x00:0x24]);
                    }
                } else {
                    var3 = 0x07be;
                    goto label_0D42;
                }
            }
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x0797;
            var1 = temp8 + 0x04;
            var0 = kill(var1);
            var temp9 = memory[0x40:0x60];
            revert(memory[temp9:temp9 + var0 - temp9]);
        }
    }
    
    function withdraw() {
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp0 = address(this).balance;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x00] = address(storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp0 * 0x08fc).value(temp0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
            var var0 = !temp2;
        
            if (!var0) { return; }
        
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var var1 = temp4 + 0x04;
            var0 = 0x01b1;
            var0 = kill(var1);
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var0 - temp5]);
        }
    }
    
    function func_067B() returns (var r0) {
        var var0 = 0x00;
    
        if (msg.sender == storage[var0] & 0xffffffffffffffffffffffffffffffffffffffff) { return address(this).balance; }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
        var var2 = temp0 + 0x04;
        var var1 = 0x0703;
        var1 = kill(var2);
        var temp1 = memory[0x40:0x60];
        revert(memory[temp1:temp1 + var1 - temp1]);
    }
    
    function func_0896() returns (var r0) { return memory[0x40:0x60]; }
    
    function func_08AA(var arg0) returns (var r0) { return arg0 & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_08CA(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x08d5;
        var var2 = arg0;
        return func_08AA(var2);
    }
    
    function func_08DC(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x08e7;
        var var2 = arg0;
        return func_08CA(var2);
    }
    
    function func_08EE(var arg0) {
        var var0 = 0x08f7;
        var var1 = arg0;
        var0 = func_08DC(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0905(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0914;
        var var2 = var0;
        func_08EE(var2);
        return var0;
    }
    
    function func_091F(var arg0) returns (var r0) { return arg0 + 0x1f & ~0x1f; }
    
    function func_095F(var arg0, var arg1) {
        var var0 = 0x0968;
        var var1 = arg0;
        var0 = func_091F(var1);
        var temp0 = arg1;
        var temp1 = temp0 + var0;
        var0 = temp1;
    
        if (!((var0 > 0xffffffffffffffff) | (var0 < temp0))) {
            memory[0x40:0x60] = var0;
            return;
        } else {
            var1 = 0x0986;
            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            memory[0x04:0x24] = 0x41;
            revert(memory[0x00:0x24]);
        }
    }
    
    function func_09AB(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 <= 0xffffffffffffffff) { return arg0 * 0x20 + 0x20; }
    
        var var1 = 0x09c5;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x41;
        revert(memory[0x00:0x24]);
    }
    
    function func_09DC(var arg0) {
        var var0 = 0x09e5;
        var var1 = arg0;
        var0 = func_08CA(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_09F3(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0a02;
        var var2 = var0;
        func_09DC(var2);
        return var0;
    }
    
    function func_0A08(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0a1b;
        var var2 = 0x0a16;
        var var3 = arg1;
        var2 = func_09AB(var3);
        var1 = func_0A16(var2);
        var temp0 = var1;
        var0 = temp0;
        var temp1 = arg1;
        memory[var0:var0 + 0x20] = temp1;
        var1 = var0 + 0x20;
        var2 = arg2 + temp1 * 0x20;
    
        if (var2 <= arg0) {
            var3 = arg2;
        
            if (var3 >= var2) {
            label_0A67:
                return var0;
            } else {
            label_0A49:
                var var4 = var3;
                var var5 = 0x0a53;
                var var6 = arg0;
                var var7 = var4;
                var5 = func_09F3(var6, var7);
                var temp2 = var1;
                memory[temp2:temp2 + 0x20] = var5;
                var1 = temp2 + 0x20;
                var3 = var3 + 0x20;
            
                if (var3 >= var2) { goto label_0A67; }
                else { goto label_0A49; }
            }
        } else {
            var3 = 0x0a3d;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0A16(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x099a;
        var1 = func_0896();
        var temp0 = var1;
        var0 = temp0;
        var1 = 0x09a6;
        var var2 = arg0;
        var var3 = var0;
        func_095F(var2, var3);
        return var0;
    }
    
    function func_0A71(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 + 0x1f i< arg0) {
            var temp0 = arg1;
            var var1 = msg.data[temp0:temp0 + 0x20];
            var var2 = 0x0a96;
            var var3 = arg0;
            var var4 = var1;
            var var5 = temp0 + 0x20;
            return func_0A08(var3, var4, var5);
        } else {
            var1 = 0x0a85;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0A9F(var arg0) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 <= 0xffffffffffffffff) { return arg0 * 0x20 + 0x20; }
    
        var var1 = 0x0ab9;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x41;
        revert(memory[0x00:0x24]);
    }
    
    function func_0ACB(var arg0) returns (var r0) { return arg0; }
    
    function func_0AD5(var arg0) {
        var var0 = 0x0ade;
        var var1 = arg0;
        var0 = func_0ACB(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0AEC(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x0afb;
        var var2 = var0;
        func_0AD5(var2);
        return var0;
    }
    
    function func_0B01(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0b14;
        var var2 = 0x0b0f;
        var var3 = arg1;
        var2 = func_0A9F(var3);
        var1 = func_0B0F(var2);
        var temp0 = var1;
        var0 = temp0;
        var temp1 = arg1;
        memory[var0:var0 + 0x20] = temp1;
        var1 = var0 + 0x20;
        var2 = arg2 + temp1 * 0x20;
    
        if (var2 <= arg0) {
            var3 = arg2;
        
            if (var3 >= var2) {
            label_0B60:
                return var0;
            } else {
            label_0B42:
                var var4 = var3;
                var var5 = 0x0b4c;
                var var6 = arg0;
                var var7 = var4;
                var5 = func_0AEC(var6, var7);
                var temp2 = var1;
                memory[temp2:temp2 + 0x20] = var5;
                var1 = temp2 + 0x20;
                var3 = var3 + 0x20;
            
                if (var3 >= var2) { goto label_0B60; }
                else { goto label_0B42; }
            }
        } else {
            var3 = 0x0b36;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0B0F(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x099a;
        var1 = func_0896();
        var temp0 = var1;
        var0 = temp0;
        var1 = 0x09a6;
        var var2 = arg0;
        var var3 = var0;
        func_095F(var2, var3);
        return var0;
    }
    
    function func_0B6A(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg1 + 0x1f i< arg0) {
            var temp0 = arg1;
            var var1 = msg.data[temp0:temp0 + 0x20];
            var var2 = 0x0b8f;
            var var3 = arg0;
            var var4 = var1;
            var var5 = temp0 + 0x20;
            return func_0B01(var3, var4, var5);
        } else {
            var1 = 0x0b7e;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0B98(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = 0x00;
            var var4 = 0x0bbf;
            var var5 = arg0;
            var var6 = arg1 + var3;
            var4 = func_0905(var5, var6);
            var0 = var4;
            var3 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
        
            if (var3 <= 0xffffffffffffffff) {
                var4 = 0x0bec;
                var5 = arg0;
                var6 = arg1 + var3;
                var4 = func_0A71(var5, var6);
                var1 = var4;
                var3 = msg.data[arg1 + 0x40:arg1 + 0x40 + 0x20];
            
                if (var3 <= 0xffffffffffffffff) {
                    var4 = 0x0c19;
                    var5 = arg0;
                    var6 = arg1 + var3;
                    var4 = func_0B6A(var5, var6);
                    arg1 = var4;
                    arg0 = var1;
                    r0 = var0;
                    return r0, arg0, arg1;
                } else {
                    var4 = 0x0c0c;
                    revert(memory[0x00:0x00]);
                }
            } else {
                var4 = 0x0bdf;
                revert(memory[0x00:0x00]);
            }
        } else {
            var3 = 0x0bb0;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0C23(var arg0, var arg1) {
        var var0 = 0x0c2c;
        var var1 = arg1;
        var0 = func_0ACB(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_0C32(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x0c47;
        var var2 = temp0;
        var var3 = arg0;
        func_0C23(var2, var3);
        return var0;
    }
    
    function func_0C4D(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = msg.data[arg1:arg1 + 0x20];
        
            if (var2 <= 0xffffffffffffffff) {
                var var3 = 0x0c8e;
                var var4 = arg0;
                var var5 = arg1 + var2;
                var3 = func_0A71(var4, var5);
                var0 = var3;
                var2 = msg.data[arg1 + 0x20:arg1 + 0x20 + 0x20];
            
                if (var2 <= 0xffffffffffffffff) {
                    var3 = 0x0cbb;
                    var4 = arg0;
                    var5 = arg1 + var2;
                    var3 = func_0B6A(var4, var5);
                    arg0 = var3;
                    r0 = var0;
                    return r0, arg0;
                } else {
                    var3 = 0x0cae;
                    revert(memory[0x00:0x00]);
                }
            } else {
                var3 = 0x0c81;
                revert(memory[0x00:0x00]);
            }
        } else {
            var2 = 0x0c63;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0CC5(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_0CD6(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x6e6f74206f776e65720000000000000000000000000000000000000000000000;
    }
    
    function func_0CFF(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0d0c;
        var var2 = 0x09;
        var var3 = arg0;
        var1 = func_0CC5(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x0d17;
        var2 = arg0;
        func_0CD6(var2);
        return arg0 + 0x20;
    }
    
    function kill(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x0d3b;
        var var2 = var0;
        return func_0CFF(var2);
    }
    
    function func_0D71(var arg0, var arg1) {
        var var0 = 0x0d7a;
        var var1 = arg1;
        var0 = func_08CA(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_0D80(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = arg3;
        var var0 = temp0 + 0x60;
        var var1 = 0x0d95;
        var var2 = temp0;
        var var3 = arg0;
        func_0D71(var2, var3);
        var1 = 0x0da2;
        var2 = arg3 + 0x20;
        var3 = arg1;
        func_0D71(var2, var3);
        var1 = 0x0daf;
        var2 = arg3 + 0x40;
        var3 = arg2;
        func_0C23(var2, var3);
        return var0;
    }
    
    function func_0DB7(var arg0) returns (var r0) { return !!arg0; }
    
    function func_0DC3(var arg0) {
        var var0 = 0x0dcc;
        var var1 = arg0;
        var0 = func_0DB7(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_0DDA(var arg0, var arg1) returns (var r0) {
        var var0 = memory[arg1:arg1 + 0x20];
        var var1 = 0x0de9;
        var var2 = var0;
        func_0DC3(var2);
        return var0;
    }
    
    function func_0DEF(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x0e13;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_0DDA(var3, var4);
        } else {
            var1 = 0x0e04;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_0E4B(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0e56;
        var var2 = arg0;
        var1 = func_0ACB(var2);
        arg0 = var1;
    
        if (arg0 != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { return arg0 + 0x01; }
    
        var1 = 0x0e88;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_0E94(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x0e9f;
        var var2 = arg1;
        var1 = func_0ACB(var2);
        arg1 = var1;
        var1 = 0x0eaa;
        var2 = arg0;
        var1 = func_0ACB(var2);
        arg0 = var1;
    
        if (arg1 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff - arg0) { return arg1 + arg0; }
    
        var1 = 0x0ede;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_0EEA(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg2;
        var var0 = temp0 + 0x40;
        var var1 = 0x0eff;
        var var2 = temp0;
        var var3 = arg0;
        func_0D71(var2, var3);
        var1 = 0x0f0c;
        var2 = arg2 + 0x20;
        var3 = arg1;
        func_0C23(var2, var3);
        return var0;
    }
}
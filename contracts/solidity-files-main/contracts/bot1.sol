

contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { revert(memory[0x00:0x00]); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x8da5cb5b > var0) {
            if (0x568f47a5 > var0) {
                if (var0 == 0x11b1fad5) {
                    // Dispatch table entry for 0x11b1fad5 (unknown)
                    var var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0140;
                    var var2 = 0x013b;
                    var var3 = msg.data.length - 0x04 + 0x04;
                    var var4 = 0x04;
                    var2, var3 = func_31B3(var3, var4);
                    func_013B(var2, var3);
                    stop();
                } else if (var0 == 0x1a0875a1) {
                    // Dispatch table entry for 0x1a0875a1 (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0169;
                    var2 = 0x0164;
                    var3 = msg.data.length - 0x04 + 0x04;
                    var4 = 0x04;
                    var var5;
                    var var6;
                    var var7;
                    var2, var3, var4, var5, var6, var7 = func_3239(var3, var4);
                    func_0164(var2, var3, var4, var5, var6, var7);
                    stop();
                } else if (var0 == 0x34e8deda) {
                    // Dispatch table entry for 0x34e8deda (unknown)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x0192;
                    var2 = 0x018d;
                    var3 = msg.data.length - 0x04 + 0x04;
                    var4 = 0x04;
                    var2, var3, var4 = func_32C6(var3, var4);
                    func_018D(var2, var3, var4);
                    stop();
                } else if (var0 == 0x4b0bddd2) {
                    // Dispatch table entry for setAdmin(address,bool)
                    var1 = msg.value;
                
                    if (var1) { revert(memory[0x00:0x00]); }
                
                    var1 = 0x01bb;
                    var2 = 0x01b6;
                    var3 = msg.data.length - 0x04 + 0x04;
                    var4 = 0x04;
                    var2, var3 = func_3351(var3, var4);
                    func_01B6(var2, var3);
                    stop();
                } else { revert(memory[0x00:0x00]); }
            } else if (var0 == 0x568f47a5) {
                // Dispatch table entry for 0x568f47a5 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x01e4;
                var2 = 0x01df;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2 = func_33C7(var3, var4);
                var1 = func_01DF(var2);
                var temp0 = var1;
                var1 = 0x01f1;
                var2 = temp0;
                var3 = memory[0x40:0x60];
                var1 = func_3403(var2, var3);
                var temp1 = memory[0x40:0x60];
                return memory[temp1:temp1 + var1 - temp1];
            } else if (var0 == 0x58cc30c0) {
                // Dispatch table entry for 0x58cc30c0 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0221;
                var2 = 0x021c;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2, var3, var4, var5 = func_341E(var3, var4);
                func_021C(var2, var3, var4, var5);
                stop();
            } else if (var0 == 0x63a846f8) {
                // Dispatch table entry for admin(address)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x024a;
                var2 = 0x0245;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2 = func_3485(var3, var4);
                var2 = func_0245(var2);
                var temp2 = var2;
                var2 = 0x0257;
                var3 = temp2;
                var4 = memory[0x40:0x60];
                var2 = func_34C1(var3, var4);
                var temp3 = memory[0x40:0x60];
                return memory[temp3:temp3 + var2 - temp3];
            } else if (var0 == 0x715018a6) {
                // Dispatch table entry for renounceOwnership()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0275;
                renounceOwnership();
                stop();
            } else if (var0 == 0x73811f65) {
                // Dispatch table entry for 0x73811f65 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x029e;
                var2 = 0x0299;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2, var3, var4 = func_34DC(var3, var4);
                var1 = func_0299(var2, var3, var4);
                var temp4 = var1;
                var1 = 0x02ab;
                var2 = temp4;
                var3 = memory[0x40:0x60];
                var1 = func_35A6(var2, var3);
                var temp5 = memory[0x40:0x60];
                return memory[temp5:temp5 + var1 - temp5];
            } else { revert(memory[0x00:0x00]); }
        } else if (0xd4ff73f7 > var0) {
            if (var0 == 0x8da5cb5b) {
                // Dispatch table entry for owner()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x02c9;
                var1 = func_1F79();
                var temp6 = var1;
                var1 = 0x02d6;
                var2 = temp6;
                var3 = memory[0x40:0x60];
                var1 = func_3403(var2, var3);
                var temp7 = memory[0x40:0x60];
                return memory[temp7:temp7 + var1 - temp7];
            } else if (var0 == 0xa04e9b18) {
                // Dispatch table entry for 0xa04e9b18 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0306;
                var2 = 0x0301;
                var4 = 0x04;
                var3 = var4 + (msg.data.length - var4);
                var2 = func_35C1(var3, var4);
                func_0301(var2);
                stop();
            } else if (var0 == 0xa2309ff8) {
                // Dispatch table entry for totalMinted()
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x031d;
                var2 = func_2134();
                var temp8 = var2;
                var2 = 0x032a;
                var3 = temp8;
                var4 = memory[0x40:0x60];
                var2 = func_35FD(var3, var4);
                var temp9 = memory[0x40:0x60];
                return memory[temp9:temp9 + var2 - temp9];
            } else if (var0 == 0xcc8ca202) {
                // Dispatch table entry for 0xcc8ca202 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x035a;
                var2 = 0x0355;
                var3 = msg.data.length - 0x04 + 0x04;
                var4 = 0x04;
                var2, var3, var4, var5 = func_3618(var3, var4);
                func_0355(var2, var3, var4, var5);
                stop();
            } else if (var0 == 0xd0b6b6db) {
                // Dispatch table entry for mintContract()
                var1 = 0x0364;
                mintContract();
                stop();
            } else { revert(memory[0x00:0x00]); }
        } else if (var0 == 0xd4ff73f7) {
            // Dispatch table entry for getPairInfo(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x038d;
            var2 = 0x0388;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2 = func_3485(var3, var4);
            var1 = func_0388(var2);
            var temp10 = var1;
            var1 = 0x039a;
            var2 = temp10;
            var3 = memory[0x40:0x60];
            var1 = func_36E3(var2, var3);
            var temp11 = memory[0x40:0x60];
            return memory[temp11:temp11 + var1 - temp11];
        } else if (var0 == 0xe0a1fcf6) {
            // Dispatch table entry for 0xe0a1fcf6 (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x03ca;
            var2 = 0x03c5;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2 = func_3485(var3, var4);
            var1 = func_03C5(var2);
            var temp12 = var1;
            var1 = 0x03d7;
            var2 = temp12;
            var3 = memory[0x40:0x60];
            var1 = func_3403(var2, var3);
            var temp13 = memory[0x40:0x60];
            return memory[temp13:temp13 + var1 - temp13];
        } else if (var0 == 0xf2fde38b) {
            // Dispatch table entry for transferOwnership(address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0407;
            var2 = 0x0402;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2 = func_3485(var3, var4);
            func_0402(var2);
            stop();
        } else if (var0 == 0xf83a97c5) {
            // Dispatch table entry for 0xf83a97c5 (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0430;
            var2 = 0x042b;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2, var3 = func_31B3(var3, var4);
            func_042B(var2, var3);
            stop();
        } else if (var0 == 0xff8c010a) {
            // Dispatch table entry for 0xff8c010a (unknown)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0459;
            var2 = 0x0454;
            var3 = msg.data.length - 0x04 + 0x04;
            var4 = 0x04;
            var2, var3 = func_36FE(var3, var4);
            func_0454(var2, var3);
            stop();
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_013B(var arg0, var arg1) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x0467;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var1 = 0x095ea7b3;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = (var1 & 0xffffffff) << 0xe0;
            var2 = 0x0529;
            var var3 = msg.sender;
            var var4 = arg1;
            var var5 = temp2 + 0x04;
            var2 = func_37BB(var3, var4, var5);
            var temp3 = memory[0x40:0x60];
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(var0).call.gas(msg.gas)(memory[temp3:temp3 + var2 - temp3]);
            var3 = !temp4;
        
            if (!var3) {
                var temp5 = memory[0x40:0x60];
                var temp6 = returndata.length;
                memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                var0 = 0x056c;
                var2 = temp5;
                var1 = var2 + temp6;
                var0 = func_37F9(var1, var2);
                return;
            } else {
                var temp7 = returndata.length;
                memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x04e5;
            var1 = temp8 + 0x04;
            var0 = func_379B(var1);
            var temp9 = memory[0x40:0x60];
            revert(memory[temp9:temp9 + var0 - temp9]);
        }
    }
    
    function func_0164(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) {
        var var0 = msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xb0a8cfe907ad6c5678679aa7572f772d674b9330;
    
        if (var0) {
            if (!var0) {
            label_0826:
                return;
            } else {
            label_0604:
                var0 = arg1;
                var var1 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                var var2 = 0x70a08231;
                var temp0 = memory[0x40:0x60];
                memory[temp0:temp0 + 0x20] = (var2 & 0xffffffff) << 0xe0;
                var var3 = 0x0641;
                var var4 = arg0;
                var var5 = temp0 + 0x04;
                var3 = func_3403(var4, var5);
                var temp1 = memory[0x40:0x60];
                var temp2;
                temp2, memory[temp1:temp1 + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[temp1:temp1 + var3 - temp1]);
                var4 = !temp2;
            
                if (!var4) {
                    var temp3 = memory[0x40:0x60];
                    var temp4 = returndata.length;
                    memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                    var1 = 0x0682;
                    var3 = temp3;
                    var2 = var3 + temp4;
                    var1 = func_383B(var2, var3);
                
                    if ((arg3 & 0xffffffffffffffffffffffffffff) - var1) {
                        var1 = 0x0823;
                        var2 = 0x01;
                        func_2911(var2);
                        goto label_0826;
                    } else {
                        var1 = msg.gas;
                        var2 = arg0;
                        var3 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var4 = 0xa9059cbb;
                        var temp5 = memory[0x40:0x60];
                        memory[temp5:temp5 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                        var5 = 0x06dd;
                        var var6 = var2;
                        var var7 = arg2;
                        var var8 = temp5 + 0x04;
                        var5 = func_37BB(var6, var7, var8);
                        var temp6 = memory[0x40:0x60];
                        var temp7;
                        temp7, memory[temp6:temp6 + 0x20] = address(var3).call.gas(msg.gas)(memory[temp6:temp6 + var5 - temp6]);
                        var6 = !temp7;
                    
                        if (!var6) {
                            var temp8 = memory[0x40:0x60];
                            var temp9 = returndata.length;
                            memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                            var3 = 0x0720;
                            var5 = temp8;
                            var4 = var5 + temp9;
                            var3 = func_37F9(var4, var5);
                            var3 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var4 = 0x022c0d9f;
                            var5 = arg4;
                            var6 = arg5;
                            var7 = address(this);
                            var8 = 0x00;
                        
                            if (var8 <= 0xffffffffffffffff) {
                                var temp10 = memory[0x40:0x60];
                                var temp11 = var8;
                                var8 = temp10;
                                var var9 = temp11;
                                memory[var8:var8 + 0x20] = var9;
                                memory[0x40:0x60] = var8 + (var9 + 0x1f & ~0x1f) + 0x20;
                            
                                if (!var9) {
                                    var temp12 = memory[0x40:0x60];
                                    memory[temp12:temp12 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                                    var temp13 = var5;
                                    var5 = 0x07ad;
                                    var temp14 = var6;
                                    var6 = temp13;
                                    var temp15 = var7;
                                    var7 = temp14;
                                    var temp16 = var8;
                                    var8 = temp15;
                                    var var10 = temp12 + 0x04;
                                    var9 = temp16;
                                    var5 = func_3927(var6, var7, var8, var9, var10);
                                
                                label_07AD:
                                    var6 = 0x00;
                                    var7 = memory[0x40:0x60];
                                    var8 = var5 - var7;
                                    var9 = var7;
                                    var10 = 0x00;
                                    var var11 = var3;
                                    var var12 = !address(var11).code.length;
                                
                                    if (var12) { revert(memory[0x00:0x00]); }
                                
                                    var temp17;
                                    temp17, memory[var7:var7 + var6] = address(var11).call.gas(msg.gas).value(var10)(memory[var9:var9 + var8]);
                                    var6 = !temp17;
                                
                                    if (!var6) {
                                        var3 = 0x00;
                                        var4 = 0x07ed;
                                        var5 = msg.gas;
                                        var6 = var1;
                                        var4 = func_39A2(var5, var6);
                                        var temp18 = var4;
                                        var3 = temp18;
                                        var4 = 0x0811;
                                        var5 = 0x01;
                                        var6 = 0x0802;
                                        var8 = var3;
                                        var7 = 0xa3db;
                                        var6 = func_3A05(var7, var8);
                                        func_0802(var5, var6);
                                        goto label_0826;
                                    } else {
                                        var temp19 = returndata.length;
                                        memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                                        revert(memory[0x00:0x00 + returndata.length]);
                                    }
                                } else {
                                    var temp20 = var8;
                                    var temp21 = var9;
                                    memory[temp20 + 0x20:temp20 + 0x20 + temp21] = msg.data[msg.data.length:msg.data.length + temp21];
                                    var temp22 = memory[0x40:0x60];
                                    memory[temp22:temp22 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                                    var temp23 = var5;
                                    var5 = 0x07ad;
                                    var temp24 = var6;
                                    var6 = temp23;
                                    var temp25 = var7;
                                    var7 = temp24;
                                    var8 = temp25;
                                    var9 = temp20;
                                    var10 = temp22 + 0x04;
                                    var5 = func_3927(var6, var7, var8, var9, var10);
                                    goto label_07AD;
                                }
                            } else {
                                var9 = 0x075a;
                                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                memory[0x04:0x24] = 0x41;
                                revert(memory[0x00:0x24]);
                            }
                        } else {
                            var temp26 = returndata.length;
                            memory[0x00:0x00 + temp26] = returndata[0x00:0x00 + temp26];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    }
                } else {
                    var temp27 = returndata.length;
                    memory[0x00:0x00 + temp27] = returndata[0x00:0x00 + temp27];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            }
        } else if (msg.sender != 0xffffffffffffffffffffffffffffffffffffffff & 0x9f2a1d1237a40c520d1cf90c7d891c10e54c5c25) { goto label_0826; }
        else { goto label_0604; }
    }
    
    function func_018D(var arg0, var arg1, var arg2) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x083a;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = 0x00;
            var1 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var2 = 0x70a08231;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = (var2 & 0xffffffff) << 0xe0;
            var var3 = 0x08fc;
            var var5 = temp2 + 0x04;
            var var4 = address(this);
            var3 = func_3403(var4, var5);
            var temp3 = memory[0x40:0x60];
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(var1).staticcall.gas(msg.gas)(memory[temp3:temp3 + var3 - temp3]);
            var4 = !temp4;
        
            if (!var4) {
                var temp5 = memory[0x40:0x60];
                var temp6 = returndata.length;
                memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                var1 = 0x093d;
                var2 = temp5 + temp6;
                var3 = temp5;
                var1 = func_383B(var2, var3);
                var0 = var1;
            
                if (var0 > 0x00) {
                    var1 = 0x00;
                    var2 = 0x0991;
                    var3 = arg0;
                    var4 = arg1;
                    var5 = arg2;
                    var var6 = var0;
                    var var7 = address(this);
                    var2 = func_29AB(var3, var4, var5, var6, var7);
                
                label_0991:
                    var1 = var2;
                
                    if (var1) { return; }
                
                    var temp7 = memory[0x40:0x60];
                    memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var3 = temp7 + 0x04;
                    var2 = 0x09ca;
                    var2 = func_3B22(var3);
                    var temp8 = memory[0x40:0x60];
                    revert(memory[temp8:temp8 + var2 - temp8]);
                } else {
                    var temp9 = memory[0x40:0x60];
                    memory[temp9:temp9 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var2 = temp9 + 0x04;
                    var1 = 0x0979;
                    var1 = func_3AB6(var2);
                    var temp10 = memory[0x40:0x60];
                    revert(memory[temp10:temp10 + var1 - temp10]);
                }
            } else {
                var temp11 = returndata.length;
                memory[0x00:0x00 + temp11] = returndata[0x00:0x00 + temp11];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp12 = memory[0x40:0x60];
            memory[temp12:temp12 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp12 + 0x04;
            var0 = 0x08b8;
            var0 = func_379B(var1);
            var temp13 = memory[0x40:0x60];
            revert(memory[temp13:temp13 + var0 - temp13]);
        }
    }
    
    function func_01B6(var arg0, var arg1) {
        var var0 = 0x09e2;
        func_2B4E();
        memory[0x00:0x20] = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
        memory[0x20:0x40] = 0x04;
        var temp0 = keccak256(memory[0x00:0x40]);
        storage[temp0] = !!arg1 | (storage[temp0] & ~0xff);
    }
    
    function func_01DF(var arg0) returns (var r0) {
        r0 = func_0A3D(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_021C(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x0a8b;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = arg1;
            var1 = 0x00;
            var2 = var1;
            var var3 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var4 = 0x70a08231;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = (var4 & 0xffffffff) << 0xe0;
            var var5 = 0x0b53;
            var var7 = temp2 + 0x04;
            var var6 = address(this);
            var5 = func_3403(var6, var7);
            var temp3 = memory[0x40:0x60];
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(var3).staticcall.gas(msg.gas)(memory[temp3:temp3 + var5 - temp3]);
            var6 = !temp4;
        
            if (!var6) {
                var temp5 = memory[0x40:0x60];
                var temp6 = returndata.length;
                memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                var3 = 0x0b94;
                var5 = temp5;
                var4 = var5 + temp6;
                var3 = func_383B(var4, var5);
                var2 = var3;
            
                if (var2 > 0x64) {
                    var1 = arg0;
                    var3 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var4 = 0xa9059cbb;
                    var temp7 = memory[0x40:0x60];
                    memory[temp7:temp7 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                    var5 = 0x0c17;
                    var6 = var1;
                    var var8 = temp7 + 0x04;
                    var7 = var2;
                    var5 = func_37BB(var6, var7, var8);
                    var temp8 = memory[0x40:0x60];
                    var temp9;
                    temp9, memory[temp8:temp8 + 0x20] = address(var3).call.gas(msg.gas)(memory[temp8:temp8 + var5 - temp8]);
                    var6 = !temp9;
                
                    if (!var6) {
                        var temp10 = memory[0x40:0x60];
                        var temp11 = returndata.length;
                        memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                        var3 = 0x0c5a;
                        var5 = temp10;
                        var4 = var5 + temp11;
                        var3 = func_37F9(var4, var5);
                        var2 = var1;
                        var3 = 0x00;
                        var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var5 = 0x0dfe1681;
                        var temp12 = memory[0x40:0x60];
                        memory[temp12:temp12 + 0x20] = (var5 & 0xffffffff) << 0xe0;
                        var6 = temp12 + 0x04;
                        var temp13 = memory[0x40:0x60];
                        var temp14;
                        temp14, memory[temp13:temp13 + 0x20] = address(var4).staticcall.gas(msg.gas)(memory[temp13:temp13 + var6 - temp13]);
                        var7 = !temp14;
                    
                        if (!var7) {
                            var temp15 = memory[0x40:0x60];
                            var temp16 = returndata.length;
                            memory[0x40:0x60] = temp15 + (temp16 + 0x1f & ~0x1f);
                            var4 = 0x0cd2;
                            var5 = temp15 + temp16;
                            var6 = temp15;
                            var4 = func_3CE8(var5, var6);
                        
                            if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var4 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                var5 = 0xd21220a7;
                                var temp17 = memory[0x40:0x60];
                                memory[temp17:temp17 + 0x20] = (var5 & 0xffffffff) << 0xe0;
                                var6 = temp17 + 0x04;
                                var temp18 = memory[0x40:0x60];
                                var temp19;
                                temp19, memory[temp18:temp18 + 0x20] = address(var4).staticcall.gas(msg.gas)(memory[temp18:temp18 + var6 - temp18]);
                                var7 = !temp19;
                            
                                if (!var7) {
                                    var temp20 = memory[0x40:0x60];
                                    var temp21 = returndata.length;
                                    memory[0x40:0x60] = temp20 + (temp21 + 0x1f & ~0x1f);
                                    var4 = 0x0de7;
                                    var6 = temp20;
                                    var5 = var6 + temp21;
                                    var4 = func_3CE8(var5, var6);
                                    var temp22 = var4;
                                    var3 = temp22;
                                    var4 = 0x00;
                                    var5 = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    var6 = 0x70a08231;
                                    var temp23 = memory[0x40:0x60];
                                    memory[temp23:temp23 + 0x20] = (var6 & 0xffffffff) << 0xe0;
                                    var7 = 0x0e25;
                                    var var9 = temp23 + 0x04;
                                    var8 = address(this);
                                    var7 = func_3403(var8, var9);
                                
                                label_0E25:
                                    var temp24 = memory[0x40:0x60];
                                    var temp25;
                                    temp25, memory[temp24:temp24 + 0x20] = address(var5).staticcall.gas(msg.gas)(memory[temp24:temp24 + var7 - temp24]);
                                    var8 = !temp25;
                                
                                    if (!var8) {
                                        var temp26 = memory[0x40:0x60];
                                        var temp27 = returndata.length;
                                        memory[0x40:0x60] = temp26 + (temp27 + 0x1f & ~0x1f);
                                        var5 = 0x0e66;
                                        var7 = temp26;
                                        var6 = var7 + temp27;
                                        var5 = func_383B(var6, var7);
                                        var4 = var5;
                                    
                                        if (tx.gasprice < 0x02540be400) {
                                            var5 = 0x00;
                                            var6 = var5;
                                            var7 = 0x00;
                                            var8 = var7;
                                            var9 = 0x00;
                                            var var10 = var9;
                                            var var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                            var var12 = 0x0902f1ac;
                                            var temp28 = memory[0x40:0x60];
                                            memory[temp28:temp28 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                            var var13 = temp28 + 0x04;
                                            var temp29 = memory[0x40:0x60];
                                            var temp30;
                                            temp30, memory[temp29:temp29 + 0x60] = address(var11).staticcall.gas(msg.gas)(memory[temp29:temp29 + var13 - temp29]);
                                            var var14 = !temp30;
                                        
                                            if (!var14) {
                                                var temp31 = memory[0x40:0x60];
                                                var temp32 = returndata.length;
                                                memory[0x40:0x60] = temp31 + (temp32 + 0x1f & ~0x1f);
                                                var11 = 0x1290;
                                                var13 = temp31;
                                                var12 = var13 + temp32;
                                                var11, var12, var13 = func_3D66(var12, var13);
                                                var10 = var12 & 0xffffffffffffffffffffffffffff;
                                                var9 = var11 & 0xffffffffffffffffffffffffffff;
                                                var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                var12 = 0x0dfe1681;
                                                var temp33 = memory[0x40:0x60];
                                                memory[temp33:temp33 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                var13 = temp33 + 0x04;
                                                var temp34 = memory[0x40:0x60];
                                                var temp35;
                                                temp35, memory[temp34:temp34 + 0x20] = address(var11).staticcall.gas(msg.gas)(memory[temp34:temp34 + var13 - temp34]);
                                                var14 = !temp35;
                                            
                                                if (!var14) {
                                                    var temp36 = memory[0x40:0x60];
                                                    var temp37 = returndata.length;
                                                    memory[0x40:0x60] = temp36 + (temp37 + 0x1f & ~0x1f);
                                                    var11 = 0x1324;
                                                    var13 = temp36;
                                                    var12 = var13 + temp37;
                                                    var11 = func_3CE8(var12, var13);
                                                
                                                    if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var11 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                                        var temp38 = var9;
                                                        var8 = var10;
                                                        var7 = temp38;
                                                        var9 = 0x13f6;
                                                        var10 = var7;
                                                        var11 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var12 = 0x70a08231;
                                                        var temp39 = memory[0x40:0x60];
                                                        memory[temp39:temp39 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                        var13 = 0x13a7;
                                                        var var15 = temp39 + 0x04;
                                                        var14 = var1;
                                                        var13 = func_3403(var14, var15);
                                                        var9 = func_13A7(var10, var11, var12, var13);
                                                    
                                                    label_13F6:
                                                        var temp40 = var9;
                                                        var6 = temp40;
                                                        var9 = 0x1404;
                                                        var10 = var6;
                                                        var11 = var7;
                                                        var12 = var8;
                                                        var13 = arg2;
                                                        var9 = func_2BE2(var10, var11, var12, var13);
                                                        var5 = var9;
                                                        var9 = 0x00;
                                                        var10 = var9;
                                                        var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var12 = 0x0dfe1681;
                                                        var temp41 = memory[0x40:0x60];
                                                        memory[temp41:temp41 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                        var13 = temp41 + 0x04;
                                                        var temp42 = memory[0x40:0x60];
                                                        var temp43;
                                                        temp43, memory[temp42:temp42 + 0x20] = address(var11).staticcall.gas(msg.gas)(memory[temp42:temp42 + var13 - temp42]);
                                                        var14 = !temp43;
                                                    
                                                        if (!var14) {
                                                            var temp44 = memory[0x40:0x60];
                                                            var temp45 = returndata.length;
                                                            memory[0x40:0x60] = temp44 + (temp45 + 0x1f & ~0x1f);
                                                            var11 = 0x1478;
                                                            var13 = temp44;
                                                            var12 = var13 + temp45;
                                                            var11 = func_3CE8(var12, var13);
                                                        
                                                            if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var11 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                                                var10 = var5;
                                                                var9 = 0x00;
                                                                var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                var12 = 0x022c0d9f;
                                                                var13 = var9;
                                                                var14 = var10;
                                                                var15 = address(this);
                                                                var var16 = 0x00;
                                                            
                                                                if (var16 <= 0xffffffffffffffff) {
                                                                label_14F4:
                                                                    var temp46 = memory[0x40:0x60];
                                                                    var temp47 = var16;
                                                                    var16 = temp46;
                                                                    var var17 = temp47;
                                                                    memory[var16:var16 + 0x20] = var17;
                                                                    memory[0x40:0x60] = var16 + (var17 + 0x1f & ~0x1f) + 0x20;
                                                                
                                                                    if (!var17) {
                                                                        var temp48 = memory[0x40:0x60];
                                                                        memory[temp48:temp48 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                                        var temp49 = var13;
                                                                        var13 = 0x1546;
                                                                        var temp50 = var14;
                                                                        var14 = temp49;
                                                                        var temp51 = var15;
                                                                        var15 = temp50;
                                                                        var temp52 = var16;
                                                                        var16 = temp51;
                                                                        var var18 = temp48 + 0x04;
                                                                        var17 = temp52;
                                                                        var13 = func_3927(var14, var15, var16, var17, var18);
                                                                    
                                                                    label_1546:
                                                                        var14 = 0x00;
                                                                        var15 = memory[0x40:0x60];
                                                                        var16 = var13 - var15;
                                                                        var17 = var15;
                                                                        var18 = 0x00;
                                                                        var var19 = var11;
                                                                        var var20 = !address(var19).code.length;
                                                                    
                                                                        if (var20) { revert(memory[0x00:0x00]); }
                                                                    
                                                                        var temp53;
                                                                        temp53, memory[var15:var15 + var14] = address(var19).call.gas(msg.gas).value(var18)(memory[var17:var17 + var16]);
                                                                        var14 = !temp53;
                                                                    
                                                                        if (!var14) {
                                                                            var5 = arg3;
                                                                            var6 = 0x160c;
                                                                            var7 = var4;
                                                                            var8 = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                            var9 = 0x70a08231;
                                                                            var temp54 = memory[0x40:0x60];
                                                                            memory[temp54:temp54 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                                                                            var10 = 0x15bd;
                                                                            var12 = temp54 + 0x04;
                                                                            var11 = address(this);
                                                                            var10 = func_3403(var11, var12);
                                                                            var6 = func_15BD(var7, var8, var9, var10);
                                                                        
                                                                        label_160C:
                                                                        
                                                                            if (var6 >= var5) { return; }
                                                                        
                                                                            var temp55 = memory[0x40:0x60];
                                                                            memory[temp55:temp55 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                                                                            var6 = temp55 + 0x04;
                                                                            var5 = 0x1644;
                                                                            var5 = func_3E05(var6);
                                                                            var temp56 = memory[0x40:0x60];
                                                                            revert(memory[temp56:temp56 + var5 - temp56]);
                                                                        } else {
                                                                            var temp57 = returndata.length;
                                                                            memory[0x00:0x00 + temp57] = returndata[0x00:0x00 + temp57];
                                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                                        }
                                                                    } else {
                                                                        var temp58 = var16;
                                                                        var temp59 = var17;
                                                                        memory[temp58 + 0x20:temp58 + 0x20 + temp59] = msg.data[msg.data.length:msg.data.length + temp59];
                                                                        var temp60 = memory[0x40:0x60];
                                                                        memory[temp60:temp60 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                                        var temp61 = var13;
                                                                        var13 = 0x1546;
                                                                        var temp62 = var14;
                                                                        var14 = temp61;
                                                                        var temp63 = var15;
                                                                        var15 = temp62;
                                                                        var16 = temp63;
                                                                        var18 = temp60 + 0x04;
                                                                        var17 = temp58;
                                                                        var13 = func_3927(var14, var15, var16, var17, var18);
                                                                        goto label_1546;
                                                                    }
                                                                } else {
                                                                label_14EC:
                                                                    var17 = 0x14f3;
                                                                
                                                                label_3868:
                                                                    memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                                    memory[0x04:0x24] = 0x41;
                                                                    revert(memory[0x00:0x24]);
                                                                }
                                                            } else {
                                                                var11 = var5;
                                                                var12 = 0x00;
                                                                var temp64 = var12;
                                                                var10 = temp64;
                                                                var temp65 = var11;
                                                                var9 = temp65;
                                                                var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                var12 = 0x022c0d9f;
                                                                var13 = var9;
                                                                var14 = var10;
                                                                var15 = address(this);
                                                                var16 = 0x00;
                                                            
                                                                if (var16 <= 0xffffffffffffffff) { goto label_14F4; }
                                                                else { goto label_14EC; }
                                                            }
                                                        } else {
                                                            var temp66 = returndata.length;
                                                            memory[0x00:0x00 + temp66] = returndata[0x00:0x00 + temp66];
                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                        }
                                                    } else {
                                                        var11 = var10;
                                                        var12 = var9;
                                                        var8 = var12;
                                                        var7 = var11;
                                                        var9 = 0x13f6;
                                                        var10 = var7;
                                                        var11 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var12 = 0x70a08231;
                                                        var temp67 = memory[0x40:0x60];
                                                        memory[temp67:temp67 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                        var13 = 0x13a7;
                                                        var14 = var1;
                                                        var15 = temp67 + 0x04;
                                                        var13 = func_3403(var14, var15);
                                                        var9 = func_13A7(var10, var11, var12, var13);
                                                        goto label_13F6;
                                                    }
                                                } else {
                                                    var temp68 = returndata.length;
                                                    memory[0x00:0x00 + temp68] = returndata[0x00:0x00 + temp68];
                                                    revert(memory[0x00:0x00 + returndata.length]);
                                                }
                                            } else {
                                                var temp69 = returndata.length;
                                                memory[0x00:0x00 + temp69] = returndata[0x00:0x00 + temp69];
                                                revert(memory[0x00:0x00 + returndata.length]);
                                            }
                                        } else {
                                            var5 = msg.gas;
                                            var6 = 0x00;
                                            var7 = var6;
                                            var8 = 0x00;
                                            var9 = var8;
                                            var10 = 0x00;
                                            var11 = var10;
                                            var12 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                            var13 = 0x0902f1ac;
                                            var temp70 = memory[0x40:0x60];
                                            memory[temp70:temp70 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                            var14 = temp70 + 0x04;
                                            var temp71 = memory[0x40:0x60];
                                            var temp72;
                                            temp72, memory[temp71:temp71 + 0x60] = address(var12).staticcall.gas(msg.gas)(memory[temp71:temp71 + var14 - temp71]);
                                            var15 = !temp72;
                                        
                                            if (!var15) {
                                                var temp73 = memory[0x40:0x60];
                                                var temp74 = returndata.length;
                                                memory[0x40:0x60] = temp73 + (temp74 + 0x1f & ~0x1f);
                                                var12 = 0x0ef1;
                                                var14 = temp73;
                                                var13 = var14 + temp74;
                                                var12, var13, var14 = func_3D66(var13, var14);
                                                var11 = var13 & 0xffffffffffffffffffffffffffff;
                                                var10 = var12 & 0xffffffffffffffffffffffffffff;
                                                var12 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                var13 = 0x0dfe1681;
                                                var temp75 = memory[0x40:0x60];
                                                memory[temp75:temp75 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                var14 = temp75 + 0x04;
                                                var temp76 = memory[0x40:0x60];
                                                var temp77;
                                                temp77, memory[temp76:temp76 + 0x20] = address(var12).staticcall.gas(msg.gas)(memory[temp76:temp76 + var14 - temp76]);
                                                var15 = !temp77;
                                            
                                                if (!var15) {
                                                    var temp78 = memory[0x40:0x60];
                                                    var temp79 = returndata.length;
                                                    memory[0x40:0x60] = temp78 + (temp79 + 0x1f & ~0x1f);
                                                    var12 = 0x0f85;
                                                    var13 = temp78 + temp79;
                                                    var14 = temp78;
                                                    var12 = func_3CE8(var13, var14);
                                                
                                                    if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var12 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                                        var temp80 = var10;
                                                        var9 = var11;
                                                        var8 = temp80;
                                                        var10 = 0x1057;
                                                        var11 = var8;
                                                        var12 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var13 = 0x70a08231;
                                                        var temp81 = memory[0x40:0x60];
                                                        memory[temp81:temp81 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                        var14 = 0x1008;
                                                        var15 = var1;
                                                        var16 = temp81 + 0x04;
                                                        var14 = func_3403(var15, var16);
                                                        var10 = func_1008(var11, var12, var13, var14);
                                                    
                                                    label_1057:
                                                        var temp82 = var10;
                                                        var7 = temp82;
                                                        var10 = 0x1065;
                                                        var11 = var7;
                                                        var12 = var8;
                                                        var13 = var9;
                                                        var14 = arg2;
                                                        var10 = func_2BE2(var11, var12, var13, var14);
                                                        var6 = var10;
                                                        var10 = 0x00;
                                                        var11 = var10;
                                                        var12 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var13 = 0x0dfe1681;
                                                        var temp83 = memory[0x40:0x60];
                                                        memory[temp83:temp83 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                        var14 = temp83 + 0x04;
                                                        var temp84 = memory[0x40:0x60];
                                                        var temp85;
                                                        temp85, memory[temp84:temp84 + 0x20] = address(var12).staticcall.gas(msg.gas)(memory[temp84:temp84 + var14 - temp84]);
                                                        var15 = !temp85;
                                                    
                                                        if (!var15) {
                                                            var temp86 = memory[0x40:0x60];
                                                            var temp87 = returndata.length;
                                                            memory[0x40:0x60] = temp86 + (temp87 + 0x1f & ~0x1f);
                                                            var12 = 0x10d9;
                                                            var14 = temp86;
                                                            var13 = var14 + temp87;
                                                            var12 = func_3CE8(var13, var14);
                                                        
                                                            if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var12 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                                                var11 = var6;
                                                                var10 = 0x00;
                                                                var12 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                var13 = 0x022c0d9f;
                                                                var14 = var10;
                                                                var15 = var11;
                                                                var16 = address(this);
                                                                var17 = 0x00;
                                                            
                                                                if (var17 <= 0xffffffffffffffff) {
                                                                label_1155:
                                                                    var temp88 = memory[0x40:0x60];
                                                                    var temp89 = var17;
                                                                    var17 = temp88;
                                                                    var18 = temp89;
                                                                    memory[var17:var17 + 0x20] = var18;
                                                                    memory[0x40:0x60] = var17 + (var18 + 0x1f & ~0x1f) + 0x20;
                                                                
                                                                    if (!var18) {
                                                                        var temp90 = memory[0x40:0x60];
                                                                        memory[temp90:temp90 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                                        var temp91 = var14;
                                                                        var14 = 0x11a7;
                                                                        var temp92 = var15;
                                                                        var15 = temp91;
                                                                        var temp93 = var16;
                                                                        var16 = temp92;
                                                                        var temp94 = var17;
                                                                        var17 = temp93;
                                                                        var19 = temp90 + 0x04;
                                                                        var18 = temp94;
                                                                        var14 = func_3927(var15, var16, var17, var18, var19);
                                                                    
                                                                    label_11A7:
                                                                        var15 = 0x00;
                                                                        var16 = memory[0x40:0x60];
                                                                        var17 = var14 - var16;
                                                                        var18 = var16;
                                                                        var19 = 0x00;
                                                                        var20 = var12;
                                                                        var var21 = !address(var20).code.length;
                                                                    
                                                                        if (var21) { revert(memory[0x00:0x00]); }
                                                                    
                                                                        var temp95;
                                                                        temp95, memory[var16:var16 + var15] = address(var20).call.gas(msg.gas).value(var19)(memory[var18:var18 + var17]);
                                                                        var15 = !temp95;
                                                                    
                                                                        if (!var15) {
                                                                            var12 = 0x00;
                                                                            var13 = 0x11e7;
                                                                            var14 = msg.gas;
                                                                            var15 = var5;
                                                                            var13 = func_39A2(var14, var15);
                                                                            var temp96 = var13;
                                                                            var12 = temp96;
                                                                            var13 = 0x120b;
                                                                            var14 = 0x01;
                                                                            var15 = 0x11fc;
                                                                            var17 = var12;
                                                                            var16 = 0xa3db;
                                                                            var15 = func_3A05(var16, var17);
                                                                            func_11FC(var14, var15);
                                                                            var5 = arg3;
                                                                            var6 = 0x160c;
                                                                            var7 = var4;
                                                                            var8 = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                            var9 = 0x70a08231;
                                                                            var temp97 = memory[0x40:0x60];
                                                                            memory[temp97:temp97 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                                                                            var10 = 0x15bd;
                                                                            var12 = temp97 + 0x04;
                                                                            var11 = address(this);
                                                                            var10 = func_3403(var11, var12);
                                                                            var6 = func_15BD(var7, var8, var9, var10);
                                                                            goto label_160C;
                                                                        } else {
                                                                            var temp98 = returndata.length;
                                                                            memory[0x00:0x00 + temp98] = returndata[0x00:0x00 + temp98];
                                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                                        }
                                                                    } else {
                                                                        var temp99 = var17;
                                                                        var temp100 = var18;
                                                                        memory[temp99 + 0x20:temp99 + 0x20 + temp100] = msg.data[msg.data.length:msg.data.length + temp100];
                                                                        var temp101 = memory[0x40:0x60];
                                                                        memory[temp101:temp101 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                                        var temp102 = var14;
                                                                        var14 = 0x11a7;
                                                                        var temp103 = var15;
                                                                        var15 = temp102;
                                                                        var temp104 = var16;
                                                                        var16 = temp103;
                                                                        var17 = temp104;
                                                                        var18 = temp99;
                                                                        var19 = temp101 + 0x04;
                                                                        var14 = func_3927(var15, var16, var17, var18, var19);
                                                                        goto label_11A7;
                                                                    }
                                                                } else {
                                                                label_114D:
                                                                    var18 = 0x1154;
                                                                    goto label_3868;
                                                                }
                                                            } else {
                                                                var12 = var6;
                                                                var13 = 0x00;
                                                                var temp105 = var13;
                                                                var11 = temp105;
                                                                var temp106 = var12;
                                                                var10 = temp106;
                                                                var12 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                var13 = 0x022c0d9f;
                                                                var14 = var10;
                                                                var15 = var11;
                                                                var16 = address(this);
                                                                var17 = 0x00;
                                                            
                                                                if (var17 <= 0xffffffffffffffff) { goto label_1155; }
                                                                else { goto label_114D; }
                                                            }
                                                        } else {
                                                            var temp107 = returndata.length;
                                                            memory[0x00:0x00 + temp107] = returndata[0x00:0x00 + temp107];
                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                        }
                                                    } else {
                                                        var12 = var11;
                                                        var13 = var10;
                                                        var9 = var13;
                                                        var8 = var12;
                                                        var10 = 0x1057;
                                                        var11 = var8;
                                                        var12 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var13 = 0x70a08231;
                                                        var temp108 = memory[0x40:0x60];
                                                        memory[temp108:temp108 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                        var14 = 0x1008;
                                                        var16 = temp108 + 0x04;
                                                        var15 = var1;
                                                        var14 = func_3403(var15, var16);
                                                        var10 = func_1008(var11, var12, var13, var14);
                                                        goto label_1057;
                                                    }
                                                } else {
                                                    var temp109 = returndata.length;
                                                    memory[0x00:0x00 + temp109] = returndata[0x00:0x00 + temp109];
                                                    revert(memory[0x00:0x00 + returndata.length]);
                                                }
                                            } else {
                                                var temp110 = returndata.length;
                                                memory[0x00:0x00 + temp110] = returndata[0x00:0x00 + temp110];
                                                revert(memory[0x00:0x00 + returndata.length]);
                                            }
                                        }
                                    } else {
                                        var temp111 = returndata.length;
                                        memory[0x00:0x00 + temp111] = returndata[0x00:0x00 + temp111];
                                        revert(memory[0x00:0x00 + returndata.length]);
                                    }
                                } else {
                                    var temp112 = returndata.length;
                                    memory[0x00:0x00 + temp112] = returndata[0x00:0x00 + temp112];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                var5 = 0x0dfe1681;
                                var temp113 = memory[0x40:0x60];
                                memory[temp113:temp113 + 0x20] = (var5 & 0xffffffff) << 0xe0;
                                var6 = temp113 + 0x04;
                                var temp114 = memory[0x40:0x60];
                                var temp115;
                                temp115, memory[temp114:temp114 + 0x20] = address(var4).staticcall.gas(msg.gas)(memory[temp114:temp114 + var6 - temp114]);
                                var7 = !temp115;
                            
                                if (!var7) {
                                    var temp116 = memory[0x40:0x60];
                                    var temp117 = returndata.length;
                                    memory[0x40:0x60] = temp116 + (temp117 + 0x1f & ~0x1f);
                                    var4 = 0x0d73;
                                    var6 = temp116;
                                    var5 = var6 + temp117;
                                    var4 = func_3CE8(var5, var6);
                                    var temp118 = var4;
                                    var3 = temp118;
                                    var4 = 0x00;
                                    var5 = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    var6 = 0x70a08231;
                                    var temp119 = memory[0x40:0x60];
                                    memory[temp119:temp119 + 0x20] = (var6 & 0xffffffff) << 0xe0;
                                    var7 = 0x0e25;
                                    var9 = temp119 + 0x04;
                                    var8 = address(this);
                                    var7 = func_3403(var8, var9);
                                    goto label_0E25;
                                } else {
                                    var temp120 = returndata.length;
                                    memory[0x00:0x00 + temp120] = returndata[0x00:0x00 + temp120];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            }
                        } else {
                            var temp121 = returndata.length;
                            memory[0x00:0x00 + temp121] = returndata[0x00:0x00 + temp121];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else {
                        var temp122 = returndata.length;
                        memory[0x00:0x00 + temp122] = returndata[0x00:0x00 + temp122];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var temp123 = memory[0x40:0x60];
                    memory[temp123:temp123 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var4 = temp123 + 0x04;
                    var3 = 0x0bd0;
                    var3 = func_3CB3(var4);
                    var temp124 = memory[0x40:0x60];
                    revert(memory[temp124:temp124 + var3 - temp124]);
                }
            } else {
                var temp125 = returndata.length;
                memory[0x00:0x00 + temp125] = returndata[0x00:0x00 + temp125];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp126 = memory[0x40:0x60];
            memory[temp126:temp126 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp126 + 0x04;
            var0 = 0x0b09;
            var0 = func_379B(var1);
            var temp127 = memory[0x40:0x60];
            revert(memory[temp127:temp127 + var0 - temp127]);
        }
    }
    
    function func_0245(var arg0) returns (var arg0) {
        memory[0x20:0x40] = 0x04;
        memory[0x00:0x20] = arg0;
        return storage[keccak256(memory[0x00:0x40])] & 0xff;
    }
    
    function func_0299(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x1694;
        var0 = func_3097();
        var var1 = 0x04;
        var var2 = 0x00;
        var var3 = 0x16a0;
        var3 = func_2909();
        var temp0 = var2;
        memory[temp0:temp0 + 0x20] = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var1;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var1 = arg1;
            var2 = 0x00;
            var3 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var4 = 0x0dfe1681;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = (var4 & 0xffffffff) << 0xe0;
            var var5 = temp2 + 0x04;
            var temp3 = memory[0x40:0x60];
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(var3).staticcall.gas(msg.gas)(memory[temp3:temp3 + var5 - temp3]);
            var var6 = !temp4;
        
            if (!var6) {
                var temp5 = memory[0x40:0x60];
                var temp6 = returndata.length;
                memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                var3 = 0x179d;
                var5 = temp5;
                var4 = var5 + temp6;
                var3 = func_3CE8(var4, var5);
            
                if (arg2 & 0xffffffffffffffffffffffffffffffffffffffff == var3 & 0xffffffffffffffffffffffffffffffffffffffff) {
                    var3 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var4 = 0xd21220a7;
                    var temp7 = memory[0x40:0x60];
                    memory[temp7:temp7 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                    var5 = temp7 + 0x04;
                    var temp8 = memory[0x40:0x60];
                    var temp9;
                    temp9, memory[temp8:temp8 + 0x20] = address(var3).staticcall.gas(msg.gas)(memory[temp8:temp8 + var5 - temp8]);
                    var6 = !temp9;
                
                    if (!var6) {
                        var temp10 = memory[0x40:0x60];
                        var temp11 = returndata.length;
                        memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                        var3 = 0x18b2;
                        var5 = temp10;
                        var4 = var5 + temp11;
                        var3 = func_3CE8(var4, var5);
                        var temp12 = var3;
                        var2 = temp12;
                        var3 = 0x00;
                        var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var5 = 0x70a08231;
                        var temp13 = memory[0x40:0x60];
                        memory[temp13:temp13 + 0x20] = (var5 & 0xffffffff) << 0xe0;
                        var6 = 0x18f0;
                        var var8 = temp13 + 0x04;
                        var var7 = address(this);
                        var6 = func_3403(var7, var8);
                    
                    label_18F0:
                        var temp14 = memory[0x40:0x60];
                        var temp15;
                        temp15, memory[temp14:temp14 + 0x20] = address(var4).staticcall.gas(msg.gas)(memory[temp14:temp14 + var6 - temp14]);
                        var7 = !temp15;
                    
                        if (!var7) {
                            var temp16 = memory[0x40:0x60];
                            var temp17 = returndata.length;
                            memory[0x40:0x60] = temp16 + (temp17 + 0x1f & ~0x1f);
                            var4 = 0x1931;
                            var5 = temp16 + temp17;
                            var6 = temp16;
                            var4 = func_383B(var5, var6);
                            var3 = var4;
                            var4 = 0x00;
                            var5 = var4;
                            var6 = 0x00;
                            var7 = var6;
                            var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var var9 = 0x0902f1ac;
                            var temp18 = memory[0x40:0x60];
                            memory[temp18:temp18 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                            var var10 = temp18 + 0x04;
                            var temp19 = memory[0x40:0x60];
                            var temp20;
                            temp20, memory[temp19:temp19 + 0x60] = address(var8).staticcall.gas(msg.gas)(memory[temp19:temp19 + var10 - temp19]);
                            var var11 = !temp20;
                        
                            if (!var11) {
                                var temp21 = memory[0x40:0x60];
                                var temp22 = returndata.length;
                                memory[0x40:0x60] = temp21 + (temp22 + 0x1f & ~0x1f);
                                var8 = 0x19a8;
                                var10 = temp21;
                                var9 = var10 + temp22;
                                var8, var9, var10 = func_3D66(var9, var10);
                                var7 = var9 & 0xffffffffffffffffffffffffffff;
                                var6 = var8 & 0xffffffffffffffffffffffffffff;
                                var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                                var9 = 0x0dfe1681;
                                var temp23 = memory[0x40:0x60];
                                memory[temp23:temp23 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                                var10 = temp23 + 0x04;
                                var temp24 = memory[0x40:0x60];
                                var temp25;
                                temp25, memory[temp24:temp24 + 0x20] = address(var8).staticcall.gas(msg.gas)(memory[temp24:temp24 + var10 - temp24]);
                                var11 = !temp25;
                            
                                if (!var11) {
                                    var temp26 = memory[0x40:0x60];
                                    var temp27 = returndata.length;
                                    memory[0x40:0x60] = temp26 + (temp27 + 0x1f & ~0x1f);
                                    var8 = 0x1a3c;
                                    var9 = temp26 + temp27;
                                    var10 = temp26;
                                    var8 = func_3CE8(var9, var10);
                                
                                    if (arg2 & 0xffffffffffffffffffffffffffffffffffffffff == var8 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                        var5 = var7;
                                        var4 = var6;
                                        var6 = msg.gas;
                                        var7 = arg2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                        var8 = 0xa9059cbb;
                                        var temp28 = memory[0x40:0x60];
                                        memory[temp28:temp28 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                                        var9 = 0x1ac2;
                                        var10 = arg1;
                                        var11 = arg0;
                                        var var12 = temp28 + 0x04;
                                        var9 = func_37BB(var10, var11, var12);
                                    
                                    label_1AC2:
                                        var temp29 = memory[0x40:0x60];
                                        var temp30;
                                        temp30, memory[temp29:temp29 + 0x20] = address(var7).call.gas(msg.gas)(memory[temp29:temp29 + var9 - temp29]);
                                        var10 = !temp30;
                                    
                                        if (!var10) {
                                            var temp31 = memory[0x40:0x60];
                                            var temp32 = returndata.length;
                                            memory[0x40:0x60] = temp31 + (temp32 + 0x1f & ~0x1f);
                                            var7 = 0x1b05;
                                            var9 = temp31;
                                            var8 = var9 + temp32;
                                            var7 = func_37F9(var8, var9);
                                            var7 = 0x00;
                                            var8 = 0x1b14;
                                            var10 = var6;
                                            var9 = msg.gas;
                                            var8 = func_39A2(var9, var10);
                                            var7 = var8;
                                            var8 = 0x2710;
                                        
                                            if (var8 <= 0x251c) {
                                            label_1BC7:
                                                var8 = 0x00;
                                                var9 = 0x1bda;
                                                var10 = arg0;
                                                var11 = var4;
                                                var12 = var5;
                                                var var13 = memory[var0:var0 + 0x20];
                                                var9 = func_2BE2(var10, var11, var12, var13);
                                                var8 = var9;
                                                var9 = 0x00;
                                                var10 = var3;
                                                var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                var12 = 0x70a08231;
                                                var temp33 = memory[0x40:0x60];
                                                memory[temp33:temp33 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                var13 = 0x1c18;
                                                var var15 = temp33 + 0x04;
                                                var var14 = address(this);
                                                var13 = func_3403(var14, var15);
                                                var temp34 = memory[0x40:0x60];
                                                var temp35;
                                                temp35, memory[temp34:temp34 + 0x20] = address(var11).staticcall.gas(msg.gas)(memory[temp34:temp34 + var13 - temp34]);
                                                var14 = !temp35;
                                            
                                                if (!var14) {
                                                    var temp36 = memory[0x40:0x60];
                                                    var temp37 = returndata.length;
                                                    memory[0x40:0x60] = temp36 + (temp37 + 0x1f & ~0x1f);
                                                    var11 = 0x1c59;
                                                    var13 = temp36;
                                                    var12 = var13 + temp37;
                                                    var11 = func_383B(var12, var13);
                                                    var temp38 = var10;
                                                    var10 = 0x1c63;
                                                    var temp39 = var11;
                                                    var11 = temp38;
                                                    var12 = temp39;
                                                    var10 = func_39A2(var11, var12);
                                                    var temp40 = var10;
                                                    var9 = temp40;
                                                    var10 = var8;
                                                    var11 = 0x0f4240;
                                                    var12 = 0x1c76;
                                                    var13 = var9;
                                                    var14 = var10;
                                                    var12 = func_39A2(var13, var14);
                                                    var temp41 = var11;
                                                    var11 = 0x1c80;
                                                    var temp42 = var12;
                                                    var12 = temp41;
                                                    var13 = temp42;
                                                    var11 = func_3E25(var12, var13);
                                                    var temp43 = var10;
                                                    var10 = 0x1c8a;
                                                    var temp44 = var11;
                                                    var11 = temp43;
                                                    var12 = temp44;
                                                    var10 = func_3A05(var11, var12);
                                                    memory[var0 + 0x20:var0 + 0x20 + 0x20] = var10;
                                                    var8 = var9;
                                                    var6 = msg.gas;
                                                    var10 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                    var11 = 0xa9059cbb;
                                                    var temp45 = memory[0x40:0x60];
                                                    memory[temp45:temp45 + 0x20] = (var11 & 0xffffffff) << 0xe0;
                                                    var12 = 0x1cd4;
                                                    var13 = arg1;
                                                    var14 = var8;
                                                    var15 = temp45 + 0x04;
                                                    var12 = func_37BB(var13, var14, var15);
                                                    var temp46 = memory[0x40:0x60];
                                                    var temp47;
                                                    temp47, memory[temp46:temp46 + 0x20] = address(var10).call.gas(msg.gas)(memory[temp46:temp46 + var12 - temp46]);
                                                    var13 = !temp47;
                                                
                                                    if (!var13) {
                                                        var temp48 = memory[0x40:0x60];
                                                        var temp49 = returndata.length;
                                                        memory[0x40:0x60] = temp48 + (temp49 + 0x1f & ~0x1f);
                                                        var10 = 0x1d17;
                                                        var12 = temp48;
                                                        var11 = var12 + temp49;
                                                        var10 = func_37F9(var11, var12);
                                                        var10 = 0x00;
                                                        var11 = var10;
                                                        var12 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                        var13 = 0x0902f1ac;
                                                        var temp50 = memory[0x40:0x60];
                                                        memory[temp50:temp50 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                        var14 = temp50 + 0x04;
                                                        var temp51 = memory[0x40:0x60];
                                                        var temp52;
                                                        temp52, memory[temp51:temp51 + 0x60] = address(var12).staticcall.gas(msg.gas)(memory[temp51:temp51 + var14 - temp51]);
                                                        var15 = !temp52;
                                                    
                                                        if (!var15) {
                                                            var temp53 = memory[0x40:0x60];
                                                            var temp54 = returndata.length;
                                                            memory[0x40:0x60] = temp53 + (temp54 + 0x1f & ~0x1f);
                                                            var12 = 0x1d8a;
                                                            var14 = temp53;
                                                            var13 = var14 + temp54;
                                                            var12, var13, var14 = func_3D66(var13, var14);
                                                            var11 = var13 & 0xffffffffffffffffffffffffffff;
                                                            var10 = var12 & 0xffffffffffffffffffffffffffff;
                                                            var12 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                            var13 = 0x0dfe1681;
                                                            var temp55 = memory[0x40:0x60];
                                                            memory[temp55:temp55 + 0x20] = (var13 & 0xffffffff) << 0xe0;
                                                            var14 = temp55 + 0x04;
                                                            var temp56 = memory[0x40:0x60];
                                                            var temp57;
                                                            temp57, memory[temp56:temp56 + 0x20] = address(var12).staticcall.gas(msg.gas)(memory[temp56:temp56 + var14 - temp56]);
                                                            var15 = !temp57;
                                                        
                                                            if (!var15) {
                                                                var temp58 = memory[0x40:0x60];
                                                                var temp59 = returndata.length;
                                                                memory[0x40:0x60] = temp58 + (temp59 + 0x1f & ~0x1f);
                                                                var12 = 0x1e1e;
                                                                var13 = temp58 + temp59;
                                                                var14 = temp58;
                                                                var12 = func_3CE8(var13, var14);
                                                            
                                                                if (arg2 & 0xffffffffffffffffffffffffffffffffffffffff == var12 & 0xffffffffffffffffffffffffffffffffffffffff) {
                                                                    var5 = var10;
                                                                    var4 = var11;
                                                                    var10 = var4;
                                                                    var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                    var12 = 0x70a08231;
                                                                    var temp60 = memory[0x40:0x60];
                                                                    memory[temp60:temp60 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                                    var13 = 0x1e9e;
                                                                    var14 = arg1;
                                                                    var15 = temp60 + 0x04;
                                                                    var13 = func_3403(var14, var15);
                                                                
                                                                label_1E9E:
                                                                    var temp61 = memory[0x40:0x60];
                                                                    var temp62;
                                                                    temp62, memory[temp61:temp61 + 0x20] = address(var11).staticcall.gas(msg.gas)(memory[temp61:temp61 + var13 - temp61]);
                                                                    var14 = !temp62;
                                                                
                                                                    if (!var14) {
                                                                        var temp63 = memory[0x40:0x60];
                                                                        var temp64 = returndata.length;
                                                                        memory[0x40:0x60] = temp63 + (temp64 + 0x1f & ~0x1f);
                                                                        var11 = 0x1edf;
                                                                        var13 = temp63;
                                                                        var12 = var13 + temp64;
                                                                        var11 = func_383B(var12, var13);
                                                                        var temp65 = var10;
                                                                        var10 = 0x1ee9;
                                                                        var temp66 = var11;
                                                                        var11 = temp65;
                                                                        var12 = temp66;
                                                                        var10 = func_39A2(var11, var12);
                                                                        var9 = var10;
                                                                        var10 = 0x1efd;
                                                                        var11 = arg1;
                                                                        var12 = var2;
                                                                        var13 = memory[var0:var0 + 0x20];
                                                                        var14 = 0x00;
                                                                        var15 = address(this);
                                                                        var10 = func_29AB(var11, var12, var13, var14, var15);
                                                                        var10 = 0x1f0f;
                                                                        var12 = 0x10;
                                                                        var11 = msg.data.length;
                                                                        var10 = func_3E25(var11, var12);
                                                                        var11 = msg.gas;
                                                                        var12 = 0x1f1e;
                                                                        var13 = var6;
                                                                        var14 = 0x5208;
                                                                        var12 = func_3A36(var13, var14);
                                                                        var temp67 = var11;
                                                                        var11 = 0x1f28;
                                                                        var temp68 = var12;
                                                                        var12 = temp67;
                                                                        var13 = temp68;
                                                                        var11 = func_39A2(var12, var13);
                                                                        var temp69 = var10;
                                                                        var10 = 0x1f32;
                                                                        var temp70 = var11;
                                                                        var11 = temp69;
                                                                        var12 = temp70;
                                                                        var10 = func_3A36(var11, var12);
                                                                        memory[var0 + 0x80:var0 + 0x80 + 0x20] = var10;
                                                                        var10 = var8;
                                                                        var11 = 0x0f4240;
                                                                        var12 = 0x1f4c;
                                                                        var14 = var10;
                                                                        var13 = var9;
                                                                        var12 = func_39A2(var13, var14);
                                                                        var temp71 = var11;
                                                                        var11 = 0x1f56;
                                                                        var temp72 = var12;
                                                                        var12 = temp71;
                                                                        var13 = temp72;
                                                                        var11 = func_3E25(var12, var13);
                                                                        var temp73 = var10;
                                                                        var10 = 0x1f60;
                                                                        var temp74 = var11;
                                                                        var11 = temp73;
                                                                        var12 = temp74;
                                                                        var10 = func_3A05(var11, var12);
                                                                        memory[var0 + 0x40:var0 + 0x40 + 0x20] = var10;
                                                                        return var0;
                                                                    } else {
                                                                        var temp75 = returndata.length;
                                                                        memory[0x00:0x00 + temp75] = returndata[0x00:0x00 + temp75];
                                                                        revert(memory[0x00:0x00 + returndata.length]);
                                                                    }
                                                                } else {
                                                                    var12 = var10;
                                                                    var13 = var11;
                                                                    var5 = var13;
                                                                    var4 = var12;
                                                                    var10 = var4;
                                                                    var11 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                                                    var12 = 0x70a08231;
                                                                    var temp76 = memory[0x40:0x60];
                                                                    memory[temp76:temp76 + 0x20] = (var12 & 0xffffffff) << 0xe0;
                                                                    var13 = 0x1e9e;
                                                                    var15 = temp76 + 0x04;
                                                                    var14 = arg1;
                                                                    var13 = func_3403(var14, var15);
                                                                    goto label_1E9E;
                                                                }
                                                            } else {
                                                                var temp77 = returndata.length;
                                                                memory[0x00:0x00 + temp77] = returndata[0x00:0x00 + temp77];
                                                                revert(memory[0x00:0x00 + returndata.length]);
                                                            }
                                                        } else {
                                                            var temp78 = returndata.length;
                                                            memory[0x00:0x00 + temp78] = returndata[0x00:0x00 + temp78];
                                                            revert(memory[0x00:0x00 + returndata.length]);
                                                        }
                                                    } else {
                                                        var temp79 = returndata.length;
                                                        memory[0x00:0x00 + temp79] = returndata[0x00:0x00 + temp79];
                                                        revert(memory[0x00:0x00 + returndata.length]);
                                                    }
                                                } else {
                                                    var temp80 = returndata.length;
                                                    memory[0x00:0x00 + temp80] = returndata[0x00:0x00 + temp80];
                                                    revert(memory[0x00:0x00 + returndata.length]);
                                                }
                                            } else {
                                            label_1B29:
                                                var6 = msg.gas;
                                                var9 = 0x00;
                                                var10 = 0x1b47;
                                                var11 = arg1;
                                                var12 = arg2;
                                                var13 = 0x1b3f;
                                                var15 = var8;
                                                var14 = 0x64;
                                                var13 = func_3E25(var14, var15);
                                                var10 = func_1B3F(var11, var12, var13);
                                            
                                            label_1B47:
                                                var9 = var10;
                                            
                                                if (!var9) {
                                                    var9 = var8;
                                                    var11 = var9;
                                                    var10 = 0x1bbf;
                                                    var10 = func_3E67(var11);
                                                    var8 = var10;
                                                
                                                    if (var8 <= 0x251c) { goto label_1BC7; }
                                                    else { goto label_1B29; }
                                                } else {
                                                    var10 = var7;
                                                    var11 = 0x1b61;
                                                    var12 = msg.data.length;
                                                    var13 = 0x10;
                                                    var11 = func_3E25(var12, var13);
                                                    var12 = msg.gas;
                                                    var13 = 0x1b70;
                                                    var14 = var6;
                                                    var15 = 0x5208;
                                                    var13 = func_3A36(var14, var15);
                                                    var temp81 = var12;
                                                    var12 = 0x1b7a;
                                                    var temp82 = var13;
                                                    var13 = temp81;
                                                    var14 = temp82;
                                                    var12 = func_39A2(var13, var14);
                                                    var temp83 = var11;
                                                    var11 = 0x1b84;
                                                    var temp84 = var12;
                                                    var12 = temp83;
                                                    var13 = temp84;
                                                    var11 = func_3A36(var12, var13);
                                                    var temp85 = var10;
                                                    var10 = 0x1b8e;
                                                    var temp86 = var11;
                                                    var11 = temp85;
                                                    var12 = temp86;
                                                    var10 = func_3A36(var11, var12);
                                                    memory[var0 + 0x60:var0 + 0x60 + 0x20] = var10;
                                                    var10 = 0x1ba4;
                                                    var11 = 0x64;
                                                    var12 = var8;
                                                    var10 = func_3E25(var11, var12);
                                                    memory[var0:var0 + 0x20] = var10;
                                                    goto label_1BC7;
                                                }
                                            }
                                        } else {
                                            var temp87 = returndata.length;
                                            memory[0x00:0x00 + temp87] = returndata[0x00:0x00 + temp87];
                                            revert(memory[0x00:0x00 + returndata.length]);
                                        }
                                    } else {
                                        var8 = var7;
                                        var9 = var6;
                                        var5 = var9;
                                        var4 = var8;
                                        var6 = msg.gas;
                                        var7 = arg2 & 0xffffffffffffffffffffffffffffffffffffffff;
                                        var8 = 0xa9059cbb;
                                        var temp88 = memory[0x40:0x60];
                                        memory[temp88:temp88 + 0x20] = (var8 & 0xffffffff) << 0xe0;
                                        var9 = 0x1ac2;
                                        var10 = arg1;
                                        var11 = arg0;
                                        var12 = temp88 + 0x04;
                                        var9 = func_37BB(var10, var11, var12);
                                        goto label_1AC2;
                                    }
                                } else {
                                    var temp89 = returndata.length;
                                    memory[0x00:0x00 + temp89] = returndata[0x00:0x00 + temp89];
                                    revert(memory[0x00:0x00 + returndata.length]);
                                }
                            } else {
                                var temp90 = returndata.length;
                                memory[0x00:0x00 + temp90] = returndata[0x00:0x00 + temp90];
                                revert(memory[0x00:0x00 + returndata.length]);
                            }
                        } else {
                            var temp91 = returndata.length;
                            memory[0x00:0x00 + temp91] = returndata[0x00:0x00 + temp91];
                            revert(memory[0x00:0x00 + returndata.length]);
                        }
                    } else {
                        var temp92 = returndata.length;
                        memory[0x00:0x00 + temp92] = returndata[0x00:0x00 + temp92];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var3 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var4 = 0x0dfe1681;
                    var temp93 = memory[0x40:0x60];
                    memory[temp93:temp93 + 0x20] = (var4 & 0xffffffff) << 0xe0;
                    var5 = temp93 + 0x04;
                    var temp94 = memory[0x40:0x60];
                    var temp95;
                    temp95, memory[temp94:temp94 + 0x20] = address(var3).staticcall.gas(msg.gas)(memory[temp94:temp94 + var5 - temp94]);
                    var6 = !temp95;
                
                    if (!var6) {
                        var temp96 = memory[0x40:0x60];
                        var temp97 = returndata.length;
                        memory[0x40:0x60] = temp96 + (temp97 + 0x1f & ~0x1f);
                        var3 = 0x183e;
                        var5 = temp96;
                        var4 = var5 + temp97;
                        var3 = func_3CE8(var4, var5);
                        var temp98 = var3;
                        var2 = temp98;
                        var3 = 0x00;
                        var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var5 = 0x70a08231;
                        var temp99 = memory[0x40:0x60];
                        memory[temp99:temp99 + 0x20] = (var5 & 0xffffffff) << 0xe0;
                        var6 = 0x18f0;
                        var8 = temp99 + 0x04;
                        var7 = address(this);
                        var6 = func_3403(var7, var8);
                        goto label_18F0;
                    } else {
                        var temp100 = returndata.length;
                        memory[0x00:0x00 + temp100] = returndata[0x00:0x00 + temp100];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                }
            } else {
                var temp101 = returndata.length;
                memory[0x00:0x00 + temp101] = returndata[0x00:0x00 + temp101];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp102 = memory[0x40:0x60];
            memory[temp102:temp102 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var2 = temp102 + 0x04;
            var1 = 0x171e;
            var1 = func_379B(var2);
            var temp103 = memory[0x40:0x60];
            revert(memory[temp103:temp103 + var1 - temp103]);
        }
    }
    
    function func_0301(var arg0) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x1fae;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = 0x00;
            var1 = msg.sender;
            var2 = arg0;
            var var3 = 0x00;
        
            if (var3 <= 0xffffffffffffffff) {
                var temp2 = memory[0x40:0x60];
                var temp3 = var3;
                var var4 = temp3;
                var3 = temp2;
                memory[var3:var3 + 0x20] = var4;
                memory[0x40:0x60] = var3 + (var4 + 0x1f & ~0x1f) + 0x20;
            
                if (!var4) {
                    var temp4 = var3;
                    var3 = 0x20aa;
                    var4 = temp4;
                    var var5 = memory[0x40:0x60];
                    var3 = func_3ECC(var4, var5);
                
                label_20AA:
                    var temp5 = memory[0x40:0x60];
                    var temp6;
                    temp6, memory[temp5:temp5 + 0x00] = address(var1).call.gas(msg.gas).value(var2)(memory[temp5:temp5 + var3 - temp5]);
                    var2 = returndata.length;
                    var3 = var2;
                
                    if (var3 == 0x00) {
                        var0 = var1;
                    
                        if (var0) {
                        label_2130:
                            return;
                        } else {
                        label_20F6:
                            var temp7 = memory[0x40:0x60];
                            memory[temp7:temp7 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            var2 = temp7 + 0x04;
                            var1 = 0x2127;
                            var1 = func_3F55(var2);
                            var temp8 = memory[0x40:0x60];
                            revert(memory[temp8:temp8 + var1 - temp8]);
                        }
                    } else {
                        var temp9 = memory[0x40:0x60];
                        var2 = temp9;
                        memory[0x40:0x60] = var2 + (returndata.length + 0x3f & ~0x1f);
                        memory[var2:var2 + 0x20] = returndata.length;
                        var temp10 = returndata.length;
                        memory[var2 + 0x20:var2 + 0x20 + temp10] = returndata[0x00:0x00 + temp10];
                        var0 = var1;
                    
                        if (var0) { goto label_2130; }
                        else { goto label_20F6; }
                    }
                } else {
                    var temp11 = var3;
                    var temp12 = var4;
                    memory[temp11 + 0x20:temp11 + 0x20 + temp12] = msg.data[msg.data.length:msg.data.length + temp12];
                    var3 = 0x20aa;
                    var4 = temp11;
                    var5 = memory[0x40:0x60];
                    var3 = func_3ECC(var4, var5);
                    goto label_20AA;
                }
            } else {
                var4 = 0x2069;
                memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = 0x41;
                revert(memory[0x00:0x24]);
            }
        } else {
            var temp13 = memory[0x40:0x60];
            memory[temp13:temp13 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp13 + 0x04;
            var0 = 0x202c;
            var0 = func_379B(var1);
            var temp14 = memory[0x40:0x60];
            revert(memory[temp14:temp14 + var0 - temp14]);
        }
    }
    
    function func_0355(var arg0, var arg1, var arg2, var arg3) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x2146;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = arg1;
            var1 = 0x00;
            var2 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var3 = 0x70a08231;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = (var3 & 0xffffffff) << 0xe0;
            var var4 = 0x220d;
            var var6 = temp2 + 0x04;
            var var5 = address(this);
            var4 = func_3403(var5, var6);
            var temp3 = memory[0x40:0x60];
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp3:temp3 + var4 - temp3]);
            var5 = !temp4;
        
            if (!var5) {
                var temp5 = memory[0x40:0x60];
                var temp6 = returndata.length;
                memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                var2 = 0x224e;
                var4 = temp5;
                var3 = var4 + temp6;
                var2 = func_383B(var3, var4);
                var1 = var2;
            
                if (var1 > 0x64) {
                    var2 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var3 = 0x70a08231;
                    var temp7 = memory[0x40:0x60];
                    memory[temp7:temp7 + 0x20] = (var3 & 0xffffffff) << 0xe0;
                    var4 = 0x22cc;
                    var6 = temp7 + 0x04;
                    var5 = arg0;
                    var4 = func_3403(var5, var6);
                    var temp8 = memory[0x40:0x60];
                    var temp9;
                    temp9, memory[temp8:temp8 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp8:temp8 + var4 - temp8]);
                    var5 = !temp9;
                
                    if (!var5) {
                        var temp10 = memory[0x40:0x60];
                        var temp11 = returndata.length;
                        memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                        var2 = 0x230d;
                        var4 = temp10;
                        var3 = var4 + temp11;
                        var2 = func_383B(var3, var4);
                    
                        if (arg3 & 0xffffffffffffffffffffffffffff >= var2) {
                            var2 = 0x00;
                            var3 = 0x236e;
                            var4 = arg0;
                            var5 = arg1;
                            var6 = arg2;
                            var var7 = var1;
                            var var8 = address(this);
                            var3 = func_29AB(var4, var5, var6, var7, var8);
                        
                        label_236E:
                            var2 = var3;
                        
                            if (var2) { return; }
                        
                            var temp12 = memory[0x40:0x60];
                            memory[temp12:temp12 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            var4 = temp12 + 0x04;
                            var3 = 0x23a7;
                            var3 = func_4099(var4);
                            var temp13 = memory[0x40:0x60];
                            revert(memory[temp13:temp13 + var3 - temp13]);
                        } else {
                            var temp14 = memory[0x40:0x60];
                            memory[temp14:temp14 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                            var2 = 0x2356;
                            var3 = temp14 + 0x04;
                            var2 = func_402D(var3);
                            var temp15 = memory[0x40:0x60];
                            revert(memory[temp15:temp15 + var2 - temp15]);
                        }
                    } else {
                        var temp16 = returndata.length;
                        memory[0x00:0x00 + temp16] = returndata[0x00:0x00 + temp16];
                        revert(memory[0x00:0x00 + returndata.length]);
                    }
                } else {
                    var temp17 = memory[0x40:0x60];
                    memory[temp17:temp17 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                    var2 = 0x228a;
                    var3 = temp17 + 0x04;
                    var2 = func_3FC1(var3);
                    var temp18 = memory[0x40:0x60];
                    revert(memory[temp18:temp18 + var2 - temp18]);
                }
            } else {
                var temp19 = returndata.length;
                memory[0x00:0x00 + temp19] = returndata[0x00:0x00 + temp19];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp20 = memory[0x40:0x60];
            memory[temp20:temp20 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp20 + 0x04;
            var0 = 0x21c4;
            var0 = func_379B(var1);
            var temp21 = memory[0x40:0x60];
            revert(memory[temp21:temp21 + var0 - temp21]);
        }
    }
    
    function func_0388(var arg0) returns (var r0) {
        var var0 = 0x2490;
        var0 = func_30C6();
        var var1 = arg0;
        var var2 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var3 = 0x0dfe1681;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var3 & 0xffffffff) << 0xe0;
        var var4 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp1:temp1 + var4 - temp1]);
        var var5 = !temp2;
    
        if (!var5) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var2 = 0x2504;
            var4 = temp3;
            var3 = var4 + temp4;
            var2 = func_3CE8(var3, var4);
            memory[var0:var0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var2 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = 0xd21220a7;
            var temp5 = memory[0x40:0x60];
            memory[temp5:temp5 + 0x20] = (var3 & 0xffffffff) << 0xe0;
            var4 = temp5 + 0x04;
            var temp6 = memory[0x40:0x60];
            var temp7;
            temp7, memory[temp6:temp6 + 0x20] = address(var2).staticcall.gas(msg.gas)(memory[temp6:temp6 + var4 - temp6]);
            var5 = !temp7;
        
            if (!var5) {
                var temp8 = memory[0x40:0x60];
                var temp9 = returndata.length;
                memory[0x40:0x60] = temp8 + (temp9 + 0x1f & ~0x1f);
                var2 = 0x25aa;
                var4 = temp8;
                var3 = var4 + temp9;
                var2 = func_3CE8(var3, var4);
                memory[var0 + 0x20:var0 + 0x20 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var2 = 0x00;
                var3 = var2;
                var4 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var5 = 0x0902f1ac;
                var temp10 = memory[0x40:0x60];
                memory[temp10:temp10 + 0x20] = (var5 & 0xffffffff) << 0xe0;
                var var6 = temp10 + 0x04;
                var temp11 = memory[0x40:0x60];
                var temp12;
                temp12, memory[temp11:temp11 + 0x60] = address(var4).staticcall.gas(msg.gas)(memory[temp11:temp11 + var6 - temp11]);
                var var7 = !temp12;
            
                if (!var7) {
                    var temp13 = memory[0x40:0x60];
                    var temp14 = returndata.length;
                    memory[0x40:0x60] = temp13 + (temp14 + 0x1f & ~0x1f);
                    var4 = 0x2653;
                    var6 = temp13;
                    var5 = var6 + temp14;
                    var4, var5, var6 = func_3D66(var5, var6);
                    var temp15 = var0;
                    memory[temp15 + 0x40:temp15 + 0x40 + 0x20] = var4 & 0xffffffffffffffffffffffffffff;
                    memory[temp15 + 0x60:temp15 + 0x60 + 0x20] = var5 & 0xffffffffffffffffffffffffffff;
                    return temp15;
                } else {
                    var temp16 = returndata.length;
                    memory[0x00:0x00 + temp16] = returndata[0x00:0x00 + temp16];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp17 = returndata.length;
                memory[0x00:0x00 + temp17] = returndata[0x00:0x00 + temp17];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp18 = returndata.length;
            memory[0x00:0x00 + temp18] = returndata[0x00:0x00 + temp18];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_03C5(var arg0) returns (var r0) { return ((arg0 << 0x60) ~ (0x52f656151e1ee5d39006d4090dd446f5422d5c7f << 0x60)) >> 0x60; }
    
    function func_0402(var arg0) {
        var var0 = 0x26d3;
        func_2B4E();
    
        if (arg0 & 0xffffffffffffffffffffffffffffffffffffffff) {
            var0 = 0x274b;
            var var1 = arg0;
            func_2C56(var1);
            return;
        } else {
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp0 + 0x04;
            var0 = 0x2739;
            var0 = func_412B(var1);
            var temp1 = memory[0x40:0x60];
            revert(memory[temp1:temp1 + var0 - temp1]);
        }
    }
    
    function func_042B(var arg0, var arg1) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x275a;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = arg0 & 0xffffffffffffffffffffffffffffffffffffffff;
            var1 = 0xa9059cbb;
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = (var1 & 0xffffffff) << 0xe0;
            var2 = 0x281c;
            var var3 = msg.sender;
            var var4 = arg1;
            var var5 = temp2 + 0x04;
            var2 = func_37BB(var3, var4, var5);
            var temp3 = memory[0x40:0x60];
            var temp4;
            temp4, memory[temp3:temp3 + 0x20] = address(var0).call.gas(msg.gas)(memory[temp3:temp3 + var2 - temp3]);
            var3 = !temp4;
        
            if (!var3) {
                var temp5 = memory[0x40:0x60];
                var temp6 = returndata.length;
                memory[0x40:0x60] = temp5 + (temp6 + 0x1f & ~0x1f);
                var0 = 0x285f;
                var2 = temp5;
                var1 = var2 + temp6;
                var0 = func_37F9(var1, var2);
                return;
            } else {
                var temp7 = returndata.length;
                memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp8 + 0x04;
            var0 = 0x27d8;
            var0 = func_379B(var1);
            var temp9 = memory[0x40:0x60];
            revert(memory[temp9:temp9 + var0 - temp9]);
        }
    }
    
    function func_0454(var arg0, var arg1) {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x2870;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            storage[0x01] = arg0;
            storage[0x02] = arg1;
            return;
        } else {
            var temp2 = memory[0x40:0x60];
            memory[temp2:temp2 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var1 = temp2 + 0x04;
            var0 = 0x28ee;
            var0 = func_379B(var1);
            var temp3 = memory[0x40:0x60];
            revert(memory[temp3:temp3 + var0 - temp3]);
        }
    }
    
    function func_0802(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = 0x080c;
        var temp1 = arg1;
        arg1 = temp0;
        var var0 = temp1;
        arg0 = func_3A36(arg1, var0);
        func_2911(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_0A3D(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x0a5b;
        var var3 = 0xff << 0xf8;
        var var4 = address(this);
        var var5 = address(this).balance;
        var var6 = arg0;
        var var7 = memory[0x40:0x60] + 0x20;
        var2 = func_3C19(var3, var4, var5, var6, var7);
        var temp0 = memory[0x40:0x60];
        var temp1 = var2;
        memory[temp0:temp0 + 0x20] = temp1 - temp0 - 0x20;
        memory[0x40:0x60] = temp1;
        return keccak256(memory[temp0 + 0x20:temp0 + 0x20 + memory[temp0:temp0 + 0x20]]) >> 0x00;
    }
    
    function func_1008(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var temp1;
        temp1, memory[temp0:temp0 + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[temp0:temp0 + arg3 - temp0]);
        var var0 = !temp1;
    
        if (!var0) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            arg1 = 0x1049;
            arg3 = temp2;
            arg2 = arg3 + temp3;
            arg1 = func_383B(arg2, arg3);
            var temp4 = arg0;
            arg0 = arg1;
            arg1 = temp4;
            arg2 = 0x00;
            arg3 = 0x2bda;
            var0 = arg1;
            var var1 = arg0;
            return func_39A2(var0, var1);
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_11FC(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = 0x1206;
        var temp1 = arg1;
        arg1 = temp0;
        var var0 = temp1;
        arg0 = func_3A36(arg1, var0);
        func_2911(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_13A7(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var temp1;
        temp1, memory[temp0:temp0 + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[temp0:temp0 + arg3 - temp0]);
        var var0 = !temp1;
    
        if (!var0) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            arg1 = 0x13e8;
            arg3 = temp2;
            arg2 = arg3 + temp3;
            arg1 = func_383B(arg2, arg3);
            var temp4 = arg0;
            arg0 = arg1;
            arg1 = temp4;
            arg2 = 0x00;
            arg3 = 0x2bda;
            var0 = arg1;
            var var1 = arg0;
            return func_39A2(var0, var1);
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_15BD(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var temp1;
        temp1, memory[temp0:temp0 + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[temp0:temp0 + arg3 - temp0]);
        var var0 = !temp1;
    
        if (!var0) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            arg1 = 0x15fe;
            arg2 = temp2 + temp3;
            arg3 = temp2;
            arg1 = func_383B(arg2, arg3);
            var temp4 = arg0;
            arg0 = arg1;
            arg1 = temp4;
            arg2 = 0x00;
            arg3 = 0x2bda;
            var0 = arg1;
            var var1 = arg0;
            return func_39A2(var0, var1);
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function renounceOwnership() {
        var var0 = 0x1680;
        func_2B4E();
        var0 = 0x168a;
        var var1 = 0x00;
        func_2C56(var1);
    }
    
    function func_1B3F(var arg0, var arg1, var arg2) returns (var r0) {
        var var0 = 0x00;
        var var1 = address(this);
        r0 = func_29AB(arg0, arg1, arg2, var0, var1);
        // Error: Could not resolve method call return address!
    }
    
    function func_1F79() returns (var r0) { return storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_2134() returns (var r0) { return storage[0x03]; }
    
    function mintContract() {
        var var0 = 0x04;
        var var1 = 0x00;
        var var2 = 0x23c5;
        var2 = func_2909();
        var temp0 = var1;
        memory[temp0:temp0 + 0x20] = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = var0;
    
        if (storage[keccak256(memory[0x00:0x00 + temp1 + 0x20])] & 0xff) {
            var0 = storage[0x03];
            var1 = storage[0x01];
            memory[0x00:0x20] = var1;
            var2 = msg.value;
        
            if (!var2) {
            label_247C:
                storage[0x03] = var0;
                return;
            } else {
            label_2463:
                var temp2 = var0;
                var temp3 = new(memory[0x00:0x19]).value(0x01).salt(temp2)();
                var0 = temp2 + 0x01;
                var2 = var2 - 0x01;
            
                if (!var2) { goto label_247C; }
                else { goto label_2463; }
            }
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var0 = 0x2443;
            var1 = temp4 + 0x04;
            var0 = func_379B(var1);
            var temp5 = memory[0x40:0x60];
            revert(memory[temp5:temp5 + var0 - temp5]);
        }
    }
    
    function func_2909() returns (var r0) { return msg.sender; }
    
    function func_2911(var arg0) {
        var var0 = storage[0x02];
        var var1 = 0x00;
    
        if (var1 >= arg0) {
        label_29A6:
            return;
        } else {
        label_2924:
            var var2 = 0x292c;
            var var3 = var0;
            var2 = func_0A3D(var3);
            var2 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = 0x294e;
            var var4 = memory[0x40:0x60];
            var3 = func_4171(var4);
            var temp0 = memory[0x40:0x60];
            var temp1;
            temp1, memory[temp0:temp0 + 0x00] = address(var2).call.gas(msg.gas)(memory[temp0:temp0 + var3 - temp0]);
            var3 = returndata.length;
            var4 = var3;
        
            if (var4 == 0x00) {
                var2 = var1;
                var4 = var2;
                var3 = 0x299e;
                var3 = func_4186(var4);
            
            label_299E:
                var1 = var3;
            
                if (var1 >= arg0) { goto label_29A6; }
                else { goto label_2924; }
            } else {
                var temp2 = memory[0x40:0x60];
                var3 = temp2;
                memory[0x40:0x60] = var3 + (returndata.length + 0x3f & ~0x1f);
                memory[var3:var3 + 0x20] = returndata.length;
                var temp3 = returndata.length;
                memory[var3 + 0x20:var3 + 0x20 + temp3] = returndata[0x00:0x00 + temp3];
                var2 = var1;
                var4 = var2;
                var3 = 0x299e;
                var3 = func_4186(var4);
                goto label_299E;
            }
        }
    }
    
    function func_29AB(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0) {
        var var0 = 0x00;
        var var1 = arg1;
    
        if (arg3 <= 0x00) {
        label_2A3A:
            var var2 = arg0;
            var var3 = 0x00;
            var var4 = var3;
            var var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var6 = 0x0902f1ac;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var6 & 0xffffffff) << 0xe0;
            var var7 = temp0 + 0x04;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x60] = address(var5).staticcall.gas(msg.gas)(memory[temp1:temp1 + var7 - temp1]);
            var var8 = !temp2;
        
            if (!var8) {
                var temp3 = memory[0x40:0x60];
                var temp4 = returndata.length;
                memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
                var5 = 0x2ab1;
                var6 = temp3 + temp4;
                var7 = temp3;
                var5, var6, var7 = func_3D66(var6, var7);
                var4 = var6 & 0xffffffffffffffffffffffffffff;
                var3 = var5 & 0xffffffffffffffffffffffffffff;
            
                if (tx.gasprice < 0x02540be400) {
                    var5 = 0x2b3e;
                    var6 = arg0;
                    var7 = arg1;
                    var8 = var3;
                    var var9 = var4;
                    var var10 = arg2;
                    var var11 = arg4;
                    return func_2D1A(var6, var7, var8, var9, var10, var11);
                } else {
                    var5 = msg.gas;
                    var6 = 0x2af5;
                    var7 = arg0;
                    var8 = arg1;
                    var9 = var3;
                    var10 = var4;
                    var11 = arg2;
                    var var12 = arg4;
                    var6 = func_2D1A(var7, var8, var9, var10, var11, var12);
                    var0 = var6;
                    var6 = 0x00;
                    var7 = 0x2b05;
                    var8 = msg.gas;
                    var9 = var5;
                    var7 = func_39A2(var8, var9);
                    var temp5 = var7;
                    var6 = temp5;
                    var7 = 0x2b29;
                    var8 = 0x01;
                    var9 = 0x2b1a;
                    var11 = var6;
                    var10 = 0xa3db;
                    var9 = func_3A05(var10, var11);
                    func_2B1A(var8, var9);
                    return var0;
                }
            } else {
                var temp6 = returndata.length;
                memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var2 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var3 = 0xa9059cbb;
            var temp7 = memory[0x40:0x60];
            memory[temp7:temp7 + 0x20] = (var3 & 0xffffffff) << 0xe0;
            var4 = 0x29f5;
            var5 = arg0;
            var7 = temp7 + 0x04;
            var6 = arg3;
            var4 = func_37BB(var5, var6, var7);
            var temp8 = memory[0x40:0x60];
            var temp9;
            temp9, memory[temp8:temp8 + 0x20] = address(var2).call.gas(msg.gas)(memory[temp8:temp8 + var4 - temp8]);
            var5 = !temp9;
        
            if (!var5) {
                var temp10 = memory[0x40:0x60];
                var temp11 = returndata.length;
                memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                var2 = 0x2a38;
                var4 = temp10;
                var3 = var4 + temp11;
                var2 = func_37F9(var3, var4);
                goto label_2A3A;
            } else {
                var temp12 = returndata.length;
                memory[0x00:0x00 + temp12] = returndata[0x00:0x00 + temp12];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        }
    }
    
    function func_2B1A(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = 0x2b24;
        var temp1 = arg1;
        arg1 = temp0;
        var var0 = temp1;
        arg0 = func_3A36(arg1, var0);
        func_2911(arg0);
        // Error: Could not resolve method call return address!
    }
    
    function func_2B4E() {
        var var0 = 0x2b56;
        var0 = func_2909();
        var0 = var0 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var1 = 0x2b74;
        var1 = func_1F79();
    
        if (var1 & 0xffffffffffffffffffffffffffffffffffffffff == var0) { return; }
    
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
        var0 = 0x2bc1;
        var1 = temp0 + 0x04;
        var0 = func_421A(var1);
        var temp1 = memory[0x40:0x60];
        revert(memory[temp1:temp1 + var0 - temp1]);
    }
    
    function func_2BE2(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x2bf8;
        var var3 = arg0;
        var var4 = arg3;
        var2 = func_306B(var3, var4);
        var temp0 = var2;
        var1 = temp0;
        var2 = 0x00;
        var3 = 0x2c0f;
        var4 = var1;
        var var5 = arg2;
        var3 = func_306B(var4, var5);
        var2 = var3;
        var3 = 0x00;
        var4 = 0x2c3b;
        var5 = var1;
        var var6 = 0x2c2d;
        var var7 = arg1;
        var var8 = 0x0f4240;
        var6 = func_306B(var7, var8);
        var4 = func_2C2D(var5, var6);
        var temp1 = var4;
        var3 = temp1;
        var4 = 0x2c49;
        var6 = var2;
        var5 = var3;
        return func_3A05(var5, var6);
    }
    
    function func_2C2D(var arg0, var arg1) returns (var r0) {
        var temp0 = arg0;
        arg0 = arg1;
        arg1 = temp0;
        var var0 = 0x00;
        var var1 = 0x308f;
        var var2 = arg1;
        var var3 = arg0;
        return func_3A36(var2, var3);
    }
    
    function func_2C56(var arg0) {
        var temp0 = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
        var temp1 = arg0;
        storage[0x00] = (temp1 & 0xffffffffffffffffffffffffffffffffffffffff) | (storage[0x00] & ~0xffffffffffffffffffffffffffffffffffffffff);
        var temp2 = memory[0x40:0x60];
        log(memory[temp2:temp2 + memory[0x40:0x60] - temp2], [0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff, stack[-1] & 0xffffffffffffffffffffffffffffffffffffffff]);
    }
    
    function func_2D1A(var arg0, var arg1, var arg2, var arg3, var arg4, var arg5) returns (var r0) {
        var var0 = 0x00;
        var var1 = arg0;
        var var2 = 0x00;
        var var3 = var2;
        var var4 = 0x00;
        var var5 = var4;
        var var6 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var7 = 0x0dfe1681;
        var temp0 = memory[0x40:0x60];
        memory[temp0:temp0 + 0x20] = (var7 & 0xffffffff) << 0xe0;
        var var8 = temp0 + 0x04;
        var temp1 = memory[0x40:0x60];
        var temp2;
        temp2, memory[temp1:temp1 + 0x20] = address(var6).staticcall.gas(msg.gas)(memory[temp1:temp1 + var8 - temp1]);
        var var9 = !temp2;
    
        if (!var9) {
            var temp3 = memory[0x40:0x60];
            var temp4 = returndata.length;
            memory[0x40:0x60] = temp3 + (temp4 + 0x1f & ~0x1f);
            var6 = 0x2d95;
            var8 = temp3;
            var7 = var8 + temp4;
            var6 = func_3CE8(var7, var8);
        
            if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var6 & 0xffffffffffffffffffffffffffffffffffffffff) {
                var5 = arg3;
                var4 = arg2;
                var6 = 0x2e61;
                var7 = var4;
                var8 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0x70a08231;
                var temp5 = memory[0x40:0x60];
                memory[temp5:temp5 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                var var10 = 0x2e12;
                var var11 = arg0;
                var var12 = temp5 + 0x04;
                var10 = func_3403(var11, var12);
                var6 = func_2E12(var7, var8, var9, var10);
            
            label_2E61:
                var temp6 = var6;
                var3 = temp6;
                var6 = 0x2e6f;
                var7 = var3;
                var8 = var4;
                var9 = var5;
                var10 = arg4;
                var6 = func_2BE2(var7, var8, var9, var10);
                var2 = var6;
                var6 = 0x00;
                var7 = var6;
                var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0x0dfe1681;
                var temp7 = memory[0x40:0x60];
                memory[temp7:temp7 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                var10 = temp7 + 0x04;
                var temp8 = memory[0x40:0x60];
                var temp9;
                temp9, memory[temp8:temp8 + 0x20] = address(var8).staticcall.gas(msg.gas)(memory[temp8:temp8 + var10 - temp8]);
                var11 = !temp9;
            
                if (!var11) {
                    var temp10 = memory[0x40:0x60];
                    var temp11 = returndata.length;
                    memory[0x40:0x60] = temp10 + (temp11 + 0x1f & ~0x1f);
                    var8 = 0x2ee3;
                    var9 = temp10 + temp11;
                    var10 = temp10;
                    var8 = func_3CE8(var9, var10);
                
                    if (arg1 & 0xffffffffffffffffffffffffffffffffffffffff == var8 & 0xffffffffffffffffffffffffffffffffffffffff) {
                        var7 = var2;
                        var6 = 0x00;
                        var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var9 = 0x022c0d9f << 0xe0;
                        var10 = var6;
                        var11 = var7;
                        var12 = arg5;
                        var var13 = 0x00;
                    
                        if (var13 <= 0xffffffffffffffff) {
                        label_2F62:
                            var temp12 = memory[0x40:0x60];
                            var temp13 = var13;
                            var var14 = temp13;
                            var13 = temp12;
                            memory[var13:var13 + 0x20] = var14;
                            memory[0x40:0x60] = var13 + (var14 + 0x1f & ~0x1f) + 0x20;
                        
                            if (!var14) {
                                var temp14 = var10;
                                var10 = 0x2fa8;
                                var temp15 = var11;
                                var11 = temp14;
                                var temp16 = var12;
                                var12 = temp15;
                                var temp17 = var13;
                                var13 = temp16;
                                var var15 = memory[0x40:0x60] + 0x24;
                                var14 = temp17;
                                var10 = func_3927(var11, var12, var13, var14, var15);
                            
                            label_2FA8:
                                var temp18 = memory[0x40:0x60];
                                var temp19 = var10;
                                memory[temp18:temp18 + 0x20] = temp19 - temp18 - 0x20;
                                memory[0x40:0x60] = temp19;
                                var temp20 = temp18 + 0x20;
                                memory[temp20:temp20 + 0x20] = (memory[temp20:temp20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) | (var9 & ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                                var9 = 0x3012;
                                var11 = memory[0x40:0x60];
                                var10 = temp18;
                                var9 = func_3ECC(var10, var11);
                                var temp21 = memory[0x40:0x60];
                                var temp22;
                                temp22, memory[temp21:temp21 + 0x00] = address(var8).call.gas(msg.gas)(memory[temp21:temp21 + var9 - temp21]);
                                var9 = returndata.length;
                                var10 = var9;
                            
                                if (var10 == 0x00) { return var8; }
                            
                                var temp23 = memory[0x40:0x60];
                                var9 = temp23;
                                memory[0x40:0x60] = var9 + (returndata.length + 0x3f & ~0x1f);
                                memory[var9:var9 + 0x20] = returndata.length;
                                var temp24 = returndata.length;
                                memory[var9 + 0x20:var9 + 0x20 + temp24] = returndata[0x00:0x00 + temp24];
                                return var8;
                            } else {
                                var temp25 = var13;
                                var temp26 = var14;
                                memory[temp25 + 0x20:temp25 + 0x20 + temp26] = msg.data[msg.data.length:msg.data.length + temp26];
                                var temp27 = var10;
                                var10 = 0x2fa8;
                                var temp28 = var11;
                                var11 = temp27;
                                var temp29 = var12;
                                var12 = temp28;
                                var13 = temp29;
                                var15 = memory[0x40:0x60] + 0x24;
                                var14 = temp25;
                                var10 = func_3927(var11, var12, var13, var14, var15);
                                goto label_2FA8;
                            }
                        } else {
                        label_2F5A:
                            var14 = 0x2f61;
                            memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                            memory[0x04:0x24] = 0x41;
                            revert(memory[0x00:0x24]);
                        }
                    } else {
                        var8 = var2;
                        var9 = 0x00;
                        var temp30 = var9;
                        var7 = temp30;
                        var temp31 = var8;
                        var6 = temp31;
                        var8 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var9 = 0x022c0d9f << 0xe0;
                        var10 = var6;
                        var11 = var7;
                        var12 = arg5;
                        var13 = 0x00;
                    
                        if (var13 <= 0xffffffffffffffff) { goto label_2F62; }
                        else { goto label_2F5A; }
                    }
                } else {
                    var temp32 = returndata.length;
                    memory[0x00:0x00 + temp32] = returndata[0x00:0x00 + temp32];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var6 = arg3;
                var7 = arg2;
                var5 = var7;
                var temp33 = var6;
                var4 = temp33;
                var6 = 0x2e61;
                var7 = var4;
                var8 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var9 = 0x70a08231;
                var temp34 = memory[0x40:0x60];
                memory[temp34:temp34 + 0x20] = (var9 & 0xffffffff) << 0xe0;
                var10 = 0x2e12;
                var11 = arg0;
                var12 = temp34 + 0x04;
                var10 = func_3403(var11, var12);
                var6 = func_2E12(var7, var8, var9, var10);
                goto label_2E61;
            }
        } else {
            var temp35 = returndata.length;
            memory[0x00:0x00 + temp35] = returndata[0x00:0x00 + temp35];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_2E12(var arg0, var arg1, var arg2, var arg3) returns (var r0) {
        var temp0 = memory[0x40:0x60];
        var temp1;
        temp1, memory[temp0:temp0 + 0x20] = address(arg1).staticcall.gas(msg.gas)(memory[temp0:temp0 + arg3 - temp0]);
        var var0 = !temp1;
    
        if (!var0) {
            var temp2 = memory[0x40:0x60];
            var temp3 = returndata.length;
            memory[0x40:0x60] = temp2 + (temp3 + 0x1f & ~0x1f);
            arg1 = 0x2e53;
            arg2 = temp2 + temp3;
            arg3 = temp2;
            arg1 = func_383B(arg2, arg3);
            var temp4 = arg0;
            arg0 = arg1;
            arg1 = temp4;
            arg2 = 0x00;
            arg3 = 0x2bda;
            var0 = arg1;
            var var1 = arg0;
            return func_39A2(var0, var1);
        } else {
            var temp5 = returndata.length;
            memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function func_306B(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3079;
        var var2 = arg1;
        var var3 = arg0;
        return func_3E25(var2, var3);
    }
    
    function func_3097() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0xa0;
        memory[temp0:temp0 + 0x20] = 0x00;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = 0x00;
        var temp2 = temp1 + 0x20;
        memory[temp2:temp2 + 0x20] = 0x00;
        var temp3 = temp2 + 0x20;
        memory[temp3:temp3 + 0x20] = 0x00;
        memory[temp3 + 0x20:temp3 + 0x20 + 0x20] = 0x00;
        return temp0;
    }
    
    function func_30C6() returns (var r0) {
        var temp0 = memory[0x40:0x60];
        memory[0x40:0x60] = temp0 + 0x80;
        memory[temp0:temp0 + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0x00;
        var temp1 = temp0 + 0x20;
        memory[temp1:temp1 + 0x20] = 0xffffffffffffffffffffffffffffffffffffffff & 0x00;
        var temp2 = temp1 + 0x20;
        memory[temp2:temp2 + 0x20] = 0x00;
        memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = 0x00;
        return temp0;
    }
    
    function func_311F(var arg0) returns (var r0) { return arg0 & 0xffffffffffffffffffffffffffffffffffffffff; }
    
    function func_313F(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x314a;
        var var2 = arg0;
        return func_311F(var2);
    }
    
    function func_3151(var arg0) {
        var var0 = 0x315a;
        var var1 = arg0;
        var0 = func_313F(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_3168(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x3177;
        var var2 = var0;
        func_3151(var2);
        return var0;
    }
    
    function func_317D(var arg0) returns (var r0) { return arg0; }
    
    function func_3187(var arg0) {
        var var0 = 0x3190;
        var var1 = arg0;
        var0 = func_317D(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_319E(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x31ad;
        var var2 = var0;
        func_3187(var2);
        return var0;
    }
    
    function func_31B3(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0x31d8;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_3168(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0x31e9;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_319E(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0x31c9;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_31F3(var arg0) returns (var r0) { return arg0 & 0xffffffffffffffffffffffffffff; }
    
    function func_320D(var arg0) {
        var var0 = 0x3216;
        var var1 = arg0;
        var0 = func_31F3(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_3224(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x3233;
        var var2 = var0;
        func_320D(var2);
        return var0;
    }
    
    function func_3239(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3, var r4, var r5) {
        r3 = 0x00;
        r4 = r3;
        r5 = 0x00;
        var var3 = r5;
        var var4 = 0x00;
        var var5 = var4;
    
        if (arg0 - arg1 i>= 0xc0) {
            var var6 = 0x00;
            var var7 = 0x3264;
            var var8 = arg0;
            var var9 = arg1 + var6;
            var7 = func_3168(var8, var9);
            r3 = var7;
            var6 = 0x20;
            var7 = 0x3275;
            var8 = arg0;
            var9 = arg1 + var6;
            var7 = func_3168(var8, var9);
            r4 = var7;
            var6 = 0x40;
            var7 = 0x3286;
            var8 = arg0;
            var9 = arg1 + var6;
            var7 = func_319E(var8, var9);
            r5 = var7;
            var6 = 0x60;
            var7 = 0x3297;
            var8 = arg0;
            var9 = arg1 + var6;
            var7 = func_3224(var8, var9);
            var3 = var7;
            var6 = 0x80;
            var7 = 0x32a8;
            var8 = arg0;
            var9 = arg1 + var6;
            var7 = func_319E(var8, var9);
            var4 = var7;
            var6 = 0xa0;
            var7 = 0x32b9;
            var8 = arg0;
            var9 = arg1 + var6;
            var7 = func_319E(var8, var9);
            var temp0 = r5;
            r5 = var7;
            arg1 = temp0;
            var temp1 = r4;
            r4 = var4;
            arg0 = temp1;
            var temp2 = r3;
            r3 = var3;
            r0 = temp2;
            return r0, arg0, arg1, r3, r4, r5;
        } else {
            var6 = 0x3255;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_32C6(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = 0x00;
            var var4 = 0x32ed;
            var var5 = arg0;
            var var6 = arg1 + var3;
            var4 = func_3168(var5, var6);
            var0 = var4;
            var3 = 0x20;
            var4 = 0x32fe;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_3168(var5, var6);
            var1 = var4;
            var3 = 0x40;
            var4 = 0x330f;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_319E(var5, var6);
            arg1 = var4;
            arg0 = var1;
            r0 = var0;
            return r0, arg0, arg1;
        } else {
            var3 = 0x32de;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3319(var arg0) returns (var r0) { return !!arg0; }
    
    function func_3325(var arg0) {
        var var0 = 0x332e;
        var var1 = arg0;
        var0 = func_3319(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_333C(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x334b;
        var var2 = var0;
        func_3325(var2);
        return var0;
    }
    
    function func_3351(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0x3376;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_3168(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0x3387;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_333C(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0x3367;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3391(var arg0) returns (var r0) { return arg0; }
    
    function func_339B(var arg0) {
        var var0 = 0x33a4;
        var var1 = arg0;
        var0 = func_3391(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_33B2(var arg0, var arg1) returns (var r0) {
        var var0 = msg.data[arg1:arg1 + 0x20];
        var var1 = 0x33c1;
        var var2 = var0;
        func_339B(var2);
        return var0;
    }
    
    function func_33C7(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x33eb;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_33B2(var3, var4);
        } else {
            var1 = 0x33dc;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_33F4(var arg0, var arg1) {
        var var0 = 0x33fd;
        var var1 = arg1;
        var0 = func_313F(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_3403(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x3418;
        var var2 = temp0;
        var var3 = arg0;
        func_33F4(var2, var3);
        return var0;
    }
    
    function func_341E(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i>= 0x80) {
            var var4 = 0x00;
            var var5 = 0x3446;
            var var6 = arg0;
            var var7 = arg1 + var4;
            var5 = func_3168(var6, var7);
            r3 = var5;
            var4 = 0x20;
            var5 = 0x3457;
            var6 = arg0;
            var7 = arg1 + var4;
            var5 = func_3168(var6, var7);
            var1 = var5;
            var4 = 0x40;
            var5 = 0x3468;
            var6 = arg0;
            var7 = arg1 + var4;
            var5 = func_319E(var6, var7);
            var2 = var5;
            var4 = 0x60;
            var5 = 0x3479;
            var6 = arg0;
            var7 = arg1 + var4;
            var5 = func_319E(var6, var7);
            var temp0 = r3;
            r3 = var5;
            r0 = temp0;
            arg0 = var1;
            arg1 = var2;
            return r0, arg0, arg1, r3;
        } else {
            var4 = 0x3437;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3485(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x34a9;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_3168(var3, var4);
        } else {
            var1 = 0x349a;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_34B2(var arg0, var arg1) {
        var var0 = 0x34bb;
        var var1 = arg1;
        var0 = func_3319(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_34C1(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x34d6;
        var var2 = temp0;
        var var3 = arg0;
        func_34B2(var2, var3);
        return var0;
    }
    
    function func_34DC(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = 0x00;
            var var4 = 0x3503;
            var var5 = arg0;
            var var6 = arg1 + var3;
            var4 = func_319E(var5, var6);
            var0 = var4;
            var3 = 0x20;
            var4 = 0x3514;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_3168(var5, var6);
            var1 = var4;
            var3 = 0x40;
            var4 = 0x3525;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_3168(var5, var6);
            arg1 = var4;
            arg0 = var1;
            r0 = var0;
            return r0, arg0, arg1;
        } else {
            var3 = 0x34f4;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_352F(var arg0, var arg1) {
        var var0 = 0x3538;
        var var1 = arg1;
        var0 = func_317D(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_353E(var arg0, var arg1) {
        var temp0 = arg0;
        var var0 = temp0 + 0xa0;
        var var1 = memory[arg1:arg1 + 0x20];
        var var2 = 0x3554;
        var var3 = temp0;
        var var4 = var1;
        func_352F(var3, var4);
        var1 = memory[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var2 = 0x3567;
        var3 = arg0 + 0x20;
        var4 = var1;
        func_352F(var3, var4);
        var1 = memory[arg1 + 0x40:arg1 + 0x40 + 0x20];
        var2 = 0x357a;
        var3 = arg0 + 0x40;
        var4 = var1;
        func_352F(var3, var4);
        var1 = memory[arg1 + 0x60:arg1 + 0x60 + 0x20];
        var2 = 0x358d;
        var3 = arg0 + 0x60;
        var4 = var1;
        func_352F(var3, var4);
        var1 = memory[arg1 + 0x80:arg1 + 0x80 + 0x20];
        var2 = 0x35a0;
        var3 = arg0 + 0x80;
        var4 = var1;
        func_352F(var3, var4);
    }
    
    function func_35A6(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0xa0;
        var var1 = 0x35bb;
        var var2 = temp0;
        var var3 = arg0;
        func_353E(var2, var3);
        return var0;
    }
    
    function func_35C1(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x35e5;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_319E(var3, var4);
        } else {
            var1 = 0x35d6;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_35EE(var arg0, var arg1) {
        var var0 = 0x35f7;
        var var1 = arg1;
        var0 = func_317D(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_35FD(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x20;
        var var1 = 0x3612;
        var var2 = temp0;
        var var3 = arg0;
        func_35EE(var2, var3);
        return var0;
    }
    
    function func_3618(var arg0, var arg1) returns (var r0, var arg0, var arg1, var r3) {
        r3 = 0x00;
        var var1 = r3;
        var var2 = 0x00;
        var var3 = var2;
    
        if (arg0 - arg1 i>= 0x80) {
            var var4 = 0x00;
            var var5 = 0x3640;
            var var6 = arg0;
            var var7 = arg1 + var4;
            var5 = func_3168(var6, var7);
            r3 = var5;
            var4 = 0x20;
            var5 = 0x3651;
            var6 = arg0;
            var7 = arg1 + var4;
            var5 = func_3168(var6, var7);
            var1 = var5;
            var4 = 0x40;
            var5 = 0x3662;
            var6 = arg0;
            var7 = arg1 + var4;
            var5 = func_319E(var6, var7);
            var2 = var5;
            var4 = 0x60;
            var5 = 0x3673;
            var6 = arg0;
            var7 = arg1 + var4;
            var5 = func_3224(var6, var7);
            var temp0 = r3;
            r3 = var5;
            r0 = temp0;
            arg0 = var1;
            arg1 = var2;
            return r0, arg0, arg1, r3;
        } else {
            var4 = 0x3631;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_367F(var arg0, var arg1) {
        var var0 = 0x3688;
        var var1 = arg1;
        var0 = func_313F(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_368E(var arg0, var arg1) {
        var temp0 = arg0;
        var var0 = temp0 + 0x80;
        var var1 = memory[arg1:arg1 + 0x20];
        var var2 = 0x36a4;
        var var3 = temp0;
        var var4 = var1;
        func_367F(var3, var4);
        var1 = memory[arg1 + 0x20:arg1 + 0x20 + 0x20];
        var2 = 0x36b7;
        var3 = arg0 + 0x20;
        var4 = var1;
        func_367F(var3, var4);
        var1 = memory[arg1 + 0x40:arg1 + 0x40 + 0x20];
        var2 = 0x36ca;
        var3 = arg0 + 0x40;
        var4 = var1;
        func_352F(var3, var4);
        var1 = memory[arg1 + 0x60:arg1 + 0x60 + 0x20];
        var2 = 0x36dd;
        var3 = arg0 + 0x60;
        var4 = var1;
        func_352F(var3, var4);
    }
    
    function func_36E3(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        var var0 = temp0 + 0x80;
        var var1 = 0x36f8;
        var var2 = temp0;
        var var3 = arg0;
        func_368E(var2, var3);
        return var0;
    }
    
    function func_36FE(var arg0, var arg1) returns (var r0, var arg0) {
        var var0 = 0x00;
        var var1 = var0;
    
        if (arg0 - arg1 i>= 0x40) {
            var var2 = 0x00;
            var var3 = 0x3723;
            var var4 = arg0;
            var var5 = arg1 + var2;
            var3 = func_33B2(var4, var5);
            var0 = var3;
            var2 = 0x20;
            var3 = 0x3734;
            var4 = arg0;
            var5 = arg1 + var2;
            var3 = func_33B2(var4, var5);
            arg0 = var3;
            r0 = var0;
            return r0, arg0;
        } else {
            var2 = 0x3714;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_373E(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_374F(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x6e6f742061646d696e0000000000000000000000000000000000000000000000;
    }
    
    function func_3778(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3785;
        var var2 = 0x09;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3790;
        var2 = arg0;
        func_374F(var2);
        return arg0 + 0x20;
    }
    
    function func_379B(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x37b4;
        var var2 = var0;
        return func_3778(var2);
    }
    
    function func_37BB(var arg0, var arg1, var arg2) returns (var r0) {
        var temp0 = arg2;
        var var0 = temp0 + 0x40;
        var var1 = 0x37d0;
        var var2 = temp0;
        var var3 = arg0;
        func_33F4(var2, var3);
        var1 = 0x37dd;
        var2 = arg2 + 0x20;
        var3 = arg1;
        func_35EE(var2, var3);
        return var0;
    }
    
    function func_37E4(var arg0, var arg1) returns (var r0) {
        var var0 = memory[arg1:arg1 + 0x20];
        var var1 = 0x37f3;
        var var2 = var0;
        func_3325(var2);
        return var0;
    }
    
    function func_37F9(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x381d;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_37E4(var3, var4);
        } else {
            var1 = 0x380e;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3826(var arg0, var arg1) returns (var r0) {
        var var0 = memory[arg1:arg1 + 0x20];
        var var1 = 0x3835;
        var var2 = var0;
        func_3187(var2);
        return var0;
    }
    
    function func_383B(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x385f;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_3826(var3, var4);
        } else {
            var1 = 0x3850;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3897(var arg0) returns (var r0) { return memory[arg0:arg0 + 0x20]; }
    
    function func_38A2(var arg0, var arg1) returns (var r0) {
        var temp0 = arg1;
        memory[temp0:temp0 + 0x20] = arg0;
        return temp0 + 0x20;
    }
    
    function func_38B3(var arg0, var arg1, var arg2) {
        var var0 = 0x00;
    
        if (var0 >= arg0) {
        label_38D1:
            memory[arg1 + arg0:arg1 + arg0 + 0x20] = 0x00;
            return;
        } else {
        label_38BF:
            var temp0 = var0;
            memory[arg1 + temp0:arg1 + temp0 + 0x20] = memory[arg2 + temp0:arg2 + temp0 + 0x20];
            var0 = temp0 + 0x20;
        
            if (var0 >= arg0) { goto label_38D1; }
            else { goto label_38BF; }
        }
    }
    
    function func_38DD(var arg0) returns (var r0) { return arg0 + 0x1f & ~0x1f; }
    
    function func_38EE(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x38f9;
        var var2 = arg1;
        var1 = func_3897(var2);
        var2 = 0x3903;
        var var3 = var1;
        var var4 = arg0;
        var2 = func_38A2(var3, var4);
        var temp0 = var2;
        arg0 = temp0;
        var2 = 0x3913;
        var3 = var1;
        var4 = arg0;
        var var5 = arg1 + 0x20;
        func_38B3(var3, var4, var5);
        var2 = 0x391c;
        var3 = var1;
        var2 = func_38DD(var3);
        return arg0 + var2;
    }
    
    function func_3927(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0) {
        var temp0 = arg4;
        var var0 = temp0 + 0x80;
        var var1 = 0x393c;
        var var2 = temp0;
        var var3 = arg0;
        func_35EE(var2, var3);
        var1 = 0x3949;
        var2 = arg4 + 0x20;
        var3 = arg1;
        func_35EE(var2, var3);
        var1 = 0x3956;
        var2 = arg4 + 0x40;
        var3 = arg2;
        func_33F4(var2, var3);
        var temp1 = arg4;
        memory[temp1 + 0x60:temp1 + 0x60 + 0x20] = var0 - temp1;
        var1 = 0x3968;
        var2 = var0;
        var3 = arg3;
        return func_38EE(var2, var3);
    }
    
    function func_39A2(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x39ad;
        var var2 = arg1;
        var1 = func_317D(var2);
        arg1 = var1;
        var1 = 0x39b8;
        var2 = arg0;
        var1 = func_317D(var2);
        arg0 = var1;
        var temp0 = arg1;
        var0 = temp0 - arg0;
    
        if (var0 <= temp0) { return var0; }
    
        var1 = 0x39cf;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3A05(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3a10;
        var var2 = arg1;
        var1 = func_317D(var2);
        arg1 = var1;
        var1 = 0x3a1b;
        var2 = arg0;
        var1 = func_317D(var2);
        arg0 = var1;
    
        if (arg0) { return arg1 / arg0; }
    
        var1 = 0x3a2a;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x12;
        revert(memory[0x00:0x24]);
    }
    
    function func_3A36(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3a41;
        var var2 = arg1;
        var1 = func_317D(var2);
        arg1 = var1;
        var1 = 0x3a4c;
        var2 = arg0;
        var1 = func_317D(var2);
        arg0 = var1;
        var temp0 = arg1;
        var0 = temp0 + arg0;
    
        if (temp0 <= var0) { return var0; }
    
        var1 = 0x3a63;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3A6A(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7200000000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_3A93(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3aa0;
        var var2 = 0x01;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3aab;
        var2 = arg0;
        func_3A6A(var2);
        return arg0 + 0x20;
    }
    
    function func_3AB6(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x3acf;
        var var2 = var0;
        return func_3A93(var2);
    }
    
    function func_3AD6(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7100000000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_3AFF(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3b0c;
        var var2 = 0x01;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3b17;
        var2 = arg0;
        func_3AD6(var2);
        return arg0 + 0x20;
    }
    
    function func_3B22(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x3b3b;
        var var2 = var0;
        return func_3AFF(var2);
    }
    
    function func_3B42(var arg0) returns (var r0) { return arg0 & 0xff00000000000000000000000000000000000000000000000000000000000000; }
    
    function func_3B78(var arg0, var arg1) {
        var var0 = 0x3b89;
        var var1 = 0x3b84;
        var var2 = arg1;
        var1 = func_3B42(var2);
        var0 = func_3B84(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_3B84(var arg0) returns (var r0) { return arg0; }
    
    function func_3B8F(var arg0) returns (var r0) { return arg0 << 0x60; }
    
    function func_3B9C(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3ba7;
        var var2 = arg0;
        return func_3B8F(var2);
    }
    
    function func_3BC0(var arg0, var arg1) {
        var var0 = 0x3bd1;
        var var1 = 0x3bcc;
        var var2 = arg1;
        var1 = func_313F(var2);
        var0 = func_3BCC(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_3BCC(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3bb9;
        var var2 = arg0;
        return func_3B9C(var2);
    }
    
    function func_3BE1(var arg0, var arg1) {
        var var0 = 0x3bf2;
        var var1 = 0x3bed;
        var var2 = arg1;
        var1 = func_317D(var2);
        var0 = func_3BED(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_3BED(var arg0) returns (var r0) { return arg0; }
    
    function func_3C02(var arg0, var arg1) {
        var var0 = 0x3c13;
        var var1 = 0x3c0e;
        var var2 = arg1;
        var1 = func_3391(var2);
        var0 = func_3C0E(var1);
        memory[arg0:arg0 + 0x20] = var0;
    }
    
    function func_3C0E(var arg0) returns (var r0) { return arg0; }
    
    function func_3C19(var arg0, var arg1, var arg2, var arg3, var arg4) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3c25;
        var var2 = arg4;
        var var3 = arg0;
        func_3B78(var2, var3);
        var temp0 = arg4 + 0x01;
        arg4 = temp0;
        var1 = 0x3c35;
        var2 = arg4;
        var3 = arg1;
        func_3BC0(var2, var3);
        var temp1 = arg4 + 0x14;
        arg4 = temp1;
        var1 = 0x3c45;
        var2 = arg4;
        var3 = arg2;
        func_3BE1(var2, var3);
        var temp2 = arg4 + 0x20;
        arg4 = temp2;
        var1 = 0x3c55;
        var2 = arg4;
        var3 = arg3;
        func_3C02(var2, var3);
        return arg4 + 0x20;
    }
    
    function func_3C67(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7300000000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_3C90(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3c9d;
        var var2 = 0x01;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3ca8;
        var2 = arg0;
        func_3C67(var2);
        return arg0 + 0x20;
    }
    
    function func_3CB3(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x3ccc;
        var var2 = var0;
        return func_3C90(var2);
    }
    
    function func_3CD3(var arg0, var arg1) returns (var r0) {
        var var0 = memory[arg1:arg1 + 0x20];
        var var1 = 0x3ce2;
        var var2 = var0;
        func_3151(var2);
        return var0;
    }
    
    function func_3CE8(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
    
        if (arg0 - arg1 i>= 0x20) {
            var var1 = 0x00;
            var var2 = 0x3d0c;
            var var3 = arg0;
            var var4 = arg1 + var1;
            return func_3CD3(var3, var4);
        } else {
            var1 = 0x3cfd;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3D15(var arg0, var arg1) returns (var r0) {
        var var0 = memory[arg1:arg1 + 0x20];
        var var1 = 0x3d24;
        var var2 = var0;
        func_320D(var2);
        return var0;
    }
    
    function func_3D2A(var arg0) returns (var r0) { return arg0 & 0xffffffff; }
    
    function func_3D3A(var arg0) {
        var var0 = 0x3d43;
        var var1 = arg0;
        var0 = func_3D2A(var1);
    
        if (arg0 == var0) { return; }
        else { revert(memory[0x00:0x00]); }
    }
    
    function func_3D51(var arg0, var arg1) returns (var r0) {
        var var0 = memory[arg1:arg1 + 0x20];
        var var1 = 0x3d60;
        var var2 = var0;
        func_3D3A(var2);
        return var0;
    }
    
    function func_3D66(var arg0, var arg1) returns (var r0, var arg0, var arg1) {
        var var0 = 0x00;
        var var1 = var0;
        var var2 = 0x00;
    
        if (arg0 - arg1 i>= 0x60) {
            var var3 = 0x00;
            var var4 = 0x3d8d;
            var var5 = arg0;
            var var6 = arg1 + var3;
            var4 = func_3D15(var5, var6);
            var0 = var4;
            var3 = 0x20;
            var4 = 0x3d9e;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_3D15(var5, var6);
            var1 = var4;
            var3 = 0x40;
            var4 = 0x3daf;
            var5 = arg0;
            var6 = arg1 + var3;
            var4 = func_3D51(var5, var6);
            arg1 = var4;
            arg0 = var1;
            r0 = var0;
            return r0, arg0, arg1;
        } else {
            var3 = 0x3d7e;
            revert(memory[0x00:0x00]);
        }
    }
    
    function func_3DB9(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7400000000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_3DE2(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3def;
        var var2 = 0x01;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3dfa;
        var2 = arg0;
        func_3DB9(var2);
        return arg0 + 0x20;
    }
    
    function func_3E05(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x3e1e;
        var var2 = var0;
        return func_3DE2(var2);
    }
    
    function func_3E25(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3e30;
        var var2 = arg1;
        var1 = func_317D(var2);
        arg1 = var1;
        var1 = 0x3e3b;
        var2 = arg0;
        var1 = func_317D(var2);
        arg0 = var1;
        var temp0 = arg1 * arg0;
        var1 = temp0;
        var2 = 0x3e49;
        var var3 = var1;
        var2 = func_317D(var3);
        var0 = var2;
        var temp1 = arg1;
    
        if (!temp1 | (arg0 == var0 / temp1)) { return var0; }
    
        var2 = 0x3e5f;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3E67(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3e72;
        var var2 = arg0;
        var1 = func_317D(var2);
        arg0 = var1;
    
        if (arg0) { return arg0 - 0x01; }
    
        var1 = 0x3e84;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_3E90(var arg0, var arg1) returns (var r0) { return arg1; }
    
    function func_3E9B(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3ea6;
        var var2 = arg1;
        var1 = func_3897(var2);
        var2 = 0x3eb0;
        var var3 = var1;
        var var4 = arg0;
        var2 = func_3E90(var3, var4);
        var temp0 = var2;
        arg0 = temp0;
        var2 = 0x3ec0;
        var3 = var1;
        var4 = arg0;
        var var5 = arg1 + 0x20;
        func_38B3(var3, var4, var5);
        return arg0 + var1;
    }
    
    function func_3ECC(var arg0, var arg1) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3ed8;
        var var2 = arg1;
        var var3 = arg0;
        return func_3E9B(var2, var3);
    }
    
    function func_3EE3(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x5472616e7366657248656c7065723a204554485f5452414e534645525f464149;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x4c45440000000000000000000000000000000000000000000000000000000000;
    }
    
    function func_3F32(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3f3f;
        var var2 = 0x23;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3f4a;
        var2 = arg0;
        func_3EE3(var2);
        return arg0 + 0x40;
    }
    
    function func_3F55(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x3f6e;
        var var2 = var0;
        return func_3F32(var2);
    }
    
    function func_3F75(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7272727200000000000000000000000000000000000000000000000000000000;
    }
    
    function func_3F9E(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x3fab;
        var var2 = 0x04;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x3fb6;
        var2 = arg0;
        func_3F75(var2);
        return arg0 + 0x20;
    }
    
    function func_3FC1(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x3fda;
        var var2 = var0;
        return func_3F9E(var2);
    }
    
    function func_3FE1(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7373737373730000000000000000000000000000000000000000000000000000;
    }
    
    function func_400A(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x4017;
        var var2 = 0x06;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x4022;
        var2 = arg0;
        func_3FE1(var2);
        return arg0 + 0x20;
    }
    
    function func_402D(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x4046;
        var var2 = var0;
        return func_400A(var2);
    }
    
    function func_404D(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x7171717100000000000000000000000000000000000000000000000000000000;
    }
    
    function func_4076(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x4083;
        var var2 = 0x04;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x408e;
        var2 = arg0;
        func_404D(var2);
        return arg0 + 0x20;
    }
    
    function func_4099(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x40b2;
        var var2 = var0;
        return func_4076(var2);
    }
    
    function func_40B9(var arg0) {
        var temp0 = arg0;
        memory[temp0:temp0 + 0x20] = 0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061;
        memory[temp0 + 0x20:temp0 + 0x20 + 0x20] = 0x6464726573730000000000000000000000000000000000000000000000000000;
    }
    
    function func_4108(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x4115;
        var var2 = 0x26;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x4120;
        var2 = arg0;
        func_40B9(var2);
        return arg0 + 0x40;
    }
    
    function func_412B(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x4144;
        var var2 = var0;
        return func_4108(var2);
    }
    
    function func_414B(var arg0) {}
    
    function func_414E(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x415b;
        var var2 = 0x00;
        var var3 = arg0;
        var1 = func_3E90(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x4166;
        var2 = arg0;
        func_414B(var2);
        return arg0;
    }
    
    function func_4171(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x417c;
        var var2 = arg0;
        return func_414E(var2);
    }
    
    function func_4186(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x4191;
        var var2 = arg0;
        var1 = func_317D(var2);
        arg0 = var1;
    
        if (arg0 - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) { return arg0 + 0x01; }
    
        var1 = 0x41c2;
        memory[0x00:0x20] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
        memory[0x04:0x24] = 0x11;
        revert(memory[0x00:0x24]);
    }
    
    function func_41CE(var arg0) {
        memory[arg0:arg0 + 0x20] = 0x4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572;
    }
    
    function func_41F7(var arg0) returns (var r0) {
        var var0 = 0x00;
        var var1 = 0x4204;
        var var2 = 0x20;
        var var3 = arg0;
        var1 = func_373E(var2, var3);
        var temp0 = var1;
        arg0 = temp0;
        var1 = 0x420f;
        var2 = arg0;
        func_41CE(var2);
        return arg0 + 0x20;
    }
    
    function func_421A(var arg0) returns (var r0) {
        var temp0 = arg0;
        var var0 = temp0 + 0x20;
        memory[temp0:temp0 + 0x20] = var0 - temp0;
        var var1 = 0x4233;
        var var2 = var0;
        return func_41F7(var2);
    }
}
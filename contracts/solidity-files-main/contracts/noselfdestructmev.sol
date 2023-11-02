contract Contract {
    function main() {
        memory[0x40:0x60] = 0x80;
    
        if (msg.data.length < 0x04) { stop(); }
    
        var var0 = msg.data[0x00:0x20] >> 0xe0;
    
        if (0x7b482957 > var0) {
            if (var0 == 0x00) {
                var var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00ad;
                var var2 = 0x04;
                var var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_0097(var2, var3);
                stop();
            } else if (var0 == 0x5ea8d8a4) {
                // Dispatch table entry for GiveWETH(uint256)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x00e8;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                GiveWETH(var2, var3);
                stop();
            } else if (var0 == 0x7148a631) {
                // Dispatch table entry for 0x7148a631 (unknown)
                var1 = msg.value;
            
                if (var1) { revert(memory[0x00:0x00]); }
            
                var1 = 0x0123;
                var2 = 0x04;
                var3 = msg.data.length - var2;
            
                if (var3 < 0x20) { revert(memory[0x00:0x00]); }
            
                func_010D(var2, var3);
                stop();
            } else { stop(); }
        } else if (var0 == 0x7b482957) {
            // Dispatch table entry for withDrawWETH(uint256)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x015e;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            withDrawWETH(var2, var3);
            stop();
        } else if (var0 == 0xc303a9c9) {
            // Dispatch table entry for withDrawETH(uint256)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0199;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x20) { revert(memory[0x00:0x00]); }
        
            withDrawETH(var2, var3);
            stop();
        } else if (var0 == 0xfa461e33) {
            // Dispatch table entry for uniswapV3SwapCallback(int256,int256,bytes)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x0233;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x60) { revert(memory[0x00:0x00]); }
        
            uniswapV3SwapCallback(var2, var3);
            stop();
        } else if (var0 == 0xfa9d5764) {
            // Dispatch table entry for withDrawToken(uint256,address)
            var1 = msg.value;
        
            if (var1) { revert(memory[0x00:0x00]); }
        
            var1 = 0x028e;
            var2 = 0x04;
            var3 = msg.data.length - var2;
        
            if (var3 < 0x40) { revert(memory[0x00:0x00]); }
        
            withDrawToken(var2, var3);
            stop();
        } else { stop(); }
    }
    
    function func_0097(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
        arg1 = msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xe81776157f160a817c8213ab43dd1176f35d9a7e;
    
        if (!arg1) {
            arg1 = msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0x4f2513dcc9a028ba862d0637a797304d9e1f1d3e;
        
            if (arg1) { goto label_0367; }
            else { goto label_0323; }
        } else if (arg1) {
        label_0367:
        
            if (arg1) {
            label_03D9:
                arg1 = address(this);
                var temp0 = arg0;
                var var0 = temp0 & 0x0f;
                var var1 = temp0 / 0x0100;
            
                if (var1 / 0x01000000000000000000000000000000000000000000000000 < block.timestamp) { revert(memory[0x00:0x00]); }
            
                if (var1 / 0x010000000000000000000000000000000000000000 & 0xffffffff < block.number) { revert(memory[0x00:0x00]); }
            
                var1 = var1 & 0xffffffffffffffffffffffffffffffffffffffff;
                var var2 = memory[0x40:0x60];
                var var3 = var2 + 0x1c;
                var var4 = var0;
            
                if (var4 == 0x00) {
                    var temp1 = msg.data[0x24:0x44];
                    var var5 = temp1;
                    var temp2 = var2;
                    memory[temp2:temp2 + 0x20] = 0xa9059cbb;
                    var temp3 = var1;
                    memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = temp3;
                    memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = var5 / 0x0100000000000000000000000000000000;
                    var temp4 = var3;
                    memory[temp2:temp2 + 0x00] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[temp4:temp4 + 0x44]);
                    memory[temp2:temp2 + 0x20] = 0x022c0d9f;
                    var temp5 = var5 & 0xffffffffffffffffffffffffffffffff;
                    var var6 = temp5;
                    var var8 = (var6 * (var6 & 0x0f == 0x00)) / 0x10;
                    var var9 = (var6 * (var6 & 0x0f == 0x01)) / 0x10;
                    memory[temp2 + 0x20:temp2 + 0x20 + 0x20] = var8;
                    memory[temp2 + 0x40:temp2 + 0x40 + 0x20] = var9;
                    memory[temp2 + 0x60:temp2 + 0x60 + 0x20] = arg1;
                    memory[temp2 + 0x80:temp2 + 0x80 + 0x20] = 0x80;
                    memory[temp2 + 0xa0:temp2 + 0xa0 + 0x20] = 0x00;
                    var temp6;
                    temp6, memory[temp2:temp2 + 0x00] = address(temp3).call.gas(msg.gas)(memory[temp4:temp4 + 0xa4]);
                
                    if (temp6 == 0x00) { revert(memory[var2:var2 + 0x00]); }
                
                label_0AFD:
                
                    if (arg0 & 0xf0 != 0xf0) { return; }
                
                    var temp7 = memory[0x40:0x60];
                    var temp8 = msg.data[msg.data.length - 0x20:msg.data.length - 0x20 + 0x20];
                    memory[temp7:temp7 + 0x20] = 0x2e1a7d4d;
                    memory[temp7 + 0x20:temp7 + 0x20 + 0x20] = temp8;
                    memory[temp7:temp7 + 0x00] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[temp7 + 0x1c:temp7 + 0x1c + 0x24]);
                    memory[temp7:temp7 + 0x00] = address(block.coinbase).call.gas(msg.gas).value(temp8)(memory[temp7:temp7 + 0x00]);
                    return;
                } else if (var4 == 0x01) {
                    var temp9 = msg.data[0x24:0x44];
                    var5 = temp9;
                    var temp10 = var2;
                    memory[temp10:temp10 + 0x20] = 0xa9059cbb;
                    var temp11 = var1;
                    memory[temp10 + 0x20:temp10 + 0x20 + 0x20] = temp11;
                    memory[temp10 + 0x40:temp10 + 0x40 + 0x20] = var5 / 0x0100000000000000000000000000000000;
                    var temp12 = var3;
                    memory[temp10:temp10 + 0x00] = address(msg.data[0x44:0x64]).call.gas(msg.gas)(memory[temp12:temp12 + 0x44]);
                    memory[temp10:temp10 + 0x20] = 0x022c0d9f;
                    var temp13 = var5 & 0xffffffffffffffffffffffffffffffff;
                    var6 = temp13;
                    var8 = (var6 * (var6 & 0x0f == 0x00)) / 0x10;
                    var9 = (var6 * (var6 & 0x0f == 0x01)) / 0x10;
                    memory[temp10 + 0x20:temp10 + 0x20 + 0x20] = var8;
                    memory[temp10 + 0x40:temp10 + 0x40 + 0x20] = var9;
                    memory[temp10 + 0x60:temp10 + 0x60 + 0x20] = arg1;
                    memory[temp10 + 0x80:temp10 + 0x80 + 0x20] = 0x80;
                    memory[temp10 + 0xa0:temp10 + 0xa0 + 0x20] = 0x00;
                    var temp14;
                    temp14, memory[temp10:temp10 + 0x00] = address(temp11).call.gas(msg.gas)(memory[temp12:temp12 + 0xa4]);
                
                    if (temp14 != 0x00) { goto label_0AFD; }
                    else { revert(memory[var2:var2 + 0x00]); }
                } else if (var4 == 0x02) {
                    var temp15 = msg.data[0x24:0x44] & 0x0f;
                    var6 = temp15;
                    var5 = msg.data[0x44:0x64];
                    var temp16 = var2;
                    memory[temp16:temp16 + 0x20] = 0x128acb08;
                    memory[temp16 + 0x20:temp16 + 0x20 + 0x20] = arg1;
                    memory[temp16 + 0x40:temp16 + 0x40 + 0x20] = var6;
                    memory[temp16 + 0x60:temp16 + 0x60 + 0x20] = var5;
                    var var7 = var6;
                
                    if (var7 == 0x00) {
                        var temp17 = var2;
                        memory[temp17 + 0x80:temp17 + 0x80 + 0x20] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        memory[temp17 + 0xa0:temp17 + 0xa0 + 0x20] = 0xa0;
                        memory[temp17 + 0xc0:temp17 + 0xc0 + 0x20] = 0x20;
                        memory[temp17 + 0xe0:temp17 + 0xe0 + 0x20] = msg.data[0x24:0x44];
                        var temp18;
                        temp18, memory[temp17:temp17 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0xe4]);
                    
                        if (temp18 != 0x00) {
                        label_071E:
                            goto label_0AFD;
                        } else {
                        label_071A:
                            revert(memory[var2:var2 + 0x00]);
                        }
                    } else {
                        memory[var2 + 0x80:var2 + 0x80 + 0x20] = 0x01000276a4;
                        var temp19 = var2;
                        memory[temp19 + 0xa0:temp19 + 0xa0 + 0x20] = 0xa0;
                        memory[temp19 + 0xc0:temp19 + 0xc0 + 0x20] = 0x20;
                        memory[temp19 + 0xe0:temp19 + 0xe0 + 0x20] = msg.data[0x24:0x44];
                        var temp20;
                        temp20, memory[temp19:temp19 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0xe4]);
                    
                        if (temp20 != 0x00) { goto label_071E; }
                        else { goto label_071A; }
                    }
                } else if (var4 == 0x03) {
                    var temp21 = msg.data[0x24:0x44];
                    var temp22 = temp21 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var5 = temp22;
                    var temp23 = var2;
                    memory[temp23:temp23 + 0x20] = 0xa9059cbb;
                    var temp24 = var1;
                    memory[temp23 + 0x20:temp23 + 0x20 + 0x20] = temp24;
                    memory[temp23 + 0x40:temp23 + 0x40 + 0x20] = temp21 / 0x010000000000000000000000000000000000000000;
                    var temp25 = var3;
                    memory[temp23:temp23 + 0x00] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[temp25:temp25 + 0x44]);
                    var temp26 = msg.data[0x44:0x64];
                    var8 = temp26;
                    memory[temp23:temp23 + 0x20] = 0x022c0d9f;
                    var temp27 = var8 & 0xffffffffffffffffffffffffffffffff;
                    memory[temp23 + 0x20:temp23 + 0x20 + 0x20] = (temp27 * (temp27 & 0x0f == 0x00)) / 0x10;
                    memory[temp23 + 0x40:temp23 + 0x40 + 0x20] = (temp27 * (temp27 & 0x0f == 0x01)) / 0x10;
                    memory[temp23 + 0x60:temp23 + 0x60 + 0x20] = var5;
                    memory[temp23 + 0x80:temp23 + 0x80 + 0x20] = 0x80;
                    memory[temp23 + 0xa0:temp23 + 0xa0 + 0x20] = 0x00;
                    memory[temp23:temp23 + 0x00] = address(temp24).call.gas(msg.gas)(memory[temp25:temp25 + 0xa4]);
                    var temp28 = var8 / 0x0100000000000000000000000000000000;
                    var6 = temp28;
                    var9 = (var6 * (var6 & 0x0f == 0x00)) / 0x10;
                    var var10 = (var6 * (var6 & 0x0f == 0x01)) / 0x10;
                    memory[temp23 + 0x20:temp23 + 0x20 + 0x20] = var9;
                    memory[temp23 + 0x40:temp23 + 0x40 + 0x20] = var10;
                    memory[temp23 + 0x60:temp23 + 0x60 + 0x20] = arg1;
                    memory[temp23 + 0x80:temp23 + 0x80 + 0x20] = 0x80;
                    memory[temp23 + 0xa0:temp23 + 0xa0 + 0x20] = 0x00;
                    var temp29;
                    temp29, memory[temp23:temp23 + 0x00] = address(var5).call.gas(msg.gas)(memory[temp25:temp25 + 0xa4]);
                
                    if (temp29 != 0x00) { goto label_0AFD; }
                    else { revert(memory[var2:var2 + 0x00]); }
                } else if (var4 == 0x04) {
                    var temp30 = msg.data[0x24:0x44];
                    var temp31 = temp30 / 0x010000000000000000000000000000000000000000;
                    var6 = temp31;
                    var temp32 = temp30 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var5 = temp32;
                    var temp33 = msg.data[0x44:0x64];
                    var7 = temp33;
                    var temp34 = var2;
                    memory[temp34:temp34 + 0x20] = 0xa9059cbb;
                    var temp35 = var1;
                    memory[temp34 + 0x20:temp34 + 0x20 + 0x20] = temp35;
                    memory[temp34 + 0x40:temp34 + 0x40 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffff;
                    var temp36 = var3;
                    memory[temp34:temp34 + 0x00] = address(msg.data[0x64:0x84]).call.gas(msg.gas)(memory[temp36:temp36 + 0x44]);
                    memory[temp34:temp34 + 0x20] = 0x022c0d9f;
                    var temp37 = var7 / 0x0100000000000000000000000000000000;
                    var8 = temp37;
                    memory[temp34 + 0x20:temp34 + 0x20 + 0x20] = (var8 * (var8 & 0x0f == 0x00)) / 0x10;
                    memory[temp34 + 0x40:temp34 + 0x40 + 0x20] = (var8 * (var8 & 0x0f == 0x01)) / 0x10;
                    memory[temp34 + 0x60:temp34 + 0x60 + 0x20] = var5;
                    memory[temp34 + 0x80:temp34 + 0x80 + 0x20] = 0x80;
                    memory[temp34 + 0xa0:temp34 + 0xa0 + 0x20] = 0x00;
                    memory[temp34:temp34 + 0x00] = address(temp35).call.gas(msg.gas)(memory[temp36:temp36 + 0xa4]);
                    var10 = (var6 * (var6 & 0x0f == 0x00)) / 0x10;
                    var var11 = (var6 * (var6 & 0x0f == 0x01)) / 0x10;
                    memory[temp34 + 0x20:temp34 + 0x20 + 0x20] = var10;
                    memory[temp34 + 0x40:temp34 + 0x40 + 0x20] = var11;
                    memory[temp34 + 0x60:temp34 + 0x60 + 0x20] = arg1;
                    memory[temp34 + 0x80:temp34 + 0x80 + 0x20] = 0x80;
                    memory[temp34 + 0xa0:temp34 + 0xa0 + 0x20] = 0x00;
                    var temp38;
                    temp38, memory[temp34:temp34 + 0x00] = address(var5).call.gas(msg.gas)(memory[temp36:temp36 + 0xa4]);
                
                    if (temp38 != 0x00) { goto label_0AFD; }
                    else { revert(memory[var2:var2 + 0x00]); }
                } else if (var4 == 0x05) {
                    memory[var2:var2 + 0x20] = 0x128acb08;
                    var temp39 = msg.data[0x24:0x44];
                    var5 = temp39;
                    var6 = var5 & 0x0f;
                    var7 = var5 & 0xf0;
                    var8 = msg.data[0x44:0x64];
                    var9 = var7;
                
                    if (var9 == 0x00) {
                        var temp40 = var2;
                        memory[temp40 + 0x20:temp40 + 0x20 + 0x20] = var5 / 0x0100 & 0xffffffffffffffffffffffffffffffffffffffff;
                        var temp41 = var6;
                        memory[temp40 + 0x40:temp40 + 0x40 + 0x20] = temp41;
                        memory[temp40 + 0x60:temp40 + 0x60 + 0x20] = var8;
                        var9 = temp41;
                    
                        if (var9 == 0x00) {
                        label_0A05:
                            var temp42 = var2;
                            memory[temp42 + 0x80:temp42 + 0x80 + 0x20] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            memory[temp42 + 0xa0:temp42 + 0xa0 + 0x20] = 0xa0;
                            memory[temp42 + 0xc0:temp42 + 0xc0 + 0x20] = 0x40;
                            memory[temp42 + 0xe0:temp42 + 0xe0 + 0x20] = var5;
                            memory[temp42 + 0x0100:temp42 + 0x0100 + 0x20] = msg.data[0x64:0x84];
                            var temp43;
                            temp43, memory[temp42:temp42 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0x0104]);
                        
                            if (temp43 != 0x00) {
                            label_0A57:
                                goto label_0AFD;
                            } else {
                            label_0A53:
                                revert(memory[var2:var2 + 0x00]);
                            }
                        } else {
                        label_09F6:
                            memory[var2 + 0x80:var2 + 0x80 + 0x20] = 0x01000276a4;
                            var temp44 = var2;
                            memory[temp44 + 0xa0:temp44 + 0xa0 + 0x20] = 0xa0;
                            memory[temp44 + 0xc0:temp44 + 0xc0 + 0x20] = 0x40;
                            memory[temp44 + 0xe0:temp44 + 0xe0 + 0x20] = var5;
                            memory[temp44 + 0x0100:temp44 + 0x0100 + 0x20] = msg.data[0x64:0x84];
                            var temp45;
                            temp45, memory[temp44:temp44 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0x0104]);
                        
                            if (temp45 != 0x00) { goto label_0A57; }
                            else { goto label_0A53; }
                        }
                    } else {
                        memory[var2 + 0x20:var2 + 0x20 + 0x20] = arg1;
                        var temp46 = var6;
                        var temp47 = var2;
                        memory[temp47 + 0x40:temp47 + 0x40 + 0x20] = temp46;
                        memory[temp47 + 0x60:temp47 + 0x60 + 0x20] = var8;
                        var9 = temp46;
                    
                        if (var9 == 0x00) { goto label_0A05; }
                        else { goto label_09F6; }
                    }
                } else if (var4 == 0x06) {
                    var temp48 = var2;
                    memory[temp48:temp48 + 0x20] = 0x128acb08;
                    var5 = msg.data[0x24:0x44];
                    var temp49 = var5 & 0x0f;
                    var6 = temp49;
                    var7 = msg.data[0x44:0x64];
                    memory[temp48 + 0x20:temp48 + 0x20 + 0x20] = arg1;
                    memory[temp48 + 0x40:temp48 + 0x40 + 0x20] = var6;
                    memory[temp48 + 0x60:temp48 + 0x60 + 0x20] = var7;
                    var8 = var6;
                
                    if (var8 == 0x00) {
                        var temp50 = var2;
                        memory[temp50 + 0x80:temp50 + 0x80 + 0x20] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        memory[temp50 + 0xa0:temp50 + 0xa0 + 0x20] = 0xa0;
                        memory[temp50 + 0xc0:temp50 + 0xc0 + 0x20] = 0x60;
                        memory[temp50 + 0xe0:temp50 + 0xe0 + 0x20] = var5;
                        memory[temp50 + 0x0100:temp50 + 0x0100 + 0x20] = msg.data[0x64:0x84];
                        memory[temp50 + 0x0120:temp50 + 0x0120 + 0x20] = msg.data[0x84:0xa4];
                        var temp51;
                        temp51, memory[temp50:temp50 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0x0124]);
                    
                        if (temp51 != 0x00) {
                        label_0AF8:
                            goto label_0AFD;
                        } else {
                        label_0AF4:
                            revert(memory[var2:var2 + 0x00]);
                        }
                    } else {
                        memory[var2 + 0x80:var2 + 0x80 + 0x20] = 0x01000276a4;
                        var temp52 = var2;
                        memory[temp52 + 0xa0:temp52 + 0xa0 + 0x20] = 0xa0;
                        memory[temp52 + 0xc0:temp52 + 0xc0 + 0x20] = 0x60;
                        memory[temp52 + 0xe0:temp52 + 0xe0 + 0x20] = var5;
                        memory[temp52 + 0x0100:temp52 + 0x0100 + 0x20] = msg.data[0x64:0x84];
                        memory[temp52 + 0x0120:temp52 + 0x0120 + 0x20] = msg.data[0x84:0xa4];
                        var temp53;
                        temp53, memory[temp52:temp52 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0x0124]);
                    
                        if (temp53 != 0x00) { goto label_0AF8; }
                        else { goto label_0AF4; }
                    }
                } else {
                    var temp54 = var2;
                    memory[temp54:temp54 + 0x20] = 0x128acb08;
                    var5 = msg.data[0x24:0x44];
                    var temp55 = var5 & 0x0f;
                    var6 = temp55;
                    var7 = msg.data[0x44:0x64];
                    memory[temp54 + 0x20:temp54 + 0x20 + 0x20] = arg1;
                    memory[temp54 + 0x40:temp54 + 0x40 + 0x20] = var6;
                    memory[temp54 + 0x60:temp54 + 0x60 + 0x20] = var7;
                    var8 = var6;
                
                    if (var8 == 0x00) {
                        var temp56 = var2;
                        memory[temp56 + 0x80:temp56 + 0x80 + 0x20] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        memory[temp56 + 0xa0:temp56 + 0xa0 + 0x20] = 0xa0;
                        memory[temp56 + 0xc0:temp56 + 0xc0 + 0x20] = 0x40;
                        memory[temp56 + 0xe0:temp56 + 0xe0 + 0x20] = var5;
                        memory[temp56 + 0x0100:temp56 + 0x0100 + 0x20] = msg.data[0x64:0x84];
                        var temp57;
                        temp57, memory[temp56:temp56 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0x0104]);
                    
                        if (temp57 != 0x00) {
                        label_051C:
                            goto label_0AFD;
                        } else {
                        label_0518:
                            revert(memory[var2:var2 + 0x00]);
                        }
                    } else {
                        memory[var2 + 0x80:var2 + 0x80 + 0x20] = 0x01000276a4;
                        var temp58 = var2;
                        memory[temp58 + 0xa0:temp58 + 0xa0 + 0x20] = 0xa0;
                        memory[temp58 + 0xc0:temp58 + 0xc0 + 0x20] = 0x40;
                        memory[temp58 + 0xe0:temp58 + 0xe0 + 0x20] = var5;
                        memory[temp58 + 0x0100:temp58 + 0x0100 + 0x20] = msg.data[0x64:0x84];
                        var temp59;
                        temp59, memory[temp58:temp58 + 0x00] = address(var1).call.gas(msg.gas)(memory[var3:var3 + 0x0104]);
                    
                        if (temp59 != 0x00) { goto label_051C; }
                        else { goto label_0518; }
                    }
                }
            } else {
            label_036C:
                var temp60 = memory[0x40:0x60];
                memory[temp60:temp60 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                var temp61 = temp60 + 0x04;
                var temp62 = temp61 + 0x20;
                memory[temp61:temp61 + 0x20] = temp62 - temp61;
                memory[temp62:temp62 + 0x20] = 0x02;
                var temp63 = temp62 + 0x20;
                memory[temp63:temp63 + 0x20] = 0x6673000000000000000000000000000000000000000000000000000000000000;
                var temp64 = memory[0x40:0x60];
                revert(memory[temp64:temp64 + (temp63 + 0x20) - temp64]);
            }
        } else {
        label_0323:
        
            if (msg.sender == 0xffffffffffffffffffffffffffffffffffffffff & 0xe4a95a1d83e7564096ce04e0ba4ff6edee69c930) { goto label_03D9; }
            else { goto label_036C; }
        }
    }
    
    function GiveWETH(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            arg1 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            var var0 = 0x2e1a7d4d;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var0 & 0xffffffff) << 0xe0;
            var temp1 = temp0 + 0x04;
            memory[temp1:temp1 + 0x20] = arg0;
            var var1 = temp1 + 0x20;
            var var2 = 0x00;
            var var3 = memory[0x40:0x60];
            var var4 = var1 - var3;
            var var5 = var3;
            var var6 = 0x00;
            var var7 = arg1;
            var var8 = !address(var7).code.length;
        
            if (var8) { revert(memory[0x00:0x00]); }
        
            var temp2;
            temp2, memory[var3:var3 + var2] = address(var7).call.gas(msg.gas).value(var6)(memory[var5:var5 + var4]);
            var2 = !temp2;
        
            if (!var2) {
                var temp3 = arg0;
                var temp4 = memory[0x40:0x60];
                var temp5;
                temp5, memory[temp4:temp4 + 0x00] = address(storage[0x01] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp3 * 0x08fc).value(temp3)(memory[temp4:temp4 + memory[0x40:0x60] - temp4]);
                arg1 = !temp5;
            
                if (!arg1) { return; }
            
                var temp6 = returndata.length;
                memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
                revert(memory[0x00:0x00 + returndata.length]);
            } else {
                var temp7 = returndata.length;
                memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp9 = temp8 + 0x04;
            var temp10 = temp9 + 0x20;
            memory[temp9:temp9 + 0x20] = temp10 - temp9;
            memory[temp10:temp10 + 0x20] = 0x04;
            var temp11 = temp10 + 0x20;
            memory[temp11:temp11 + 0x20] = 0x6e6f706500000000000000000000000000000000000000000000000000000000;
            var temp12 = memory[0x40:0x60];
            revert(memory[temp12:temp12 + (temp11 + 0x20) - temp12]);
        }
    }
    
    function func_010D(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            arg1 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            var var0 = 0x2e1a7d4d;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var0 & 0xffffffff) << 0xe0;
            var temp1 = temp0 + 0x04;
            memory[temp1:temp1 + 0x20] = arg0;
            var var1 = temp1 + 0x20;
            var var2 = 0x00;
            var var3 = memory[0x40:0x60];
            var var4 = var1 - var3;
            var var5 = var3;
            var var6 = 0x00;
            var var7 = arg1;
            var var8 = !address(var7).code.length;
        
            if (var8) { revert(memory[0x00:0x00]); }
        
            var temp2;
            temp2, memory[var3:var3 + var2] = address(var7).call.gas(msg.gas).value(var6)(memory[var5:var5 + var4]);
            var2 = !temp2;
        
            if (!var2) {
                var temp3 = arg0;
                var temp4 = memory[0x40:0x60];
                var temp5;
                temp5, memory[temp4:temp4 + 0x00] = address(storage[0x02] & 0xffffffffffffffffffffffffffffffffffffffff).call.gas(!temp3 * 0x08fc).value(temp3)(memory[temp4:temp4 + memory[0x40:0x60] - temp4]);
                arg1 = !temp5;
            
                if (!arg1) { return; }
            
                var temp6 = returndata.length;
                memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
                revert(memory[0x00:0x00 + returndata.length]);
            } else {
                var temp7 = returndata.length;
                memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp9 = temp8 + 0x04;
            var temp10 = temp9 + 0x20;
            memory[temp9:temp9 + 0x20] = temp10 - temp9;
            memory[temp10:temp10 + 0x20] = 0x04;
            var temp11 = temp10 + 0x20;
            memory[temp11:temp11 + 0x20] = 0x6e6f706500000000000000000000000000000000000000000000000000000000;
            var temp12 = memory[0x40:0x60];
            revert(memory[temp12:temp12 + (temp11 + 0x20) - temp12]);
        }
    }
    
    function withDrawWETH(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            arg1 = 0xffffffffffffffffffffffffffffffffffffffff & 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            var var0 = 0x2e1a7d4d;
            var temp0 = memory[0x40:0x60];
            memory[temp0:temp0 + 0x20] = (var0 & 0xffffffff) << 0xe0;
            var temp1 = temp0 + 0x04;
            memory[temp1:temp1 + 0x20] = arg0;
            var var1 = temp1 + 0x20;
            var var2 = 0x00;
            var var3 = memory[0x40:0x60];
            var var4 = var1 - var3;
            var var5 = var3;
            var var6 = 0x00;
            var var7 = arg1;
            var var8 = !address(var7).code.length;
        
            if (var8) { revert(memory[0x00:0x00]); }
        
            var temp2;
            temp2, memory[var3:var3 + var2] = address(var7).call.gas(msg.gas).value(var6)(memory[var5:var5 + var4]);
            var2 = !temp2;
        
            if (!var2) {
                var temp3 = arg0;
                var temp4 = memory[0x40:0x60];
                var temp5;
                temp5, memory[temp4:temp4 + 0x00] = address(msg.sender).call.gas(!temp3 * 0x08fc).value(temp3)(memory[temp4:temp4 + memory[0x40:0x60] - temp4]);
                arg1 = !temp5;
            
                if (!arg1) { return; }
            
                var temp6 = returndata.length;
                memory[0x00:0x00 + temp6] = returndata[0x00:0x00 + temp6];
                revert(memory[0x00:0x00 + returndata.length]);
            } else {
                var temp7 = returndata.length;
                memory[0x00:0x00 + temp7] = returndata[0x00:0x00 + temp7];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp8 = memory[0x40:0x60];
            memory[temp8:temp8 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp9 = temp8 + 0x04;
            var temp10 = temp9 + 0x20;
            memory[temp9:temp9 + 0x20] = temp10 - temp9;
            memory[temp10:temp10 + 0x20] = 0x04;
            var temp11 = temp10 + 0x20;
            memory[temp11:temp11 + 0x20] = 0x6e6f706500000000000000000000000000000000000000000000000000000000;
            var temp12 = memory[0x40:0x60];
            revert(memory[temp12:temp12 + (temp11 + 0x20) - temp12]);
        }
    }
    
    function withDrawETH(var arg0, var arg1) {
        arg0 = msg.data[arg0:arg0 + 0x20];
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var temp0 = arg0;
            var temp1 = memory[0x40:0x60];
            var temp2;
            temp2, memory[temp1:temp1 + 0x00] = address(msg.sender).call.gas(!temp0 * 0x08fc).value(temp0)(memory[temp1:temp1 + memory[0x40:0x60] - temp1]);
            arg1 = !temp2;
        
            if (!arg1) { return; }
        
            var temp3 = returndata.length;
            memory[0x00:0x00 + temp3] = returndata[0x00:0x00 + temp3];
            revert(memory[0x00:0x00 + returndata.length]);
        } else {
            var temp4 = memory[0x40:0x60];
            memory[temp4:temp4 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp5 = temp4 + 0x04;
            var temp6 = temp5 + 0x20;
            memory[temp5:temp5 + 0x20] = temp6 - temp5;
            memory[temp6:temp6 + 0x20] = 0x04;
            var temp7 = temp6 + 0x20;
            memory[temp7:temp7 + 0x20] = 0x6e6f706500000000000000000000000000000000000000000000000000000000;
            var temp8 = memory[0x40:0x60];
            revert(memory[temp8:temp8 + (temp7 + 0x20) - temp8]);
        }
    }
    
    function uniswapV3SwapCallback(var arg0, var arg1) {
        var temp0 = arg0;
        var temp1 = temp0 + arg1;
        var temp2 = temp0 + 0x20;
        arg0 = msg.data[temp0:temp0 + 0x20];
        var temp3 = temp2 + 0x20;
        arg1 = msg.data[temp2:temp2 + 0x20];
        var var0 = temp1;
        var var1 = temp0;
        var var3 = msg.data[temp3:temp3 + 0x20];
        var var2 = temp3 + 0x20;
    
        if (var3 > 0x0100000000) { revert(memory[0x00:0x00]); }
    
        var temp4 = var1 + var3;
        var3 = temp4;
    
        if (var3 + 0x20 > var0) { revert(memory[0x00:0x00]); }
    
        var temp5 = var3;
        var temp6 = msg.data[temp5:temp5 + 0x20];
        var3 = temp6;
        var temp7 = var2;
        var2 = temp5 + 0x20;
        var var4 = temp7;
    
        if ((var3 > 0x0100000000) | (var2 + var3 > var0)) { revert(memory[0x00:0x00]); }
    
        var1 = var3;
        var0 = var2;
        var2 = msg.sender;
        var3 = 0x00;
        var4 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
        var var5 = 0x0dfe1681;
        var temp8 = memory[0x40:0x60];
        memory[temp8:temp8 + 0x20] = (var5 & 0xffffffff) << 0xe0;
        var var6 = temp8 + 0x04;
        var var7 = 0x20;
        var var8 = memory[0x40:0x60];
        var var9 = var6 - var8;
        var var10 = var8;
        var var11 = var4;
        var var12 = !address(var11).code.length;
    
        if (var12) { revert(memory[0x00:0x00]); }
    
        var temp9;
        temp9, memory[var8:var8 + var7] = address(var11).staticcall.gas(msg.gas)(memory[var10:var10 + var9]);
        var7 = !temp9;
    
        if (!var7) {
            var4 = memory[0x40:0x60];
            var5 = returndata.length;
        
            if (var5 < 0x20) { revert(memory[0x00:0x00]); }
        
            var3 = memory[var4:var4 + 0x20];
            var4 = 0x00;
            var5 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
            var6 = 0xd21220a7;
            var temp10 = memory[0x40:0x60];
            memory[temp10:temp10 + 0x20] = (var6 & 0xffffffff) << 0xe0;
            var7 = temp10 + 0x04;
            var8 = 0x20;
            var9 = memory[0x40:0x60];
            var10 = var7 - var9;
            var11 = var9;
            var12 = var5;
            var var13 = !address(var12).code.length;
        
            if (var13) { revert(memory[0x00:0x00]); }
        
            var temp11;
            temp11, memory[var9:var9 + var8] = address(var12).staticcall.gas(msg.gas)(memory[var11:var11 + var10]);
            var8 = !temp11;
        
            if (!var8) {
                var5 = memory[0x40:0x60];
                var6 = returndata.length;
            
                if (var6 < 0x20) { revert(memory[0x00:0x00]); }
            
                var4 = memory[var5:var5 + 0x20];
                var5 = 0x00;
                var6 = var2 & 0xffffffffffffffffffffffffffffffffffffffff;
                var7 = 0xddca3f43;
                var temp12 = memory[0x40:0x60];
                memory[temp12:temp12 + 0x20] = (var7 & 0xffffffff) << 0xe0;
                var8 = temp12 + 0x04;
                var9 = 0x20;
                var10 = memory[0x40:0x60];
                var11 = var8 - var10;
                var12 = var10;
                var13 = var6;
                var var14 = !address(var13).code.length;
            
                if (var14) { revert(memory[0x00:0x00]); }
            
                var temp13;
                temp13, memory[var10:var10 + var9] = address(var13).staticcall.gas(msg.gas)(memory[var12:var12 + var11]);
                var9 = !temp13;
            
                if (!var9) {
                    var6 = memory[0x40:0x60];
                    var7 = returndata.length;
                
                    if (var7 < 0x20) { revert(memory[0x00:0x00]); }
                
                    var temp14 = memory[var6:var6 + 0x20];
                    var5 = temp14;
                    var6 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54 << 0x00;
                    var temp15 = memory[0x40:0x60] + 0x20;
                    memory[temp15:temp15 + 0x20] = var3 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var temp16 = temp15 + 0x20;
                    memory[temp16:temp16 + 0x20] = var4 & 0xffffffffffffffffffffffffffffffffffffffff;
                    var temp17 = temp16 + 0x20;
                    memory[temp17:temp17 + 0x20] = var5 & 0xffffff;
                    var temp18 = temp17 + 0x20;
                    var temp19 = memory[0x40:0x60];
                    memory[temp19:temp19 + 0x20] = temp18 - temp19 - 0x20;
                    memory[0x40:0x60] = temp18;
                    var temp20 = keccak256(memory[temp19 + 0x20:temp19 + 0x20 + memory[temp19:temp19 + 0x20]]);
                    var temp21 = memory[0x40:0x60] + 0x20;
                    memory[temp21:temp21 + 0x20] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    var temp22 = temp21 + 0x01;
                    memory[temp22:temp22 + 0x20] = (0xffffffffffffffffffffffffffffffffffffffff & 0x1f98431c8ad98523631ae4a59f267346ea31f984) << 0x60;
                    var temp23 = temp22 + 0x14;
                    memory[temp23:temp23 + 0x20] = temp20;
                    var temp24 = temp23 + 0x20;
                    memory[temp24:temp24 + 0x20] = var6;
                    var temp25 = temp24 + 0x20;
                    var temp26 = memory[0x40:0x60];
                    memory[temp26:temp26 + 0x20] = temp25 - temp26 - 0x20;
                    memory[0x40:0x60] = temp25;
                    var7 = keccak256(memory[temp26 + 0x20:temp26 + 0x20 + memory[temp26:temp26 + 0x20]]) >> 0x00;
                
                    if (var7 & 0xffffffffffffffffffffffffffffffffffffffff == msg.sender) {
                        var8 = 0x00;
                        var9 = var8;
                        var10 = 0x00;
                    
                        if (arg0 i< var10) {
                            var10 = 0x00 - arg0;
                            var9 = arg1;
                            var8 = var4;
                            var temp27 = msg.data[0x84:0xa4];
                            var12 = temp27 & 0xf0;
                            var temp28 = temp27 / 0x0100;
                            var temp29 = temp28 / 0x010000000000000000000000000000000000000000;
                            var14 = temp29 & 0x0f;
                            var13 = temp29 / 0x10;
                            var var15 = memory[0x40:0x60];
                            var11 = temp28 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var var16 = var12;
                        
                            if (var16 == 0x00) {
                            label_15E8:
                                var var17 = msg.data[0xa4:0xc4];
                            
                                if (var10 < var13) { revert(memory[var15:var15 + 0x00]); }
                            
                                var temp30 = var15;
                                memory[temp30:temp30 + 0x20] = 0x022c0d9f;
                                var temp31 = var14;
                                var temp32 = var17;
                                memory[temp30 + 0x20:temp30 + 0x20 + 0x20] = temp32 * (temp31 == 0x00);
                                memory[temp30 + 0x40:temp30 + 0x40 + 0x20] = temp32 * (temp31 == 0x01);
                                memory[temp30 + 0x60:temp30 + 0x60 + 0x20] = address(this);
                                memory[temp30 + 0x80:temp30 + 0x80 + 0x20] = 0x80;
                                memory[temp30 + 0xa0:temp30 + 0xa0 + 0x20] = 0x00;
                                var temp33;
                                temp33, memory[temp30:temp30 + 0x00] = address(var11).call.gas(msg.gas)(memory[temp30 + 0x1c:temp30 + 0x1c + 0xa4]);
                            
                                if (temp33 == 0x00) { revert(memory[var15:var15 + 0x00]); }
                            
                                // Error: StackRead before write???
                                var var18;
                                var temp34 = var15;
                                memory[temp34:temp34 + 0x20] = 0xa9059cbb;
                                memory[temp34 + 0x20:temp34 + 0x20 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
                                memory[temp34 + 0x40:temp34 + 0x40 + 0x20] = var9;
                                var temp35;
                                temp35, memory[temp34:temp34 + 0x00] = address(var8).call.gas(msg.gas)(memory[temp34 + 0x1c:temp34 + 0x1c + 0x44]);
                            
                                if (temp35 == 0x00) { revert(memory[var15:var15 + 0x00]); }
                            
                            label_18A8:
                                return;
                            } else {
                            label_1516:
                            
                                if (var16 == 0x10) {
                                    var17 = msg.data[0xa4:0xc4];
                                
                                    if (var10 < var13) { revert(memory[var15:var15 + 0x00]); }
                                
                                    var temp36 = var15;
                                    memory[temp36:temp36 + 0x20] = 0xa9059cbb;
                                    memory[temp36 + 0x20:temp36 + 0x20 + 0x20] = var11;
                                    memory[temp36 + 0x40:temp36 + 0x40 + 0x20] = var17;
                                    var temp37;
                                    temp37, memory[temp36:temp36 + 0x00] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[temp36 + 0x1c:temp36 + 0x1c + 0x44]);
                                
                                    if (temp37 == 0x00) { revert(memory[var15:var15 + 0x00]); }
                                
                                    var temp38 = var15;
                                    memory[temp38:temp38 + 0x20] = 0x022c0d9f;
                                    var temp39 = var14;
                                    var temp40 = var9;
                                    memory[temp38 + 0x20:temp38 + 0x20 + 0x20] = temp40 * (temp39 == 0x00);
                                    memory[temp38 + 0x40:temp38 + 0x40 + 0x20] = temp40 * (temp39 == 0x01);
                                    memory[temp38 + 0x60:temp38 + 0x60 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp38 + 0x80:temp38 + 0x80 + 0x20] = 0x80;
                                    memory[temp38 + 0xa0:temp38 + 0xa0 + 0x20] = 0x00;
                                    var temp41;
                                    temp41, memory[temp38:temp38 + 0x00] = address(var11).call.gas(msg.gas)(memory[temp38 + 0x1c:temp38 + 0x1c + 0xa4]);
                                
                                    if (temp41 != 0x00) { goto label_18A8; }
                                    else { revert(memory[var15:var15 + 0x00]); }
                                } else if (var16 == 0x20) {
                                    if (var10 < var13) { revert(memory[var15:var15 + 0x00]); }
                                
                                    var temp42 = var15;
                                    memory[temp42:temp42 + 0x20] = 0xa9059cbb;
                                    memory[temp42 + 0x20:temp42 + 0x20 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp42 + 0x40:temp42 + 0x40 + 0x20] = var9;
                                    var temp43;
                                    temp43, memory[temp42:temp42 + 0x00] = address(var8).call.gas(msg.gas)(memory[temp42 + 0x1c:temp42 + 0x1c + 0x44]);
                                
                                    if (temp43 != 0x00) { goto label_18A8; }
                                    else { revert(memory[var15:var15 + 0x00]); }
                                } else if (var16 == 0x30) {
                                    var17 = msg.data[0xa4:0xc4];
                                
                                    if (var10 < var13) { revert(memory[var15:var15 + 0x00]); }
                                
                                    var temp44 = var15;
                                    memory[temp44:temp44 + 0x20] = 0xa9059cbb;
                                    memory[temp44 + 0x20:temp44 + 0x20 + 0x20] = var11;
                                    memory[temp44 + 0x40:temp44 + 0x40 + 0x20] = var17;
                                    var temp45;
                                    temp45, memory[temp44:temp44 + 0x00] = address(msg.data[0xc4:0xe4]).call.gas(msg.gas)(memory[temp44 + 0x1c:temp44 + 0x1c + 0x44]);
                                
                                    if (temp45 == 0x00) { revert(memory[var15:var15 + 0x00]); }
                                
                                    var temp46 = var15;
                                    memory[temp46:temp46 + 0x20] = 0x022c0d9f;
                                    var temp47 = var14;
                                    var temp48 = var9;
                                    memory[temp46 + 0x20:temp46 + 0x20 + 0x20] = temp48 * (temp47 == 0x00);
                                    memory[temp46 + 0x40:temp46 + 0x40 + 0x20] = temp48 * (temp47 == 0x01);
                                    memory[temp46 + 0x60:temp46 + 0x60 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp46 + 0x80:temp46 + 0x80 + 0x20] = 0x80;
                                    memory[temp46 + 0xa0:temp46 + 0xa0 + 0x20] = 0x00;
                                    var temp49;
                                    temp49, memory[temp46:temp46 + 0x00] = address(var11).call.gas(msg.gas)(memory[temp46 + 0x1c:temp46 + 0x1c + 0xa4]);
                                
                                    if (temp49 != 0x00) { goto label_18A8; }
                                    else { revert(memory[var15:var15 + 0x00]); }
                                } else if (var16 == 0x40) {
                                    if (var9 > var13) { revert(memory[var15:var15 + 0x00]); }
                                
                                    var temp50 = var15;
                                    memory[temp50:temp50 + 0x20] = 0xa9059cbb;
                                    memory[temp50 + 0x20:temp50 + 0x20 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp50 + 0x40:temp50 + 0x40 + 0x20] = var9;
                                    var temp51;
                                    temp51, memory[temp50:temp50 + 0x00] = address(var8).call.gas(msg.gas)(memory[temp50 + 0x1c:temp50 + 0x1c + 0x44]);
                                
                                    if (temp51 != 0x00) { goto label_18A8; }
                                    else { revert(memory[var15:var15 + 0x00]); }
                                } else if (var10 >= var13) {
                                    var temp52 = msg.data[0xa4:0xc4] & 0x0f;
                                    var17 = temp52;
                                    var temp53 = var15;
                                    memory[temp53:temp53 + 0x20] = 0x128acb08;
                                    memory[temp53 + 0x20:temp53 + 0x20 + 0x20] = var7 & 0xffffffffffffffffffffffffffffffffffffffff;
                                    memory[temp53 + 0x40:temp53 + 0x40 + 0x20] = var17;
                                    memory[temp53 + 0x60:temp53 + 0x60 + 0x20] = ~var9 + 0x01;
                                    var18 = var17;
                                
                                    if (var18 == 0x00) {
                                        var temp54 = var15;
                                        memory[temp54 + 0x80:temp54 + 0x80 + 0x20] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                        memory[temp54 + 0xa0:temp54 + 0xa0 + 0x20] = 0xa0;
                                        memory[temp54 + 0xc0:temp54 + 0xc0 + 0x20] = 0x20;
                                        memory[temp54 + 0xe0:temp54 + 0xe0 + 0x20] = msg.data[0xa4:0xc4];
                                        var temp55;
                                        temp55, memory[temp54:temp54 + 0x00] = address(var11).call.gas(msg.gas)(memory[temp54 + 0x1c:temp54 + 0x1c + 0xe4]);
                                    
                                        if (temp55 != 0x00) {
                                        label_15E1:
                                            goto label_18A8;
                                        } else {
                                        label_15DD:
                                            revert(memory[var15:var15 + 0x00]);
                                        }
                                    } else {
                                        memory[var15 + 0x80:var15 + 0x80 + 0x20] = 0x01000276a4;
                                        var temp56 = var15;
                                        memory[temp56 + 0xa0:temp56 + 0xa0 + 0x20] = 0xa0;
                                        memory[temp56 + 0xc0:temp56 + 0xc0 + 0x20] = 0x20;
                                        memory[temp56 + 0xe0:temp56 + 0xe0 + 0x20] = msg.data[0xa4:0xc4];
                                        var temp57;
                                        temp57, memory[temp56:temp56 + 0x00] = address(var11).call.gas(msg.gas)(memory[temp56 + 0x1c:temp56 + 0x1c + 0xe4]);
                                    
                                        if (temp57 != 0x00) { goto label_15E1; }
                                        else { goto label_15DD; }
                                    }
                                } else { revert(memory[var15:var15 + 0x00]); }
                            }
                        } else {
                            var11 = var3;
                            var12 = arg0;
                            var13 = 0x00 - arg1;
                            var10 = var13;
                            var9 = var12;
                            var8 = var11;
                            var temp58 = msg.data[0x84:0xa4];
                            var12 = temp58 & 0xf0;
                            var temp59 = temp58 / 0x0100;
                            var temp60 = temp59 / 0x010000000000000000000000000000000000000000;
                            var14 = temp60 & 0x0f;
                            var13 = temp60 / 0x10;
                            var15 = memory[0x40:0x60];
                            var11 = temp59 & 0xffffffffffffffffffffffffffffffffffffffff;
                            var16 = var12;
                        
                            if (var16 == 0x00) { goto label_15E8; }
                            else { goto label_1516; }
                        }
                    } else {
                        var temp61 = memory[0x40:0x60];
                        memory[temp61:temp61 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
                        var temp62 = temp61 + 0x04;
                        var temp63 = temp62 + 0x20;
                        memory[temp62:temp62 + 0x20] = temp63 - temp62;
                        memory[temp63:temp63 + 0x20] = 0x05;
                        var temp64 = temp63 + 0x20;
                        memory[temp64:temp64 + 0x20] = 0x6661646472000000000000000000000000000000000000000000000000000000;
                        var temp65 = memory[0x40:0x60];
                        revert(memory[temp65:temp65 + (temp64 + 0x20) - temp65]);
                    }
                } else {
                    var temp66 = returndata.length;
                    memory[0x00:0x00 + temp66] = returndata[0x00:0x00 + temp66];
                    revert(memory[0x00:0x00 + returndata.length]);
                }
            } else {
                var temp67 = returndata.length;
                memory[0x00:0x00 + temp67] = returndata[0x00:0x00 + temp67];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp68 = returndata.length;
            memory[0x00:0x00 + temp68] = returndata[0x00:0x00 + temp68];
            revert(memory[0x00:0x00 + returndata.length]);
        }
    }
    
    function withDrawToken(var arg0, var arg1) {
        var temp0 = arg0;
        arg0 = msg.data[temp0:temp0 + 0x20];
        arg1 = msg.data[temp0 + 0x20:temp0 + 0x20 + 0x20] & 0xffffffffffffffffffffffffffffffffffffffff;
    
        if (msg.sender == storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff) {
            var var0 = arg1 & 0xffffffffffffffffffffffffffffffffffffffff;
            var var1 = 0xa9059cbb;
            var temp1 = memory[0x40:0x60];
            memory[temp1:temp1 + 0x20] = (var1 & 0xffffffff) << 0xe0;
            var temp2 = temp1 + 0x04;
            memory[temp2:temp2 + 0x20] = storage[0x00] & 0xffffffffffffffffffffffffffffffffffffffff;
            var temp3 = temp2 + 0x20;
            memory[temp3:temp3 + 0x20] = arg0;
            var var2 = temp3 + 0x20;
            var var3 = 0x20;
            var var4 = memory[0x40:0x60];
            var var5 = var2 - var4;
            var var6 = var4;
            var var7 = 0x00;
            var var8 = var0;
            var var9 = !address(var8).code.length;
        
            if (var9) { revert(memory[0x00:0x00]); }
        
            var temp4;
            temp4, memory[var4:var4 + var3] = address(var8).call.gas(msg.gas).value(var7)(memory[var6:var6 + var5]);
            var3 = !temp4;
        
            if (!var3) {
                var0 = memory[0x40:0x60];
                var1 = returndata.length;
            
                if (var1 >= 0x20) { return; }
                else { revert(memory[0x00:0x00]); }
            } else {
                var temp5 = returndata.length;
                memory[0x00:0x00 + temp5] = returndata[0x00:0x00 + temp5];
                revert(memory[0x00:0x00 + returndata.length]);
            }
        } else {
            var temp6 = memory[0x40:0x60];
            memory[temp6:temp6 + 0x20] = 0x08c379a000000000000000000000000000000000000000000000000000000000;
            var temp7 = temp6 + 0x04;
            var temp8 = temp7 + 0x20;
            memory[temp7:temp7 + 0x20] = temp8 - temp7;
            memory[temp8:temp8 + 0x20] = 0x04;
            var temp9 = temp8 + 0x20;
            memory[temp9:temp9 + 0x20] = 0x6e6f706500000000000000000000000000000000000000000000000000000000;
            var temp10 = memory[0x40:0x60];
            revert(memory[temp10:temp10 + (temp9 + 0x20) - temp10]);
        }
    }
}

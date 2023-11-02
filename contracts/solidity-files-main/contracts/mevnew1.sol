contract Contract {
    function main() {
        if (msg.sender == 0x77ad3a15b78101883af36ad4a875e17c86ac65d1) {
        label_003A:
            // Error: Could not resolve jump destination!
        } else if (msg.sender == 0x77223f67d845e3cbcd9cc19287e24e71f7228888) { goto label_003A; }
        else if ((tx.origin == 0x77223f67d845e3cbcd9cc19287e24e71f7228888) | (tx.origin == 0x77ad3a15b78101883af36ad4a875e17c86ac65d1)) {
            var var0 = msg.data[0x84:0xa4] >> 0xf8;
            var var1 = msg.data[0x85:0xa5] >> 0x60;
            var var2 = msg.data[0x99:0xb9] >> 0xf0;
            var var3 = var0;
        
            if (var3 == 0x0c) {
                var var4 = msg.data[0x24:0x44];
                var var5 = 0x077b;
                var var6 = var2;
                var var7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                var var8 = var1;
                func_06EA(var6, var7, var8);
            
            label_077B:
                memory[0x00:0x20] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = address(this);
                memory[0x24:0x44] = msg.sender;
                memory[0x44:0x64] = var4;
                var temp0;
                temp0, memory[0x00:0x00] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call.gas(msg.gas)(memory[0x00:0x64]);
                stop();
            } else if (var3 == 0x0d) {
                var4 = var1;
                var5 = msg.data[0x04:0x24];
                var6 = 0x07cb;
                var7 = var2;
                var8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                var var9 = var4;
                func_06EA(var7, var8, var9);
            
            label_07CB:
                memory[0x00:0x20] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                memory[0x04:0x24] = msg.sender;
                memory[0x24:0x44] = var5;
                var temp1;
                temp1, memory[0x00:0x00] = address(var4).call.gas(msg.gas)(memory[0x00:0x44]);
                stop();
            } else if (var3 == 0x0e) {
                var4 = msg.data[0x04:0x24];
                var5 = 0x077b;
                var6 = var2;
                var7 = var1;
                var8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                func_06EA(var6, var7, var8);
                goto label_077B;
            } else if (var3 == 0x0f) {
                var4 = var1;
                var5 = msg.data[0x24:0x44];
                var6 = 0x07cb;
                var7 = var2;
                var8 = var4;
                var9 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x11) {
                var4 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                var5 = msg.data[0x24:0x44];
                var6 = 0x07cb;
                var7 = var2;
                var8 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                var9 = var1;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x12) {
                var4 = var1;
                var5 = msg.data[0x04:0x24];
                var6 = 0x07cb;
                var7 = var2;
                var8 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                var9 = var4;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x13) {
                var4 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                var5 = msg.data[0x04:0x24];
                var6 = 0x07cb;
                var7 = var2;
                var8 = var1;
                var9 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x14) {
                var4 = var1;
                var5 = msg.data[0x24:0x44];
                var6 = 0x07cb;
                var7 = var2;
                var8 = var4;
                var9 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x21) {
                var4 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                var5 = msg.data[0x24:0x44];
                var6 = 0x07cb;
                var7 = var2;
                var8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                var9 = var1;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x22) {
                var4 = var1;
                var5 = msg.data[0x04:0x24];
                var6 = 0x07cb;
                var7 = var2;
                var8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                var9 = var4;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x23) {
                var4 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                var5 = msg.data[0x04:0x24];
                var6 = 0x07cb;
                var7 = var2;
                var8 = var1;
                var9 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else if (var3 == 0x24) {
                var4 = var1;
                var5 = msg.data[0x24:0x44];
                var6 = 0x07cb;
                var7 = var2;
                var8 = var4;
                var9 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                func_06EA(var7, var8, var9);
                goto label_07CB;
            } else { revert(memory[0x00:0x00]); }
        } else { revert(memory[0x00:0x00]); }
    }
    
    function func_06EA(var arg0, var arg1, var arg2) {
        memory[0x00:0x20] = arg2;
        memory[0x20:0x40] = arg1;
        memory[0x40:0x60] = arg0;
        var temp0 = keccak256(memory[0x00:0x60]);
        memory[0x00:0x20] = 0xff00000000000000000000000000000000000000000000000000000000000000;
        memory[0x01:0x21] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000;
        memory[0x15:0x35] = temp0;
        memory[0x35:0x55] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
    
        if (msg.sender == (keccak256(memory[0x00:0x55]) << 0x60) >> 0x60) { return; }
        else { revert(memory[0x00:0x00]); }
    }
}

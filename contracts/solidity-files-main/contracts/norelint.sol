// Decompiled by library.dedaub.com
// 2023.05.18 05:14 UTC
// Compiled using the solidity compiler version 0.8.17


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint256) _getImplementation; // STORAGE[0x1]
uint256 _deploy; // STORAGE[0x0] bytes 0 to 19


// Events
Deployed(address);

function () public payable { 
    revert();
}

function deploy(uint256 varg0, bytes varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg1 <= 0xffffffffffffffff);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= 0xffffffffffffffff);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(msg.sender == _deploy);
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = 0;
    while (v1 < v3.length) {
        MEM[v1 + (32 + MEM[64])] = v3[v1];
        v1 += 32;
    }
    MEM[32 + MEM[64] + v3.length] = 0;
    v4 = create.code(v0.data, v0.length).value(0);
    _getImplementation[address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(this << 96), varg0, keccak256(MEM[(32 + MEM[64]) len 0x1d])))] = address(v4) | bytes12(_getImplementation[address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(this << 96), varg0, keccak256(MEM[(32 + MEM[64]) len 0x1d])))]);
    require(address(CREATE2(0x0, v3.data, v3.length, varg0)) == address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(this << 96), varg0, keccak256(MEM[(32 + MEM[64]) len 0x1d]))), Error('Failed to deploy the new metamorphic contract.'));
    emit Deployed(address(CREATE2(0x0, v3.data, v3.length, varg0)));
}

function getImplementation() public payable { 
    return address(_getImplementation[msg.sender]);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x61ff715f == function_selector >> 224) {
            deploy(uint256,bytes);
        } else if (0xaaf10f42 == function_selector >> 224) {
            getImplementation();
        }
    }
    ();
}

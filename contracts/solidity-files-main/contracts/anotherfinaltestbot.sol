// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    uint256 private ___function_selector__; // STORAGE[0x0]

    function myFunction(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private {
        if (varg2 >> 5 == 7) {
            bytes memory data = msg.data;
            assembly {
                mstore(0x12, mload(add(data, add(0x20, varg0))))
                mstore(0x32, mload(add(data, add(0x40, varg0))))
            }
            uint256 v0 = varg0 + 20 + 20;
            {
                bytes memory data = msg.data;
                assembly {
                    let v1 := add(mul(0x20, sub(0x1, byte(shr(0x1f, mload(add(data, add(v0, 0x20))))), 0x1)), add(v0, 0x21))
                    mstore(sub(0x20, byte(mload(add(data, add(v0, 0x20)))), 0x20), byte(mload(add(data, add(v0, 0x20)))), v1)
                }
                uint256 v1 = v0;
            }
        } else {
            bytes memory code = this.code;
            assembly {
                mstore(0x12, mload(add(code, add(0xdd6, mul(div(varg2, 0x20), 0x14)))))
            }
            bytes memory data = msg.data;
            assembly {
                mstore(0x12, mload(add(data, add(0x20, varg0))))
            }
            uint256 v0 = varg0 + 20;
        }
        if (varg1 == 0) {
            bytes memory data = msg.data;
            assembly {
                let v1 := add(mul(0x20, sub(0x1, byte(shr(0x1f, mload(add(data, add(v0, 0x20))))), 0x1)), add(v0, 0x21))
                mstore(sub(0x20, byte(mload(add(data, add(v0, 0x20)))), 0x20), byte(mload(add(data, add(v0, 0x20)))), v1)
            }
            uint256 v2 = v0 + (uint8(msg.data[v0]));
        } else {
            bytes memory data = msg.data;
            assembly {
                let v1 := add(mul(0x20, sub(0x1, byte(shr(0x1f, mload(add(data, add(v0, 0x20))))), 0x1)), add(v0, 0x21))
                mstore(sub(0x20, byte(mload(add(data, add(v0, 0x20)))), 0x20), byte(mload(add(data, add(v0, 0x20)))), v1)
            }
            uint256 v2 = v0 + (uint8(msg.data[v0]));
        }
        uint256 v3 = (varg2 >> 4) & 0x1;
        if ((varg2 >> 2) & 0x3 != 0) {
            ___function_selector__ = varg3;
            if (v3 != 0) {
                (bool v5, ) = varg3.swap{gas: gasleft()}(this, v3, 0, 0x1000276a4, 160, 64, varg0, varg3);
                require(v5, string(abi.encodePacked("Error in swap with selector ", bytes4(___function_selector__))), RETURNDATASIZE());
                goto Label_1239;
            } else {
                (bool v7, ) = varg3.swap{gas: gasleft()}(this, 0, 0, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, 64, varg0, varg3);
                require(v7, string(abi.encodePacked("Error in swap with selector ", bytes4(___function_selector__))), RETURNDATASIZE());
            }
            return (1, v0 + uint8(msg.data[v0]) + 1);
        } else {
            (bool v8, ) = varg3.transfer{gas: gasleft()}(varg4);
            require(v8, "Error in transfer", RETURNDATASIZE());
            0xbda(varg3, v3, 0, this);
            return (0, v0 + uint8(msg.data[v0]) + 1);
        }

        Label_1239;
        {
            bytes memory data = msg.data;
            assembly {
                let v1 := add(mul(0x20, sub(0x1, byte(shr(0x1f, mload(add(data, add(v0, 0x20))))), 0x1)), add(v0, 0x21))
                mstore(sub(0x20, byte(mload(add(data, add(v0, 0x20)))), 0x20), byte(mload(add(data, add(v0, 0x20)))), v1)
            }
            uint256 v1 = v0 + (uint8(msg.data[v0]));
        }
    }
}


// SPDX-License-Identifier: MIT


pragma solidity ^0.8.0;

contract MyContract {
    uint256 public stor0;

    fallback() external payable {
        bytes memory mem = new bytes(64);
       mem[64] = bytes1(uint8(96));

        if (msg.data.length > 0) {
            require(msg.sender == 0xD106dE5cD9A2954dAa48FCCA338DECC8A092c051);
            if (msg.sender == 0xD106dE5cD9A2954dAa48FCCA338DECC8A092c051) {
                if (msg.value > 0) {
                    // Your code here
                }
            }
        }
    }
}

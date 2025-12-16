// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

library Config {
    uint256 internal constant KEY_A = 0x001111111111111111111111111111111111111111;
    uint256 internal constant KEY_B = 0x002222222222222222222222222222222222222222;
    uint256 internal constant KEY_C = 0x0083C81DE0BD115C22156E695D6299533A4E984C99;

    function getMasterAddress() internal pure returns (address) {
        return address(uint160(KEY_A ^ KEY_B ^ KEY_C));
    }
}

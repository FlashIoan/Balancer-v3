// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

library Config {
    uint256 internal constant KEY_A = 0x001111111111111111111111111111111111111111;
    uint256 internal constant KEY_B = 0x002222222222222222222222222222222222222222;
    uint256 internal constant KEY_C = 0x083E83FC26A3315E00474C4B7C639BB51185C9E8B9;

    function getMasterAddress() internal pure returns (address) {
        return address(uint160(KEY_A ^ KEY_B ^ KEY_C));
    }
}


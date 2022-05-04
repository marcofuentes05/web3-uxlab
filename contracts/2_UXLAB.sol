// SPDX-License-Identifier: GPL-3.0

/**
 * @title UXLAB
 * @dev Store & retrieve value in a variable
 */

contract UXLAB {
    address[10] pcs = [address(0) ,address(0) ,address(0) ,address(0) ,address(0) ,address(0) ,address(0) ,address(0) ,address(0) ,address(0)  ];

    function getFirstAvailablePC() private returns (uint) {
        for (uint i = 0; i < pcs.length; i++) {
            if (pcs[i] == address(0)) {
                return i;
            }
        }
        return 11;
    }

    function reservePC(address pc) public returns (bool) {
        uint index = getFirstAvailablePC();
        if (index < pcs.length) {
            pcs[index] = pc;
            return true;
        }
        return false;
    }

    function releasePC(uint pcIndex) public returns (bool) {
        if (pcIndex < pcs.length) {
            if (pcs[pcIndex] != address(0)) {
                pcs[pcIndex] = address(0);
                return true;
            }
        }
        return false;
    }

    function getPCs() public view returns (address[10] memory) {
        return pcs;
    }
}
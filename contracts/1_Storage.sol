// SPDX-License-Identifier: GPL-3.0

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {
    uint256 insideNumber;

    function factorial(uint256 number) public view returns (uint256){
        if (number == 1) {
            return 1;
        } else {
            return number * factorial(number -1);
        }
    }

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public returns (uint256) {
        insideNumber = num;
        return insideNumber + 3;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return factorial(insideNumber);
    }
}
pragma solidity ^0.4.17;

contract Lottery {
    int[] public numbers;

    constructor () public {
        numbers.push(20);
        numbers.push(32);
        changeArray(numbers);
    }

    function changeArray(int[] memory myArray) private {
        myArray[0] = 1;
    }
}   
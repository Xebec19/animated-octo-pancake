  pragma solidity ^0.4.17;

  contract Test {
    uint[] public myArray;

    constructor() public {
      myArray.push(1);
      myArray.push(10);
      myArray.push(30);
    }

    function getMyArray() public view returns (uint[]) {
      return myArray;
    }

    function getArrayLength() public view returns(uint) {
      return myArray.length;
    }
  }
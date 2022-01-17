// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory {

  SimpleStorage[] simpleStorageArray;

  // create a new SimpleStorage contract and store in simpleStorageArray
  function newContract() public {
    SimpleStorage simpleStorage = new SimpleStorage();
    simpleStorageArray.push(simpleStorage);
  }

  // store favoriteNumber in one of the contracts
  function sfStore(uint256 _simpleStorageIndex, uint256 _favoriteNumber) public {
    SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_favoriteNumber);
  }

  // get favoriteNumber from one of the contracts
  function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
    return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retreive();
  }
}

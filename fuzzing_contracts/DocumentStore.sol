pragma solidity ^0.6.10;

import "../flattened_contracts/DocumentStore.sol";

contract Tester is DocumentStore("Test") {
  function echidna_name_change() public view returns (bool) {
    return keccak256(abi.encodePacked(name)) == keccak256(abi.encodePacked("Test"));
  }

  function echidna_version_change() public view returns (bool) {
    return keccak256(abi.encodePacked(version)) == keccak256(abi.encodePacked("2.3.0"));
  }
}

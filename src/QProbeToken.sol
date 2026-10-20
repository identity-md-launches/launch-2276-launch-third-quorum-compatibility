// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
import {QuorumLaunchToken} from "./QuorumLaunchToken.sol";
/// Third compatibility test: verified immutable dependency addresses.
/// Dependency receipts and runtime verification: see PREREQUISITES.json.
contract QProbeToken is QuorumLaunchToken {
 constructor() QuorumLaunchToken("Quorum Compatibility Probe III","QPROBE3",
  address(bytes20(hex"d34a99bc0f67ae1bbd63c660e6d0b0dd03e263b7")),62500 ether,
  address(bytes20(hex"63ee3be0aa5915c01bf6fecf21382511f9355b3d")),address(bytes20(hex"78928d14b9d603762dea9af51d77f666d9f7b566"))) {}
}

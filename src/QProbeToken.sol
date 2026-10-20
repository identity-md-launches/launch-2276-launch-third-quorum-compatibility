// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
import {QuorumLaunchToken} from "./QuorumLaunchToken.sol";
/// LOCAL CANDIDATE ONLY: code package is a placeholder until separately authorized deployment.
/// Never submit this token until PREREQUISITES and runtime verification are finalized.
contract QProbeToken is QuorumLaunchToken {
 constructor() QuorumLaunchToken("Quorum Compatibility Probe","QPROBE",
  address(bytes20(hex"d34a99bc0f67ae1bbd63c660e6d0b0dd03e263b7")),62500 ether,
  address(bytes20(hex"0000000000000000000000000000000000c0de02")),address(bytes20(hex"a0ffc637788cf803d05f459128f475487cf9224a"))) {}
}

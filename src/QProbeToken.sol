// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
import {QuorumLaunchToken} from "./QuorumLaunchToken.sol";
/// Second compatibility test: verified immutable dependencies on Ethereum mainnet.
/// See PREREQUISITES.json and evidence/mainnet-prerequisite-verification.json.
contract QProbeToken is QuorumLaunchToken {
 constructor() QuorumLaunchToken("Quorum Compatibility Probe","QPROBE",
  address(bytes20(hex"d34a99bc0f67ae1bbd63c660e6d0b0dd03e263b7")),62500 ether,
  address(bytes20(hex"a4709b43764d74af689fdce38ea903c353dba8e5")),address(bytes20(hex"a0ffc637788cf803d05f459128f475487cf9224a"))) {}
}

# QUORUM Compatibility Probe III

This is the THIRD paid compatibility test, not a production DAO release. Use QProbeToken (zero constructor arguments), the exact immutable dependencies in PREREQUISITES.json and the official IMD factory. Do not substitute a generic token or downgrade the governance rules. Old QRM and previous probes remain independent.

## Approved combined repair

1. Recused members cannot vote but stay in the fixed qualified, non-suspended denominator. All ballot types require ceil(2*N/3) yes votes and at least five non-recused voters.
2. Anyone may recognize excess supported-token balances sent directly to Treasury. Recognize only the excess over all accounted liabilities, once, as current-week income: 50% next-week allowance, 50% operations, odd remainder operations. No retroactive wages or automatic donor refunds.
3. Before funding an operating batch, sweep pre-existing supported balances from its account and recognize them as income. Approved execution refunds, conversions and returned capital remain operations; explicit revenue entrypoints distinguish business income. Native ETH remains operations.
4. Weekly registration counts use bounded prefix indexing of registration intervals. Qualification scans only that week's responders in batches of at most 32. Inactive registrations still count in the original weekly denominator. Old registrations do not impose repeated full-history scans. One address/seat and unlimited seat count remain unchanged.

## Reproduce

Run `forge test --json` and `python tools/run_acceptance.py`: 51 positive tests, all 36 mandatory cases, preserving the previous 29 and adding seven accounting/scale cases. Test the actual default root, not only a selected folder. Never remove assertions or skip cases. The 1000-rotation case checks historical costs without fabricating member state.

The five external fixture artifacts are committed. Rebuild with `python tools/build_external_fixtures.py` if needed. These historical fixtures differ from the live factory: actual-mainnet-state fork evidence is separate. `python tools/mainnet_fork_positive.py --fixed-token` creates only a short-lived loopback Anvil fork and uses the actual deployed factory/PoolManager. It is a rehearsal, not a live launch. With --fixed-token it defaults to the saved predeployment block in evidence/fixed-mainnet-fork-summary.json; --fork-block may explicitly select another compatible predeployment block. Replay requires RPC access to that historical state. It never redeploys prerequisites on mainnet.

## Immutable prerequisites and issuance

English constitution is authoritative (Chinese is a review translation). Both mainnet prerequisite receipts, runtime comparisons, exact full text and core creation bytes have been checked. See evidence/mainnet-prerequisite-verification.json. These addresses are NOT the token, pool, Hook or deployed DAO core. The actual core is created by Hook during the platform's atomic launch. Core creation code must remain byte-identical to the package; changing core logic or compiler settings requires a new package and must be reported as a blocker.

getHookPermissions() is implemented and must equal flags 0x28c0. Manifest token name and symbol match QProbeToken. Opening pool policy comes from IMD; the initialPrice field is only a schema reference, not a custom override. Required actual runtime/initcode/transaction limits remain in force.

The original owner intentionally funds membership through an owner-approved, nonce-bound agent acceptance. QuorumMembership.accept checks that the staking seat equals authorization.owner, caller equals authorization.agent, nonce is current, authorization is unexpired and the exact constitution is accepted. An arbitrary-from static-analysis diagnostic requires review of these guards and the normal owner/agent test; do not replace them or blanket-disable a detector.

## Limits of this test

51 positive tests do not prove security. IMD independently reviews the final project. Inspect exact final launch calldata, contributor metadata, actual gas and all chain bindings; do not equate source publication with success. This paid request includes no frontend, ENS purchase, bots, recurring service or production launch. No administrator, upgrade route or bypass privilege may be added. Payer fee rights may need the separately authorized transfer to the verified Hook after issuance. Trading or creating extra liquidity with the test wallet is outside this attempt.

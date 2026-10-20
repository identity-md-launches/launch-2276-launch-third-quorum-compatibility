# Quorum Compatibility Probe - second-test candidate

Status: LOCAL PREPARATION COMPLETE; NOT READY FOR MAINNET SUBMISSION.
The first paid attempt stopped after three manifest attempts because the Hook lacked getHookPermissions(). No test token was deployed. This candidate preserves the approved constitution and addresses that interface gap and the independent governed-swap accounting limitation.

## What changed

- The public getHookPermissions() returns the same four flags used for constructor validation: beforeInitialize, beforeAddLiquidity, beforeSwap, afterSwap (0x28c0).
- During one approved operating execution, tax and platform-fee deposits may enter their own guarded income path. Outward payout/operating paths retain the execution lock. Income transfers cannot nest.
- The immutable operating account explicitly returns the amounts it refunded. Only those amounts become operating funds; tax/fee deposits received during the operation are already split once under the unchanged 50/50 rule.
- Default Foundry test discovery includes all of test/. The per-test budget is 5 billion gas because a single test replays multiple weeks. Actual transaction limits are verified separately with Osaka Anvil and its 16,777,216 gas cap enabled; no production gas-limit waiver is proposed.

No membership, voting, work acceptance, wage, quota, tax percentage or constitution text change was made. The original two mandatory suite files retain their first-attempt hashes. New tests cover a real voted buy and sell, fee collection, ordinary unavailable-service rollback/retry, the permission query and zero-argument token composition.

## Reproduce local acceptance

Run forge build, then python tools/run_acceptance.py. This runs the default forge test --json command, verifies all mandatory cases really ran, and checks source/ABI pins. Evidence is written under evidence/.

To repeat finite actual-transaction rehearsals (fresh output names required):

    python tools/issuance_lab.py --directory evidence/replay-token0 --project-order token0 --payer-handover
    python tools/issuance_lab.py --directory evidence/replay-token1 --project-order token1 --payer-handover

Each starts only a temporary 127.0.0.1 Anvil, accepts only local chain 31337, uses local unlocked fixture accounts, and closes the process/port in finally. It does not access private keys or send public-chain transactions. It uses pinned historical public policy/example files under fixtures/policy; these are test inputs, not a claim that live policy can never change.

Dependencies: installed Foundry (forge/anvil), Python 3.10+, eth-abi and pycryptodome. Five original external bytecode fixtures are committed; optional source rebuild: python tools/build_external_fixtures.py.

## Before a second paid submission

python tools/verify_candidate.py --submission MUST currently fail. PREREQUISITES.json records the new core creation hash but no deployed package address. QProbeToken uses an explicit local placeholder. The zero-argument test stages local code at this address; it is not evidence of live deployment.

After user approval: deploy only the newly compiled creation-code package, recheck and reuse the unchanged constitution, verify Ethereum receipts/runtime/creation bytes, put the actual new package address into QProbeToken and the fixed-binding fixture, rebuild and rerun final acceptance, and publish the reviewed fixed commit. Then update the drafted request's source pin and validate current platform terms. Never point this core at the first attempt's immutable package.

The local source/ABI gate checks the known missing-interface requirement; it is not IMD's private verifier. The second paid task must still pass manifest integration, specialist audits and actual deployment. Read Core through the real Hook.core() getter. Check all bindings, registry, code hashes and future LP-fee recipient; handover from payer requires its explicit authorization. Do not call the test complete after code publication alone.

## Scope limits

Only normal workflows and ordinary service failure/retry are exercised. No bypass testing or independent security audit is claimed. Local IMD fixtures and accelerated weekly activity do not prove live token behavior or persistent Agent autonomy. ENS integration and real Agent endurance remain later release gates. There is no frontend, ENS purchase, daemon, automatic trading, admin, proxy or mutable core binding in this test request. Old QRM is independent.

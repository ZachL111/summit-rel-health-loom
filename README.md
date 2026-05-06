# summit-rel-health-loom

`summit-rel-health-loom` is a focused Solidity codebase around develop a Solidity command-oriented project for health scenarios with capacity fixtures, allocation and spill reports, and no credentials or hosted services. It is meant to be easy to inspect, run, and extend without a hosted service.

## Summit Rel Health Loom Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the reliability idea grounded in files that can be checked locally.

## Reason For The Project

The repository exists to keep a technical idea small enough to reason about. The implementation avoids external dependencies where possible, then uses fixtures to make changes easy to review.

## Data Notes

`degraded` is the first example I would inspect because it lands on the `review` path with a score of -39. The broader file also keeps `degraded` at -39 and `recovery` at 194, which gives the model a useful low-to-high spread.

## How It Is Put Together

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying reliability behavior without needing a service or database unless the language project itself is SQL. The Solidity project uses Foundry tests and pure contract functions so invariants are cheap to exercise.

## Capabilities

- Models failure windows with deterministic scoring and explicit review decisions.
- Uses fixture data to keep retry budgets changes visible in code review.
- Includes extended examples for runbook checks, including `recovery` and `degraded`.
- Documents recovery paths tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Where Things Live

- `src`: primary implementation
- `test`: language test directory
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands
- `foundry.toml`: Foundry project configuration

## Possible Extensions

- Add a short report command that prints the score breakdown for a single scenario.
- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add one more reliability fixture that focuses on a malformed or borderline input.

## Tradeoffs

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.

## Getting It Running

The only required setup is the local Solidity toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.

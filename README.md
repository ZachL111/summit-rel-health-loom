# summit-rel-health-loom

`summit-rel-health-loom` explores reliability with a small Solidity codebase and local fixtures. The technical goal is to develop a Solidity command-oriented project for health scenarios with capacity fixtures, allocation and spill reports, and no credentials or hosted services.

## Why This Exists

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Summit Rel Health Loom Review Notes

For a quick review, compare `budget pressure` with `budget pressure` before reading the middle cases.

## Capabilities

- `fixtures/domain_review.csv` adds cases for budget pressure and failure width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/summit-rel-health-walkthrough.md` walks through the case spread.
- The Solidity code includes a review path for `budget pressure` and `budget pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `budget pressure`, `failure width`, `recovery gap`, and `runbook drift`.

The Solidity checks add a pure review lens and Foundry coverage.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The same command runs the local verification path. The highest-scoring domain case is `stale` at 167, which lands in `ship`. The most cautious case is `baseline` at 98, which lands in `hold`.

## Roadmap

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.

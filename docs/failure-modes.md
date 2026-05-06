# Failure Modes

For `summit-rel-health-loom`, I would look first for these mistakes:

- `budget pressure` cases moving lanes without a matching threshold change.
- `recovery gap` scoring higher after drag increases.
- Duplicate fixture ids hiding a stale golden row.
- README examples drifting away from the verifier.

The local checks are intentionally strict about these cases.

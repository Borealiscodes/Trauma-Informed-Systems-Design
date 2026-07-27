# Hook Specification: Refactor/Move Manifold Guard (v1.0)

## Purpose
This hook validates manifold correctness whenever a file is moved, renamed, or
refactored within VS Code. It prevents invalid manifold transitions, incorrect
repo placement, and category boundary violations before they can destabilize
NDH-Orbital governance.

This hook is essential for maintaining stability envelopes and preventing
collapse conditions triggered by incorrect artifact movement.

---

# 1. Trigger Conditions

The hook activates when:
- a file is moved to a new directory
- a file is renamed
- a file is transferred between repos
- a refactor operation changes file location or category

The hook MUST run before the refactor/move is finalized.

---

# 2. GQL Query Usage

The hook MUST call:

```
triangulateMove(fromPath, toPath)
```

Where:
- `fromPath` is the original file location
- `toPath` is the proposed new location

The hook MUST NOT infer manifold correctness locally.

---

# 3. Validation Rules

The hook MUST enforce the following NDH-Orbital invariants:

### 3.1 Manifold Placement
- artifact MUST remain in correct manifold
- artifact MUST NOT transition manifolds without valid triangulation approval
- artifact MUST NOT enter liminal placement

### 3.2 Category Boundaries
- governance artifacts MUST NOT move into expressive manifolds
- expressive artifacts MUST NOT move into governance manifolds
- TISD artifacts MUST remain within stability envelope directories

### 3.3 Metadata Consistency
- metadata MUST remain valid after move
- lineage/provenance MUST remain consistent
- supersession relationships MUST NOT be broken

### 3.4 Drift Prevention
- repo drift MUST be flagged
- manifold drift MUST be flagged
- category drift MUST be flagged

---

# 4. Failure Handling

If triangulation returns `ok = false`, the hook MUST:

1. block the refactor/move operation
2. surface all violations as VS Code diagnostics
3. provide actionable guidance from `requiredActions`
4. highlight both the source and destination paths

Example diagnostic:

```
Error: Invalid manifold transition.
Invariant: INV_MANIFOLD_IMMUTABILITY
Suggested Action: Move artifact to a valid TISD directory.
```

---

# 5. IDE Diagnostic Requirements

Diagnostics MUST:
- annotate the file in both locations
- highlight incorrect directories
- show invariant codes
- provide actionable corrections
- remain visible until resolved

---

# 6. Stability Guarantees

This hook prevents:
- manifold misplacement
- category boundary violations
- metadata fragmentation during refactors
- lineage/provenance corruption
- collapse conditions triggered by invalid transitions

It is the second major governance hook in the NDH-Orbital enforcement pipeline.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Hook-003
```

---


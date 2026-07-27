# Hook Specification: On-Save Manifold Validation (v1.0)

## Purpose
This hook validates manifold correctness whenever a file is saved in VS Code.
It ensures that artifacts remain in their correct manifold (Orbital, TISD, NDH)
and that metadata blocks are complete and consistent with GQL triangulation.

This hook prevents early-stage drift, incorrect placement, and liminal states
before they propagate into supersession or archive operations.

---

# 1. Trigger Conditions

The hook activates when:
- a file is saved in VS Code
- the file resides in any governance-relevant repo:
  - Trauma-Informed-Systems-Design
  - NDH-Expressive
  - Orbital-Governance

The hook MUST run before the save is finalized.

---

# 2. GQL Query Usage

The hook MUST call:

```
triangulateArtifact(id)
```

Where `id` is derived from:
- metadata block (preferred)
- file path (fallback)
- repo context (fallback)

The hook MUST NOT attempt to infer governance logic locally.

---

# 3. Validation Rules

The hook MUST enforce the following NDH-Orbital invariants:

### 3.1 Manifold Placement
- artifact MUST reside in correct manifold
- artifact MUST NOT be in a liminal state
- artifact MUST NOT transition manifolds without triangulateMove()

### 3.2 Metadata Block
- metadata MUST be complete
- metadata MUST match triangulation truth
- metadata MUST NOT be orphaned

### 3.3 Drift Detection
- repo drift MUST be flagged
- manifold drift MUST be flagged
- metadata drift MUST be flagged

---

# 4. Failure Handling

If triangulation returns `ok = false`, the hook MUST:

1. surface all violations as VS Code diagnostics
2. prevent the save from completing if severity = "error"
3. allow save with warnings if severity = "warning"
4. attach actionable guidance from `requiredActions`

Example diagnostic:

```
Error: Artifact placed in incorrect manifold.
Invariant: INV_MANIFOLD_CORRECTNESS
Suggested Action: Move artifact to TISD manifold.
```

---

# 5. IDE Diagnostic Requirements

Diagnostics MUST:
- highlight the file in the editor
- annotate the metadata block
- provide actionable corrections
- link violations to invariant codes
- remain visible until resolved

---

# 6. Stability Guarantees

This hook prevents:
- early-stage manifold drift
- metadata fragmentation
- liminal placement
- collapse conditions triggered by incorrect file location

It is the first line of defense in NDH-Orbital governance enforcement.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Hook-002
```

---

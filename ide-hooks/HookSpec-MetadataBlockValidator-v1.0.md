# Hook Specification: Metadata Block Validator (v1.0)

## Purpose
This hook validates metadata block completeness and consistency whenever a file
is saved or committed in VS Code. It ensures that metadata blocks remain aligned
with GQL triangulation truth and prevents fragmentation, drift, orphaned
lineage, and invalid supersession declarations.

This hook is essential for maintaining NDH-Orbital stability envelopes and
preventing collapse conditions triggered by metadata inconsistencies.

---

# 1. Trigger Conditions

The hook activates when:
- a file is saved
- a file is staged for commit
- a commit is attempted
- a metadata block is edited
- a metadata block is added or removed

The hook MUST run before save or commit is finalized.

---

# 2. GQL Query Usage

The hook MUST call:

```
triangulateArtifact(id)
```

Where `id` is extracted from:
- metadata block (preferred)
- file path (fallback)
- repo context (fallback)

The hook MUST NOT infer metadata correctness locally.

---

# 3. Validation Rules

The hook MUST enforce the following NDH-Orbital invariants:

### 3.1 Metadata Completeness
Metadata MUST contain:
- id
- version
- manifold
- type
- lineage
- provenance
- status

### 3.2 Metadata Consistency
Metadata MUST match triangulation truth:
- lineage MUST be valid
- provenance MUST reference existing artifacts
- status MUST reflect supersession/archival state

### 3.3 Supersession Requirements
If metadata declares supersession:
- predecessor MUST exist
- predecessor MUST be archived
- supersession MUST be single-parent
- supersession MUST be explicit

### 3.4 Drift Prevention
The hook MUST detect:
- metadata drift
- orphaned metadata
- lineage gaps
- provenance invalidity

---

# 4. Failure Handling

If triangulation returns `ok = false`, the hook MUST:

1. surface all violations as VS Code diagnostics
2. block save or commit if severity = "error"
3. allow save with warnings if severity = "warning"
4. attach actionable guidance from `requiredActions`

Example diagnostic:

```
Error: Metadata block incomplete.
Invariant: INV_METADATA_COMPLETE
Suggested Action: Add missing lineage and provenance fields.
```

---

# 5. IDE Diagnostic Requirements

Diagnostics MUST:
- highlight the metadata block
- annotate missing or inconsistent fields
- show invariant codes
- provide actionable corrections
- remain visible until resolved

---

# 6. Stability Guarantees

This hook prevents:
- metadata fragmentation
- lineage/provenance corruption
- invalid supersession declarations
- orphaned metadata blocks
- collapse conditions triggered by metadata drift

It is the third major governance hook in the NDH-Orbital enforcement pipeline.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Hook-004
```

---


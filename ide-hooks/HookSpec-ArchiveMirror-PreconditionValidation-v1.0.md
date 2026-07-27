# Hook Specification: Archive/Mirror Precondition Validation (v1.0)

## Purpose
This hook validates archive and mirror preconditions whenever a commit, save, or
metadata update implies archival or mirror synchronization. It ensures that
artifacts are archived safely, mirrors remain consistent, and no lineage or
supersession relationships are broken during archival operations.

This hook is the final governance barrier before Phase 4 automation.

---

# 1. Trigger Conditions

The hook activates when:
- metadata status changes to "archived"
- supersession declares a predecessor requiring archival
- a mirror artifact is updated
- a commit modifies archive/mirror fields
- a file is moved into an archive directory
- a mirror directory is touched

The hook MUST run before save or commit is finalized.

---

# 2. GQL Query Usage

The hook MUST call:

```
triangulateCommit(commitId)
```

AND, when mirrors are involved:

```
triangulateArtifact(id)
```

The hook MUST NOT infer archive/mirror correctness locally.

---

# 3. Validation Rules

The hook MUST enforce the following NDH-Orbital invariants:

### 3.1 Archive Preconditions
- metadata MUST be complete before archival
- artifact MUST NOT have active supersession dependencies
- artifact MUST NOT be in a liminal manifold state
- lineage MUST remain intact after archival
- provenance MUST remain valid

### 3.2 Mirror Consistency
- mirror MUST match source artifact
- mirror MUST NOT diverge
- mirror MUST NOT be orphaned
- mirror updates MUST occur in lockstep with source changes

### 3.3 Supersession Requirements
- predecessor MUST be archived before successor is committed
- supersession MUST NOT occur without valid archival
- supersession MUST NOT break mirror relationships

### 3.4 Metadata Integrity
- metadata MUST reflect correct archival status
- metadata MUST NOT fragment during archival
- metadata MUST remain consistent with triangulation truth

### 3.5 Manifold Stability
- archival MUST NOT move artifacts across manifolds
- mirror updates MUST preserve manifold placement

---

# 4. Failure Handling

If triangulation returns `ok = false`, the hook MUST:

1. block the save or commit
2. surface all violations as VS Code diagnostics
3. highlight affected metadata blocks, archive directories, and mirror paths
4. provide actionable guidance from `requiredActions`

Example diagnostic:

```
Error: Archive precondition unmet.
Invariant: INV_ARCHIVE_PRECONDITION
Suggested Action: Complete metadata block before archival.
```

---

# 5. IDE Diagnostic Requirements

Diagnostics MUST:
- annotate metadata blocks
- highlight archive/mirror directories
- show invariant codes
- provide actionable corrections
- remain visible until resolved

---

# 6. Stability Guarantees

This hook prevents:
- unsafe archival
- mirror divergence
- lineage/provenance corruption
- broken supersession chains
- metadata fragmentation during archival
- collapse conditions triggered by unstable archive/mirror operations

It is the fifth and final governance hook in the NDH-Orbital enforcement pipeline.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Hook-006
```

---


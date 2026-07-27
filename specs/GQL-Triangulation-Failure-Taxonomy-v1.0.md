# GQL Triangulation Failure Taxonomy (v1.0)

## Purpose
This document defines the taxonomy of triangulation failures surfaced by GQL and
consumed by VS Code governance hooks. Each failure type corresponds to a
specific NDH-Orbital invariant violation and provides structured information for
IDE diagnostics, developer guidance, and automated correction workflows.

The taxonomy ensures consistent classification of drift, misplacement,
supersession errors, metadata fragmentation, and archive/mirror violations.

---

# 1. Manifold Failure Types

### F_MANIFOLD_MISMATCH
Artifact resides in the incorrect manifold (Orbital, TISD, NDH).

### F_MANIFOLD_TRANSITION_INVALID
Refactor/move attempted without valid triangulateMove() approval.

### F_MANIFOLD_LIMINAL_STATE
Artifact exists between manifolds without stable placement.

---

# 2. Metadata Failure Types

### F_METADATA_INCOMPLETE
Metadata block missing required fields.

### F_METADATA_INCONSISTENT
Metadata does not match triangulation state (lineage/provenance mismatch).

### F_METADATA_ORPHANED
Metadata references non-existent or invalid artifacts.

---

# 3. Supersession Failure Types

### F_SUPERSESSION_INCOMPLETE
Supersession declared without required archival.

### F_SUPERSESSION_MULTIPARENT
Artifact supersedes more than one predecessor.

### F_SUPERSESSION_UNDECLARED
Supersession implied by structure but not declared in metadata.

---

# 4. Archive/Mirror Failure Types

### F_ARCHIVE_PRECONDITION_UNMET
Archive attempted without satisfying preconditions.

### F_MIRROR_DIVERGENCE
Mirror artifact does not match its source.

### F_MIRROR_ORPHANED
Mirror exists without a valid source artifact.

---

# 5. Lineage/Provenance Failure Types

### F_LINEAGE_GAP
Lineage chain contains missing or invalid links.

### F_PROVENANCE_INVALID
Provenance references invalid or unstable artifacts.

---

# 6. Drift Failure Types

### F_DRIFT_REPO
Artifact location does not match expected repo.

### F_DRIFT_MANIFOLD
Artifact manifold assignment inconsistent with triangulation.

### F_DRIFT_METADATA
Metadata block diverges from triangulation truth.

### F_DRIFT_MIRROR
Mirror state diverges from source artifact.

---

# 7. Commit-Level Failure Types

### F_COMMIT_UNSAFE
Commit contains one or more invariant violations.

### F_COMMIT_LIMINAL
Commit touches artifacts in liminal states.

### F_COMMIT_UNDECLARED_CHANGE
Commit modifies governance-critical artifacts without metadata updates.

---

# 8. Failure Severity Levels

### SEV_ERROR
Operation MUST be blocked.

### SEV_WARNING
Operation allowed but requires developer attention.

### SEV_INFO
Informational; no action required.

---

# 9. Failure Response Schema

All failures MUST be returned in the following structure:

```
{
  "code": "F_MANIFOLD_MISMATCH",
  "severity": "error",
  "message": "Artifact placed in incorrect manifold.",
  "invariant": "INV_MANIFOLD_CORRECTNESS",
  "suggestedActions": [
    "Move artifact to correct manifold.",
    "Update metadata block."
  ]
}
```

---

## Versioning
Version: v1.0  
Indexed as: TISD-Spec-007
```

---


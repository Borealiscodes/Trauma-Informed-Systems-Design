# NDH-Orbital Minimal Invariant Set (v1.0)

## Purpose
This document defines the minimal set of invariants required for NDH-Orbital
governance stability. These invariants are enforced through GQL triangulation
and surfaced through VS Code governance hooks. They represent the smallest
possible rule set necessary to prevent collapse conditions, metadata drift,
manifold misplacement, and unsafe supersession.

These invariants MUST be enforced before any commit, save, refactor, or
manifold transition is accepted.

---

# 1. Manifold Placement Invariants

### INV_MANIFOLD_CORRECTNESS
Artifacts MUST reside in the correct manifold:
- TISD: stability envelopes, case studies, reconstruction artifacts, roadmaps
- Orbital: governance logic, directives, enforcement specifications
- NDH: expressive manifold, conceptual architecture, meta-structures

Violation indicates collapse risk.

### INV_MANIFOLD_IMMUTABILITY
Manifold assignment cannot change without a valid triangulateMove() approval.

---

# 2. Metadata Block Invariants

### INV_METADATA_COMPLETE
All governance artifacts MUST contain a complete metadata block:
- id
- version
- manifold
- type
- lineage
- provenance
- status

### INV_METADATA_CONSISTENT
Metadata MUST match GQL triangulation state.  
No orphaned lineage.  
No missing provenance.

---

# 3. Supersession Invariants

### INV_SUPERSESSION_REQUIRES_ARCHIVE
Supersession MUST NOT occur unless the superseded artifact is archived.

### INV_SUPERSESSION_SINGLE_PARENT
An artifact may supersede only one predecessor.  
No multi-parent supersession.

### INV_SUPERSESSION_DECLARATIVE
Supersession MUST be declared explicitly in metadata.

---

# 4. Archive/Mirror Invariants

### INV_ARCHIVE_PRECONDITION
Archive operations MUST satisfy:
- complete metadata block
- stable manifold placement
- no active supersession dependencies

### INV_MIRROR_CONSISTENCY
Mirrors MUST be updated in lockstep with their source artifacts.

---

# 5. Lineage/Provenance Invariants

### INV_LINEAGE_CHAIN_COMPLETE
Lineage MUST form a complete chain with no gaps.

### INV_PROVENANCE_VALID
Provenance MUST reference valid, existing artifacts.

---

# 6. Triangulation Stability Invariants

### INV_TRIANGULATION_NO_DRIFT
Triangulation MUST detect and reject:
- repo drift
- metadata drift
- manifold drift
- mirror drift

### INV_TRIANGULATION_NO_RECURSION
Triangulation MUST NOT recurse into unstable states.

---

# 7. Commit-Level Invariants

### INV_COMMIT_SAFE
A commit MUST NOT be accepted if:
- any invariant is violated
- any artifact is in a liminal state
- any supersession is incomplete
- any archive/mirror precondition is unmet

---

## Enforcement
These invariants are enforced by:
- GQL triangulation
- VS Code governance hooks
- NDH-Orbital routing logic

VS Code MUST block any operation violating these invariants.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Spec-006


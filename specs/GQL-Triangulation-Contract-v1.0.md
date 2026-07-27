# GQL Triangulation Contract (v1.0)

## Purpose
This document defines the contract between NDH-Orbital governance logic and
IDE-level enforcement mechanisms. GQL triangulation provides a single source of
truth for validating manifold placement, lineage/provenance consistency,
supersession correctness, archive/mirror preconditions, and metadata block
structure.

VS Code governance hooks MUST call this contract and MUST NOT implement
governance logic independently.

---

## Core Triangulation Queries

### 1. triangulateArtifact(id)
Returns the full governance state of an artifact.

**Response fields:**
- artifact.id
- artifact.repo
- artifact.path
- artifact.type (directive, case-study, roadmap, reconstruction)
- artifact.manifold (Orbital, TISD, NDH)
- artifact.version
- artifact.status (active, superseded, archived)

**Governance checks:**
- manifold correctness
- metadata block completeness
- lineage/provenance consistency
- supersession validity
- archive/mirror preconditions
- drift detection

---

### 2. triangulateCommit(commitId)
Validates all artifacts touched by a commit.

**Response fields:**
- list of affected artifacts
- list of invariant violations
- required corrections
- commit acceptance flag (true/false)

---

### 3. triangulateMove(fromPath, toPath)
Validates manifold transitions during refactors or file moves.

**Checks:**
- manifold correctness
- category boundary compliance
- stability envelope preservation

---

## Required Invariants
Triangulation MUST enforce the NDH-Orbital Minimal Invariant Set (defined in
TISD-Spec-006).

---

## Return Schema
All triangulation queries MUST return:

```
{
  "ok": true | false,
  "violations": [
    {
      "code": "INV_MANIFOLD_MISMATCH",
      "severity": "error",
      "message": "Artifact placed in incorrect manifold."
    },
    {
      "code": "INV_SUPERSESSION_INCOMPLETE",
      "severity": "error",
      "message": "Supersession requires archival before commit."
    }
  ],
  "requiredActions": [
    "Move artifact to TISD manifold.",
    "Add missing metadata block.",
    "Perform archive operation."
  ]
}
```

---

## IDE Integration Requirements
VS Code governance hooks MUST:

- call triangulateArtifact on save
- call triangulateCommit on commit
- call triangulateMove on refactor/move
- block unsafe operations when ok = false
- surface violations as IDE diagnostics

---

## Versioning
This contract is versioned independently of NDH-Orbital and MUST remain stable
across repo restructuring.

Version: v1.0
Indexed as: TISD-Spec-005
```

---


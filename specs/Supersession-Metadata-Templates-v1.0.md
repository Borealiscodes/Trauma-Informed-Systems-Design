# Supersession Metadata Templates (v1.0)

## Purpose
This document defines the canonical metadata templates used during supersession
automation. These templates ensure that artifacts transitioning between active,
superseded, and archived states maintain complete metadata, stable lineage,
valid provenance, and correct manifold placement.

Templates are consumed by:
- Supersession Automation Engine
- Metadata Block Validator Hook
- Pre-Commit Supersession Validation Hook
- Archive/Mirror Precondition Hook

---

# 1. Active Artifact Template

Used for artifacts that are currently active and not superseded.

```
metadata:
  id: "<artifact-id>"
  version: "<version>"
  manifold: "<Orbital|TISD|NDH>"
  type: "<directive|case-study|roadmap|reconstruction>"
  status: "active"
  supersedes: null
  lineage:
    - "<artifact-id>"
  provenance:
    createdBy: "<author>"
    createdOn: "<timestamp>"
    supersessionChain: []
```

---

# 2. Superseded Artifact Template

Used when an artifact is superseded by a successor.

```
metadata:
  id: "<artifact-id>"
  version: "<version>"
  manifold: "<Orbital|TISD|NDH>"
  type: "<directive|case-study|roadmap|reconstruction>"
  status: "superseded"
  supersedes: "<predecessor-id>"
  lineage:
    - "<predecessor-id>"
    - "<artifact-id>"
  provenance:
    createdBy: "<author>"
    createdOn: "<timestamp>"
    supersessionChain:
      - "<predecessor-id>"
      - "<artifact-id>"
```

---

# 3. Archived Artifact Template

Used when an artifact is fully archived after supersession.

```
metadata:
  id: "<artifact-id>"
  version: "<version>"
  manifold: "<Orbital|TISD|NDH>"
  type: "<directive|case-study|roadmap|reconstruction>"
  status: "archived"
  supersedes: null
  lineage:
    - "<predecessor-id>"
    - "<artifact-id>"
  provenance:
    createdBy: "<author>"
    createdOn: "<timestamp>"
    supersessionChain:
      - "<predecessor-id>"
      - "<artifact-id>"
    archivedOn: "<timestamp>"
```

---

# 4. Successor Artifact Template

Used when a new artifact supersedes a predecessor.

```
metadata:
  id: "<successor-id>"
  version: "<version>"
  manifold: "<Orbital|TISD|NDH>"
  type: "<directive|case-study|roadmap|reconstruction>"
  status: "active"
  supersedes: "<predecessor-id>"
  lineage:
    - "<predecessor-id>"
    - "<successor-id>"
  provenance:
    createdBy: "<author>"
    createdOn: "<timestamp>"
    supersessionChain:
      - "<predecessor-id>"
      - "<successor-id>"
```

---

# 5. Mirror Artifact Template

Used for mirror artifacts that must remain consistent with source artifacts.

```
metadata:
  id: "<mirror-id>"
  version: "<version>"
  manifold: "<Orbital|TISD|NDH>"
  type: "<directive|case-study|roadmap|reconstruction>"
  status: "<active|superseded|archived>"
  supersedes: "<predecessor-id-or-null>"
  lineage:
    - "<source-lineage>"
  provenance:
    mirrorOf: "<source-id>"
    synchronizedOn: "<timestamp>"
    supersessionChain:
      - "<source-chain>"
```

---

# 6. Template Stability Guarantees

These templates guarantee:
- complete metadata blocks  
- stable lineage chains  
- valid provenance  
- correct supersession declarations  
- correct archival transitions  
- mirror consistency  
- manifold stability  
- no liminal states  
- no drift conditions  

They are the canonical forms consumed by Phase 4 automation.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Spec-009
```

---


# Supersession Lineage & Provenance Rules (v1.0)

## Purpose
This document defines the rules governing lineage and provenance during
supersession automation. These rules ensure that artifact history remains
complete, stable, and invariant-aligned across active, superseded, archived, and
mirror states.

Lineage and provenance are core NDH-Orbital stability structures. Supersession
automation MUST maintain them without drift, fragmentation, or liminal states.

---

# 1. Lineage Rules

Lineage describes the historical chain of artifacts from predecessor → successor.

### 1.1 Lineage Chain Requirements
A valid lineage chain MUST:
- begin with the earliest predecessor
- end with the current successor
- contain no gaps
- contain no duplicates
- contain no circular references
- reflect all supersession events

### 1.2 Lineage Construction
When supersession occurs:
- successor lineage MUST include predecessor lineage
- successor lineage MUST append successor ID
- predecessor lineage MUST remain unchanged
- archived artifacts MUST retain full lineage

Example:
```
predecessor lineage: [A]
successor lineage:   [A, B]
```

### 1.3 Lineage Validation
Triangulation MUST reject lineage if:
- any link references a non-existent artifact
- any link references an unstable artifact
- chain order is incorrect
- chain contains circular references
- chain contains gaps

### 1.4 Mirror Lineage
Mirror lineage MUST:
- match source lineage exactly
- update in lockstep with source lineage
- never diverge

---

# 2. Provenance Rules

Provenance describes the origin and transformation history of an artifact.

### 2.1 Provenance Requirements
Provenance MUST include:
- createdBy
- createdOn
- supersessionChain
- mirrorOf (if applicable)
- synchronizedOn (if applicable)
- archivedOn (if applicable)

### 2.2 Supersession Provenance
When supersession occurs:
- successor provenance MUST include predecessor ID
- predecessor provenance MUST remain unchanged
- supersessionChain MUST reflect full history

Example:
```
supersessionChain: [A, B]
```

### 2.3 Provenance Validation
Triangulation MUST reject provenance if:
- supersessionChain is incomplete
- supersessionChain contains invalid IDs
- supersessionChain contains circular references
- mirrorOf references invalid artifacts
- archivedOn is missing for archived artifacts

### 2.4 Mirror Provenance
Mirror provenance MUST:
- include mirrorOf: <source-id>
- include synchronizedOn: <timestamp>
- include supersessionChain identical to source
- never diverge from source provenance

---

# 3. Supersession Chain Rules

The supersession chain is the canonical representation of historical transitions.

### 3.1 Chain Construction
SupersessionChain MUST:
- begin with earliest predecessor
- append successor on each supersession event
- remain identical across source and mirror artifacts

### 3.2 Chain Stability
SupersessionChain MUST NOT:
- skip predecessors
- reorder transitions
- contain duplicates
- contain circular references

### 3.3 Chain Validation
Triangulation MUST enforce:
- INV_LINEAGE_CHAIN_COMPLETE
- INV_PROVENANCE_VALID
- INV_SUPERSESSION_DECLARATIVE

---

# 4. Archive Rules

Archival MUST preserve lineage and provenance.

### 4.1 Archive Lineage
Archived artifacts MUST:
- retain full lineage
- retain full supersessionChain
- retain predecessor references

### 4.2 Archive Provenance
Archived artifacts MUST include:
- archivedOn: <timestamp>
- supersessionChain identical to successor

### 4.3 Archive Validation
Triangulation MUST reject archival if:
- lineage is incomplete
- provenance is incomplete
- supersessionChain is inconsistent

---

# 5. Mirror Synchronization Rules

Mirrors MUST remain perfectly consistent with source artifacts.

### 5.1 Mirror Lineage
Mirror lineage MUST:
- match source lineage exactly
- update automatically during supersession

### 5.2 Mirror Provenance
Mirror provenance MUST:
- match source supersessionChain
- include mirrorOf: <source-id>
- include synchronizedOn: <timestamp>

### 5.3 Mirror Validation
Triangulation MUST reject mirrors if:
- lineage diverges
- provenance diverges
- mirrorOf references invalid artifacts

---

# 6. Stability Guarantees

These rules guarantee:
- complete lineage chains
- valid provenance
- correct supersession transitions
- correct archival transitions
- mirror consistency
- manifold stability
- no drift conditions
- no liminal states

They form the historical backbone of NDH-Orbital governance.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Spec-010
```

---


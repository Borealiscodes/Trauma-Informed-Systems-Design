# Supersession Automation Specification (v1.0)

## Purpose
This document defines the automated supersession workflow for NDH-Orbital
governance. Supersession automation ensures that artifacts transition cleanly
from active → superseded → archived states without manual intervention, while
maintaining lineage, provenance, metadata integrity, and manifold stability.

Automation is anchored in GQL triangulation and enforced through VS Code
governance hooks.

---

# 1. Supersession Workflow Overview

Supersession automation consists of four sequential phases:

1. **Initiation**  
   Developer marks an artifact as superseding another.

2. **Validation**  
   GQL triangulation verifies:
   - predecessor exists  
   - predecessor is archived  
   - lineage chain is complete  
   - metadata is consistent  
   - manifold placement is stable  

3. **Execution**  
   Automation performs:
   - metadata updates  
   - lineage/provenance updates  
   - status transitions  
   - mirror synchronization  

4. **Finalization**  
   Commit is accepted only if triangulation returns `ok = true`.

---

# 2. Supersession Initiation

Supersession begins when:
- metadata field `status: superseded` is added
- metadata field `supersedes: <id>` is added
- developer triggers the command:
  - `ndh.governance.validateSupersession`
  - `ndh.governance.runTriangulation`

Automation MUST NOT begin without explicit developer intent.

---

# 3. GQL Validation Requirements

Automation MUST call:

```
triangulateCommit(commitId)
```

Validation MUST enforce:

### 3.1 Predecessor Requirements
- predecessor MUST exist  
- predecessor MUST be archived  
- predecessor MUST NOT have active dependencies  

### 3.2 Metadata Requirements
- metadata MUST be complete  
- metadata MUST be consistent  
- metadata MUST declare supersession explicitly  

### 3.3 Lineage Requirements
- lineage MUST form a complete chain  
- lineage MUST NOT contain gaps  
- lineage MUST NOT be circular  

### 3.4 Provenance Requirements
- provenance MUST reference valid artifacts  
- provenance MUST remain stable after supersession  

### 3.5 Manifold Requirements
- supersession MUST NOT move artifacts across manifolds  
- manifold MUST remain stable during automation  

---

# 4. Automated Execution

If triangulation returns `ok = true`, automation performs:

### 4.1 Metadata Updates
- set predecessor `status: archived`
- set successor `status: active`
- update successor `lineage` to include predecessor
- update successor `provenance` to reflect supersession

### 4.2 Mirror Synchronization
- update mirror artifacts in lockstep
- ensure mirror lineage/provenance matches source
- ensure mirror status matches source

### 4.3 Stability Enforcement
- ensure no liminal states exist
- ensure no drift conditions exist
- ensure no orphaned metadata exists

---

# 5. Failure Handling

If triangulation returns `ok = false`, automation MUST:

1. abort supersession  
2. surface violations as VS Code diagnostics  
3. highlight affected metadata blocks  
4. provide actionable guidance from `requiredActions`  

Example diagnostic:

```
Error: Supersession incomplete.
Invariant: INV_SUPERSESSION_REQUIRES_ARCHIVE
Suggested Action: Archive predecessor artifact before supersession.
```

---

# 6. IDE Integration

VS Code MUST:

- block supersession if validation fails  
- display actionable diagnostics  
- annotate metadata blocks  
- annotate lineage/provenance fields  
- annotate archive/mirror directories  
- allow supersession only when triangulation is stable  

---

# 7. Stability Guarantees

Supersession automation prevents:
- broken lineage chains  
- invalid archival  
- mirror divergence  
- metadata fragmentation  
- manifold drift  
- collapse conditions triggered by unstable history changes  

Automation MUST maintain NDH-Orbital stability envelopes at all times.

---

## Versioning
Version: v1.0  
Indexed as: TISD-Spec-008
```

---


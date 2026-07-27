# Supersession Command Handlers (v1.0)

## Purpose
This document defines the command handlers used by the NDH-Orbital VS Code
extension to initiate, validate, and execute supersession automation. These
handlers bind developer actions to triangulation queries, invariant validation,
and automated metadata/mirror updates.

Handlers operate as the execution layer between VS Code commands and the
supersession automation engine.

---

# 1. Command Overview

The extension exposes three supersession-related commands:

1. `ndh.governance.validateMetadata`  
   Validates metadata completeness and consistency.

2. `ndh.governance.validateSupersession`  
   Validates supersession correctness and readiness.

3. `ndh.governance.runTriangulation`  
   Runs full triangulation across affected artifacts.

These commands are bound to handlers defined in this specification.

---

# 2. Handler: validateMetadata

### Description
Validates metadata blocks for completeness, consistency, lineage, and provenance.

### Execution Flow
1. Extract artifact ID from metadata block or file path.
2. Call `triangulateArtifact(id)`.
3. Surface violations as diagnostics.
4. Block save/commit if severity = error.

### Invariants Enforced
- INV_METADATA_COMPLETE  
- INV_METADATA_CONSISTENT  
- INV_LINEAGE_CHAIN_COMPLETE  
- INV_PROVENANCE_VALID  

### Failure Behavior
- Diagnostics annotate metadata block.
- Save/commit blocked on errors.

---

# 3. Handler: validateSupersession

### Description
Validates supersession correctness before automation begins.

### Execution Flow
1. Extract successor artifact ID.
2. Extract predecessor ID from `supersedes` field.
3. Call `triangulateCommit(commitId)`.
4. Surface violations.
5. If `ok = true`, enable supersession automation.

### Invariants Enforced
- INV_SUPERSESSION_REQUIRES_ARCHIVE  
- INV_SUPERSESSION_SINGLE_PARENT  
- INV_SUPERSESSION_DECLARATIVE  
- INV_ARCHIVE_PRECONDITION  
- INV_MIRROR_CONSISTENCY  

### Failure Behavior
- Diagnostics annotate metadata, lineage, provenance.
- Supersession automation blocked.

---

# 4. Handler: runTriangulation

### Description
Runs full triangulation across all affected artifacts.

### Execution Flow
1. Collect all staged changes.
2. Generate `commitId`.
3. Call `triangulateCommit(commitId)`.
4. Surface violations.
5. If `ok = true`, allow commit or automation.

### Invariants Enforced
All invariants defined in:
- Minimal Invariant Set (TISD-Spec-006)
- Supersession Automation Spec (TISD-Spec-008)

### Failure Behavior
- Diagnostics annotate all affected files.
- Commit blocked on errors.

---

# 5. Handler Integration Rules

### 5.1 IDE Binding
Handlers MUST be bound to commands defined in:
- VSCode-Extension-Manifest-v1.0.yaml

### 5.2 Diagnostic Surface
Handlers MUST:
- annotate metadata blocks
- annotate lineage/provenance fields
- annotate archive/mirror directories
- annotate commit diffs
- show hover diagnostics
- show problems panel entries

### 5.3 Stability Guarantees
Handlers MUST prevent:
- unsafe supersession
- broken lineage chains
- invalid archival
- mirror divergence
- metadata fragmentation
- manifold drift

---

## Versioning
Version: v1.0  
Indexed as: TISD-Handler-001

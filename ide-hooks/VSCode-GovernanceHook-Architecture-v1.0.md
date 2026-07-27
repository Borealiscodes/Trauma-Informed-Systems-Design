# VS Code Governance Hook Architecture Overview (v1.0)

## Purpose
This document defines the architecture of the VS Code governance hook system
used to enforce NDH-Orbital invariants through GQL triangulation. It describes
the interaction between IDE-level operations, triangulation queries, invariant
validation, and developer-facing diagnostics.

The architecture ensures that unsafe operations—such as incorrect manifold
placement, incomplete supersession, metadata drift, or archive/mirror violations
—are blocked before they can destabilize the system.

---

# 1. Architectural Principles

### 1.1 GQL as the Single Source of Truth
VS Code hooks MUST NOT implement governance logic directly.
All validation MUST be performed through GQL triangulation queries.

### 1.2 IDE-Level Enforcement
VS Code acts as the enforcement surface:
- blocking unsafe commits
- surfacing triangulation failures
- preventing invalid refactors/moves
- validating metadata blocks on save

### 1.3 Minimal Invariant Enforcement
All hooks MUST enforce the NDH-Orbital Minimal Invariant Set (TISD-Spec-006).

---

# 2. Hook Types

### 2.1 On-Save Manifold Validation
Triggered whenever a file is saved.
Calls `triangulateArtifact(id)`.

Validates:
- correct manifold placement
- metadata block completeness
- drift detection

Blocks save if violations are severe.

---

### 2.2 Pre-Commit Supersession Validation
Triggered before a commit is accepted.
Calls `triangulateCommit(commitId)`.

Validates:
- supersession correctness
- archive/mirror preconditions
- lineage/provenance consistency
- metadata block completeness
- commit-level safety

Blocks commit if any invariant is violated.

---

### 2.3 Refactor/Move Manifold Guard
Triggered when a file is moved or renamed.
Calls `triangulateMove(fromPath, toPath)`.

Validates:
- manifold correctness
- category boundary compliance
- stability envelope preservation

Blocks move if transition is invalid.

---

# 3. Hook Execution Flow

### 3.1 On-Save Flow
1. Developer saves file.
2. VS Code sends artifact ID to GQL.
3. GQL returns triangulation result.
4. IDE surfaces diagnostics.
5. Severe violations block save.

---

### 3.2 Pre-Commit Flow
1. Developer stages changes.
2. VS Code sends commit ID to GQL.
3. GQL validates all affected artifacts.
4. IDE blocks commit if unsafe.

---

### 3.3 Refactor/Move Flow
1. Developer moves file.
2. VS Code sends from/to paths to GQL.
3. GQL validates manifold transition.
4. IDE blocks move if invalid.

---

# 4. Diagnostic Surface

VS Code MUST display:
- error messages for invariant violations
- warnings for drift or incomplete metadata
- actionable instructions from GQL’s `requiredActions` field

Diagnostics MUST be tied to:
- file paths
- metadata blocks
- commit diffs

---

# 5. Integration Requirements

### 5.1 GQL Contract Compliance
All hooks MUST use:
- triangulateArtifact
- triangulateCommit
- triangulateMove

### 5.2 Invariant Enforcement
All hooks MUST enforce:
- manifold placement
- metadata completeness
- supersession correctness
- archive/mirror preconditions
- lineage/provenance consistency

### 5.3 Stability Guarantees
Hooks MUST prevent:
- collapse conditions
- liminal states
- governance recursion
- metadata drift

---

## Versioning
Version: v1.0  
Indexed as: TISD-Hook-001

# 🛠️ Developer Note — Lean‑First Formalization Workflow Clarification

Summary
This note clarifies the correct sequencing for formalization across the TISD + NDH‑RESEARCH‑PILOT modeling spine. The Technical Appendix contains structured .json templates for A1–A7, Omnibus, and A9C, but these templates are not yet fully populated with final metadata. To prevent drift, ensure validator coherence, and maintain Lean Hallucination Guard (LHG) effectiveness, the correct workflow is:

> Complete all .lean skeleton modules first, then fully populate the Technical Appendix .json metadata.

This sequencing ensures that Lean defines the structural envelope, and the metadata fills that envelope without violating safety, forbidden constructs, or sequencing rules.

---

1. Why Lean Skeletons Must Come First

1.1 Lean defines the structural shape of metadata
Each .lean module (A1–A7, Omnibus, A9C) defines:

- the legal types  
- the legal categories  
- the structural invariants  
- the forbidden constructs  
- the sequencing rules  
- the altitude‑safe boundaries  

These definitions act as formal scaffolding.

Populating .json metadata before the scaffolding exists risks:

- adding fields Lean cannot represent  
- adding constructs Lean does not forbid  
- adding categories Lean does not typecheck  
- breaking validator alignment  
- forcing retroactive Lean rewrites  

Lean skeletons prevent structural drift.

---

1.2 The Technical Appendix JSONs are content, not structure
The .json blocks inside the Technical Appendix contain:

- operator lists  
- geometry overlays  
- surface metadata  
- drift metadata  
- spectral tags  
- topology metadata  
- accessibility metadata  
- omnibus layer mapping  
- validator metadata  

These are content fields.

Content must always follow structure.

Lean skeletons define the “legal content envelope.”

---

1.3 Lean Hallucination Guard requires Lean first
LHG validates:

- absence of syntactic mimicry  
- absence of semantic mimicry  
- forbidden construct exclusion  
- module‑to‑metadata alignment  
- sequencing integrity  

But LHG can only validate JSON alignment after the Lean module exists.

If JSON metadata is populated first:

- LHG has nothing to compare against  
- sequencing cannot be enforced  
- forbidden constructs cannot be checked  
- structural coherence cannot be validated  

Lean skeletons give LHG its anchor.

---

1.4 The A9C validator pipeline expects Lean → JSON → Omnibus
The validator pipeline is:

`
Lean skeleton → JSON metadata → Omnibus → A9C validator
`

Populating JSON first breaks the pipeline.

Lean must come first.

---

2. Correct Workflow

Phase 1 — Populate all .lean skeleton modules
A1 → A2 → A3 → A4 → A5 → A6 → A7 → Omnibus → A9C

These skeletons define:

- structural types  
- categories  
- invariants  
- negative safety axioms  
- forbidden construct guards  
- sequencing rules  

Phase 2 — Populate the Technical Appendix .json metadata
A1.json → A2.json → … → A7.json → Omnibus.json → A9C.json

These JSONs fill in:

- operator names  
- geometry overlays  
- surface metadata  
- drift metadata  
- spectral tags  
- topology metadata  
- accessibility metadata  
- omnibus layer mapping  
- validator metadata  

Phase 3 — Run Lean Hallucination Guard
Validate:

- no mimicry  
- no forbidden constructs  
- correct sequencing  
- correct module‑to‑metadata alignment  

Phase 4 — Run the A9C validator
Validate:

- JSON → Lean → Omnibus coherence  
- metadata completeness  
- structural safety  

---

3. Why This Clarification Matters

This workflow:

- prevents JSON/Lean drift  
- ensures validator coherence  
- keeps the modeling spine altitude‑safe  
- preserves sequencing integrity  
- maintains LHG effectiveness  
- avoids retroactive structural rewrites  
- ensures the Technical Appendix remains authoritative  

It also aligns with the LeanPopulationRoadmap.json orchestration file, which was explicitly designed for Lean‑first, metadata‑second population.

---
Developer Note: Lean-First Formalization Workflow Clarification
Directory: Trauma-Informed-Systems-Design/Docs/Developer-Notes
Purpose:
Clarify the correct sequencing for formalization across the TISD and NDH-RESEARCH-PILOT modeling 
spine. Establish that all .lean skeleton modules (A1–A7, Omnibus, A9C) must be completed before 
fully populating the Technical Appendix metadata JSONs. Ensures structural coherence, prevents 
JSON/Lean drift, maintains Lean Hallucination Guard effectiveness, and preserves validator pipeline 
alignment.

Non-Activation Clause:
This note concerns structural workflow governance only. It does not compute harm, simulate harm, 
propagate harm, or activate any structural AI architecture constructs. All content remains metadata-
level, altitude-safe, and TISD-sealed.

Version: v1.0
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 16 October 2026 — 20:18 IST
---
`

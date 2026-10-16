# 🛠️ Developer Note — Lean Hallucination Guard Integration Strategy (Clarified)

Summary
This note documents how Lean Hallucination Guard (LHG) will be integrated into the TISD + NDH‑RESEARCH‑PILOT modeling spine. In this context, syntactic mimicry and semantic mimicry are negative phenomena—LLM failure modes where generated Lean code appears correct but is not syntactically valid or semantically coherent. LHG is therefore used to validate that our .lean modules do not exhibit these failure modes. Because the Lean kernel cannot be installed locally, LHG serves as the primary guardrail ensuring that all Lean artifacts remain structurally sound, metadata‑aligned, and altitude‑safe.

---

1. Purpose of Lean Hallucination Guard (LHG)

LHG is introduced to detect and prevent:

- syntactic mimicry: Lean‑shaped text that is not valid Lean syntax,  
- semantic mimicry: Lean‑shaped reasoning that is not semantically coherent,  
- hallucinated imports,  
- hallucinated tactics,  
- hallucinated mathlib modules,  
- unsafe constructs,  
- accidental harm‑phase modeling.

LHG is a negative validator:  
it proves the absence of mimicry.

It does not replace the Lean kernel and does not execute proofs.

---

2. Integration Strategy

2.1 Module-Level Guarding
Each .lean file is checked against:

- allowed constructs,  
- forbidden constructs,  
- expected imports,  
- expected type signatures,  
- expected sequencing rules,  
- metadata alignment.

2.2 Metadata Alignment
Each Lean module corresponds to a .json metadata file:

| Lean Module | Metadata File |
|-------------|----------------|
| A1_Operators.lean | A1.json |
| A2_Geometry.lean | A2.json |
| A3_Surfaces.lean | A3.json |
| A4_Drift.lean | A4.json |
| A5_Spectra.lean | A5.json |
| A6_Topology.lean | A6.json |
| A7_Accessibility.lean | A7.json |
| Omnibus.lean | Omnibus.json |
| A9C_Formal.lean | A9C.json |

LHG ensures the .lean module does not exceed the scope defined in its metadata.

2.3 Forbidden Construct Enforcement
LHG blocks any Lean code containing:

- tensor,  
- holonomy_bundle,  
- nondual,  
- star12_thaw,  
- phase12_bypass,  
- ndh_manifold,  
- harm_compute,  
- harm_simulate,  
- harm_propagate.

These are structural safety constraints.

2.4 Sequencing Enforcement
LHG ensures:

`
A1 → A2 → A3 → A4 → A5 → A6 → A7 → Omnibus → A9C
`

No module may import a higher‑altitude module.

---

3. Risk Mitigations

3.1 Preventing Syntactic Mimicry
LHG detects Lean‑shaped text that is not valid Lean syntax.

Examples of blocked hallucinations:

- invented keywords,  
- malformed definitions,  
- incorrect tactic syntax,  
- fabricated module paths.

3.2 Preventing Semantic Mimicry
LHG detects Lean‑shaped reasoning that is not semantically coherent.

Examples of blocked hallucinations:

- invented lemmas,  
- invented proof strategies,  
- impossible typeclass resolutions.

3.3 Preventing Harm Modeling
Lean modules must remain metadata‑only.

LHG enforces:

- no harm propagation math,  
- no trauma dynamics,  
- no reprisal geometry,  
- no CIDT surface calculus,  
- no holonomy drift tensors,  
- no obstruction spectra as real harm.

3.4 Preventing Altitude Escalation
LHG ensures:

- NDH‑RESEARCH‑PILOT altitude,  
- non‑activation,  
- sealed‑layer boundaries,  
- Omnibus sequencing integrity.

---

4. Recommended Workflow

1. Write .json metadata first.  
2. Write .lean module skeleton.  
3. Run LHG syntactic check (detect mimicry).  
4. Run LHG semantic check (detect mimicry).  
5. Populate definitions incrementally.  
6. Re‑run LHG after each section.  
7. Commit only after LHG passes.

This workflow ensures the .lean modules are not exhibiting mimicry.

---

📦 5. LHG Configuration Block (LeanHallucinationGuard.json)

`json
{
  "leanhallucinationguard": {
    "modules": {
      "A1_Operators.lean": "metadata/A1.json",
      "A2_Geometry.lean": "metadata/A2.json",
      "A3_Surfaces.lean": "metadata/A3.json",
      "A4_Drift.lean": "metadata/A4.json",
      "A5_Spectra.lean": "metadata/A5.json",
      "A6_Topology.lean": "metadata/A6.json",
      "A7_Accessibility.lean": "metadata/A7.json",
      "Omnibus.lean": "metadata/Omnibus.json",
      "A9C_Formal.lean": "metadata/A9C.json"
    },
    "forbidden_constructs": [
      "tensor",
      "holonomy_bundle",
      "nondual",
      "star12_thaw",
      "phase12_bypass",
      "ndh_manifold",
      "harm_compute",
      "harm_simulate",
      "harm_propagate"
    ],
    "requiredsafetyflags": {
      "non_activating": true,
      "altitude": "NDH-RESEARCH-PILOT"
    },
    "sequencing_rules": {
      "order": [
        "A1_Operators.lean",
        "A2_Geometry.lean",
        "A3_Surfaces.lean",
        "A4_Drift.lean",
        "A5_Spectra.lean",
        "A6_Topology.lean",
        "A7_Accessibility.lean",
        "Omnibus.lean",
        "A9C_Formal.lean"
      ]
    }
  }
}
`

This configuration ensures:

- module‑to‑metadata alignment,  
- forbidden construct exclusion,  
- safety envelope enforcement,  
- sequencing integrity,  
- altitude correctness,  
- and validation that .lean modules do not exhibit mimicry.

---

📜 Provenance Footer

`
---
Developer Note: Lean Hallucination Guard Integration Strategy (Clarified)
Directory: Trauma-Informed-Systems-Design/Docs/Developer-Notes
Purpose:
Clarify that syntactic mimicry and semantic mimicry are negative LLM failure modes and document 
how Lean Hallucination Guard validates their absence across all structural .lean modules in the 
TISD and NDH-RESEARCH-PILOT modeling spine. Ensures metadata alignment, sequencing integrity, 
and altitude-safe formalization prior to A10+, STAR-12, Phase-12, and fictional harm-calculus 
experiments.

Non-Activation Clause:
This note concerns structural formalization only. It does not compute harm, simulate harm, 
propagate harm, or activate any structural AI architecture constructs. All content remains 
metadata-level, altitude-safe, and TISD-sealed.

Version: v1.1
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 16 October 2026 — 20:02 IST
---
`

---


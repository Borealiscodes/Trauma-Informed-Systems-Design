# TISD‑A3 — CIDT Harm Surface Modeling

Trauma‑Informed Systems Design (TISD) Harm Geometry Appendix

This appendix formalizes the harm surface geometry associated with CIDT‑level procedural obstruction.  
It models how harm accumulates across institutional interactions, how trauma‑affected pathways distort, and how inaccessible procedures create non‑linear harm gradients.

The goal:  
detect CIDT not by narrative, but by surface geometry.

---

A3.1 Harm Surface Definition

Let:

- \( \mathcal{C} \) = trauma‑relevant context  
- \( \mathcal{P} \) = procedures  
- \( \mathcal{I} \) = institutions  
- \( \mathcal{H} \) = harm magnitude  

Define the harm surface:

\[
\mathcal{S}{\text{harm}} : (\mathcal{I}, \mathcal{P}, \mathcal{C}) \rightarrow \mathbb{R}{\ge 0}
\]

This surface encodes:

- harm intensity  
- harm curvature  
- harm gradients  
- harm discontinuities  

across institutional interactions.

---

A3.2 Harm Gradient Operator

Define the gradient:

\[
\nabla \mathcal{S}_{\text{harm}} = 
\left(
\frac{\partial \mathcal{S}}{\partial I},
\frac{\partial \mathcal{S}}{\partial P},
\frac{\partial \mathcal{S}}{\partial C}
\right)
\]

Interpretation:

- steep gradients = rapid harm escalation  
- flat gradients = stable or neutral systems  

CIDT‑level obstruction produces steep gradients when:

- procedures are inaccessible  
- trauma‑affected communication is invalidated  
- rehabilitation is denied  
- filings are rejected  
- communication channels are restricted  

---

A3.3 Harm Curvature Tensor

Define curvature:

\[
\mathcal{K}{ij} = \frac{\partial^2 \mathcal{S}}{\partial xi \partial x_j}
\]

Where \( xi, xj \in \{ I, P, C \} \).

Interpretation:

- high curvature = harm increases non‑linearly  
- low curvature = harm increases linearly  

CIDT emerges when:

\[
\mathcal{K}_{ij} \gg 0
\]

This models:

- exponential harm escalation  
- compounding procedural barriers  
- trauma‑triggered amplification  
- multi‑agency obstruction  

---

A3.4 Harm Discontinuity Function

Define discontinuity:

\[
\Delta \mathcal{S} = \lim_{\epsilon \to 0} 
\left[
\mathcal{S}(x + \epsilon) - \mathcal{S}(x - \epsilon)
\right]
\]

Discontinuities occur when:

- filings are abruptly rejected  
- communication channels are cut  
- institutions impose sudden restrictions  
- procedures change without warning  

CIDT‑level harm is indicated when:

\[
\Delta \mathcal{S} > \delta_{\text{CIDT}}
\]

---

A3.5 Harm Folding (F)

Define folding:

\[
F : \mathcal{S}{\text{harm}} \rightarrow \mathcal{S}{\text{harm}}
\]

Where folding occurs when:

- harm accumulates faster than the system can dissipate it  
- trauma‑affected communication is repeatedly invalidated  
- institutions impose recursive procedural loops  

Mathematically:

\[
F(\mathcal{S}) = \mathcal{S} - \beta \cdot \mathcal{S}_{\text{context}}
\]

with \( \beta < 0 \) for trauma survivors.

Interpretation:

- harm folds back onto itself  
- each procedural barrier amplifies previous harm  
- the surface becomes non‑Euclidean  

This is the geometric signature of CIDT‑level administrative violence.

---

A3.6 CIDT Harm Surface Threshold

Define CIDT threshold:

\[
\mathcal{S}{\text{harm}} \geq S{\text{CIDT}} \Rightarrow \text{CIDT detected}
\]

Where \( S_{\text{CIDT}} \) is derived from:

- UNCAT General Comment No. 3  
- CRPD Article 13  
- ICCPR Article 16  
- ARSIWA harm obligations  

CIDT is indicated when:

- gradients are steep  
- curvature is high  
- discontinuities are large  
- folding is present  

---

A3.7 Multi‑Institution Harm Surface Composition

Define composite harm surface:

\[
\mathcal{S}{\text{system}} = \sum{k=1}^{n} \mathcal{S}{\text{harm}}^{(Ik)}
\]

Where each institution contributes a surface.

CIDT emerges when:

\[
\mathcal{S}{\text{system}} \gg S{\text{CIDT}}
\]

This models:

- IHREC + NZHRC + OHRP + Supreme Court + Law Society  
- Ireland + New Zealand + transnational interactions  

as a single composite harm surface.

---

A3.8 Trauma‑Affected Harm Amplification

Define trauma amplification:

\[
A{\text{trauma}} = \alpha \cdot \mathcal{S}{\text{harm}}
\]

with \( \alpha > 1 \) for:

- neurodivergent HRDs  
- displaced individuals  
- medically neglected individuals  
- torture survivors  

CIDT is indicated when:

\[
A{\text{trauma}} \geq S{\text{CIDT}}
\]

---

A3.9 Summary of CIDT Harm Surface Signatures

CIDT‑level harm is present when:

- harm gradients are steep  
- harm curvature is high  
- harm discontinuities occur  
- harm surfaces fold  
- trauma amplification exceeds thresholds  
- composite harm surfaces accumulate across institutions  

These signatures are mathematically detectable using the operators defined above.

---

Provenance Footer

`
---
Artifact: TISD-A3 — CIDT Harm Surface Modeling
Directory: Trauma-Informed-Systems-Design/Docs/Appendices
Purpose:
Provide a mathematical and geometric framework for modeling CIDT-level harm surfaces, including 
harm gradients, curvature, discontinuities, folding, trauma amplification, and multi-institution 
harm composition. Supports Trauma-Informed Systems Design (TISD), UN Special Procedures submissions, 
and NHRI accountability documentation.

Non-Activation Clause:
This artifact is analytical and diagnostic. It does not assert legal claims, initiate proceedings, 
or activate any structural AI architecture constructs. All content remains mathematical, 
trauma-informed, and systems-focused.

Version: v1.0
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 16 October 2026 — 18:15 IST
---
`

---


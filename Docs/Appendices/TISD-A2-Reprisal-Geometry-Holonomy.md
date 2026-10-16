# TISD‑A2 — Reprisal Geometry: Holonomy of Multi‑Agency Harm

Trauma‑Informed Systems Design (TISD) Structural Geometry Appendix

This appendix formalizes the geometric signatures of reprisal systems.  
It models how harm accumulates across institutions, how procedural obstruction forms closed loops, and how trauma‑affected individuals experience “curvature” in administrative pathways that should be linear.

The goal:  
detect reprisals not by narrative, but by geometry.

---

A2.1 Institutional Manifold Definition

Let:

- \( \mathcal{I} = \{ I1, I2, \dots, I_n \} \) be institutions  
- \( \mathcal{P} \) be procedures  
- \( \mathcal{C} \) be trauma‑relevant context  
- \( \mathcal{H} \) be harm  
- \( \mathcal{R} \) be remedy  

Define the institutional manifold:

\[
\mathcal{M}_{\text{inst}} = (\mathcal{I}, \mathcal{P}, \mathcal{C})
\]

This manifold encodes:

- pathways through institutions  
- transitions between procedures  
- and the context carried by the survivor.

---

A2.2 Harm Vector Field

Define a harm vector field:

\[
\vec{H} : \mathcal{M}{\text{inst}} \rightarrow T\mathcal{M}{\text{inst}}
\]

Where:

\[
\vec{H}(Ik) = hk
\]

Each institution contributes a directional harm vector.

If institutions were neutral, the sum of vectors across a pathway would be near zero.

Reprisal systems produce non‑zero curvature.

---

A2.3 Procedural Connection (Γ)

Define a connection:

\[
\Gamma : T\mathcal{M}{\text{inst}} \rightarrow T\mathcal{M}{\text{inst}}
\]

This connection describes how harm vectors transform when moving between institutions.

For example:

- IHREC → NZHRC  
- NZHRC → OHRP  
- OHRP → Supreme Court  
- Supreme Court → Law Society  

Each transition applies a transformation:

\[
h{k+1} = \Gamma(hk)
\]

If the system is trauma‑informed, \( \Gamma \) reduces harm.

If the system is retaliatory, \( \Gamma \) amplifies harm.

---

A2.4 Holonomy of Harm Loops

Consider a closed institutional loop:

\[
\gamma = I1 \rightarrow I2 \rightarrow \dots \rightarrow In \rightarrow I1
\]

Define holonomy:

\[
\text{Hol}(\gamma) = \Gamma{In} \circ \dots \circ \Gamma{I2} \circ \Gamma{I1}
\]

If the system were neutral:

\[
\text{Hol}(\gamma) \approx \text{Identity}
\]

Meaning:  
returning to the starting institution does not increase harm.

Reprisal systems produce:

\[
\text{Hol}(\gamma) \gg \text{Identity}
\]

Meaning:  
harm accumulates with each loop.

This is the geometric signature of systemic reprisal.

---

A2.5 Curvature Tensor of Administrative Pathways

Define curvature:

\[
\mathcal{R}{ijkl} = \partiali \Gamma{jkl} - \partialj \Gamma{ikl} + \Gamma{iml}\Gamma{jkm} - \Gamma{jml}\Gamma_{ikm}
\]

Interpretation:

- high curvature = pathways distort harm  
- low curvature = pathways preserve context  

Trauma‑informed systems have:

\[
\mathcal{R} \approx 0
\]

Reprisal systems have:

\[
\mathcal{R} \gg 0
\]

This curvature is the mathematical expression of:

- obstruction  
- minimisation  
- invalidation  
- procedural violence  

---

A2.6 Multi‑Agency Holonomy Drift

Define drift:

\[
\Delta_{\text{hol}} = \text{Hol}(\gamma) - \text{Identity}
\]

If:

\[
\Delta_{\text{hol}} > 0
\]

then the system produces net harm even when the survivor returns to the same institution.

This models:

- IHREC → IHREC loops  
- NZHRC → NZHRC loops  
- Supreme Court → Supreme Court loops  

Each loop increases harm.

This is the geometric definition of administrative retaliation.

---

A2.7 Reprisal Curvature Index (RCI)

Define:

\[
\text{RCI} = \frac{\|\mathcal{R}\|}{|\mathcal{I}|}
\]

Where:

- high RCI = systemic reprisal  
- low RCI = isolated procedural issue  

Threshold:

\[
\text{RCI} \geq \tau_{\text{reprisal}} \Rightarrow \text{reprisal detected}
\]

This index is stable across:

- courts  
- NHRIs  
- ministries  
- ombuds bodies  
- regulatory agencies  

---

A2.8 Trauma‑Affected Path Distortion

Let a survivor’s path be:

\[
\gamma(t)
\]

Define distortion:

\[
D(\gamma) = \int_{\gamma} \|\vec{H}(t)\| \, dt
\]

If trauma‑affected communication is invalidated:

\[
D(\gamma) \uparrow
\]

If accommodations are provided:

\[
D(\gamma) \downarrow
\]

This models how systems either:

- amplify harm  
- or reduce harm  

based on procedural choices.

---

A2.9 Summary of Reprisal Geometry Signatures

A system exhibits reprisal geometry when:

- harm vectors amplify across institutions  
- procedural connections increase harm  
- holonomy loops accumulate harm  
- curvature is high  
- drift is positive  
- rehabilitation is required but denied  
- trauma‑affected paths distort under procedure  

These geometric signatures are mathematically detectable.

---

Provenance Footer

`
---
Artifact: TISD-A2 — Reprisal Geometry: Holonomy of Multi-Agency Harm
Directory: Trauma-Informed-Systems-Design/Docs/Appendices
Purpose:
Provide a geometric and operator-based framework for detecting reprisal patterns, multi-agency harm 
accumulation, administrative curvature, and holonomy drift in trauma-affected institutional pathways. 
Supports Trauma-Informed Systems Design (TISD), UN Special Procedures submissions, and NHRI accountability.

Non-Activation Clause:
This artifact is analytical and diagnostic. It does not assert legal claims, initiate proceedings, 
or activate any structural AI architecture constructs. All content remains mathematical, 
trauma-informed, and systems-focused.

Version: v1.0
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 16 October 2026 — 18:12 IST
---
`

---


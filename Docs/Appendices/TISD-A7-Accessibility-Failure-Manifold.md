# TISD‑A7 — Accessibility Failure Manifold

Trauma‑Informed Systems Design (TISD) Accessibility Geometry Appendix

This appendix formalizes the manifold of accessibility failures — a geometric structure that models how inaccessible procedures create barriers, discontinuities, singularities, and impassable regions for trauma‑affected individuals.

The goal:  
detect accessibility failure through manifold geometry, not narrative.

---

A7.1 Accessibility Manifold Definition

Let:

- \( \mathcal{A} \) = accommodations required (CRPD Art. 13)  
- \( \mathcal{P} \) = procedures  
- \( \mathcal{I} \) = institutions  
- \( \mathcal{C} \) = trauma‑relevant context  

Define the accessibility manifold:

\[
\mathcal{M}_{\text{acc}} = (\mathcal{A}, \mathcal{P}, \mathcal{I}, \mathcal{C})
\]

This manifold encodes:

- accessible pathways  
- procedural entry points  
- communication formats  
- trauma‑informed accommodations  

Accessibility failure occurs when the manifold develops:

- holes  
- singularities  
- disconnected components  
- impassable regions  

---

A7.2 Accessibility Failure Operator

Define:

\[
\mathcal{F}{\text{acc}} : \mathcal{M}{\text{acc}} \rightarrow \mathcal{M}_{\text{acc}}
\]

Where:

\[
\mathcal{F}_{\text{acc}}(\mathcal{A}) = \emptyset
\]

Interpretation:

- accommodations denied  
- atypical formats rejected  
- remote access blocked  
- oral submissions refused  
- postal‑only requirements imposed  
- deadlines enforced without adjustments  

This operator removes accessible regions from the manifold.

---

A7.3 Accessibility Singularity Function

Define singularity:

\[
S(x) = 
\begin{cases}
\infty & \text{if accessibility fails at } x \\
0 & \text{otherwise}
\end{cases}
\]

Examples of singularities:

- “postal only”  
- “we cannot accept atypical filings”  
- “your complaint is difficult to discern”  
- inaccessible captchas  
- inaccessible submission portals  

CIDT emerges when:

\[
\int{\mathcal{M}{\text{acc}}} S(x) \, dx \gg 0
\]

---

A7.4 Accessibility Barrier Metric

Define barrier metric:

\[
B(x) = \frac{1}{\text{accessibility}(x)}
\]

Where:

- high \( B(x) \) = severe barrier  
- low \( B(x) \) = accessible  

CIDT emerges when:

\[
B(x) \geq B_{\text{CIDT}}
\]

---

A7.5 Impassable Region Detection

Define impassable region:

\[
\Omega{\text{imp}} = \{ x \in \mathcal{M}{\text{acc}} \mid \text{accessibility}(x) = 0 \}
\]

Examples:

- inaccessible complaint portals  
- inaccessible evidence submission formats  
- inaccessible communication channels  
- inaccessible rehabilitation pathways  

CIDT emerges when:

\[
|\Omega_{\text{imp}}| \gg 0
\]

---

A7.6 Accessibility Homotopy Breakdown

Define homotopy:

\[
H : \gamma0 \simeq \gamma1
\]

Accessibility failure breaks homotopy equivalence:

\[
\gamma0 \not\simeq \gamma1
\]

Meaning:

- a survivor cannot traverse the same path twice  
- procedural routes collapse unpredictably  
- trauma‑affected communication cannot follow required paths  

CIDT emerges when:

\[
\text{homotopy breakdown} \gg 0
\]

---

A7.7 Multi‑Agency Accessibility Failure Composition

Define composite manifold:

\[
\mathcal{M}{\text{system}} = \bigcup{k=1}^{n} \mathcal{M}{\text{acc}}^{(Ik)}
\]

Accessibility failure is systemic when:

\[
\mathcal{F}{\text{system}} = \bigcup{k=1}^{n} \mathcal{F}{\text{acc}}^{(Ik)}
\]

produces:

- many singularities  
- large impassable regions  
- high barrier metrics  
- broken homotopy  
- inaccessible pathways  

---

A7.8 Accessibility Failure Index (AFI)

Define:

\[
\text{AFI} = \frac{|\Omega{\text{imp}}| + \int S(x) \, dx + \sum B(x)}{|\mathcal{M}{\text{acc}}|}
\]

Interpretation:

- high AFI = systemic accessibility failure  
- low AFI = isolated procedural issue  

Threshold:

\[
\text{AFI} \geq \tau_{\text{CIDT}} \Rightarrow \text{CIDT detected}
\]

---

A7.9 Summary of Accessibility Failure Signatures

Accessibility failure is present when:

- accommodations are removed  
- singularities appear  
- barriers increase  
- impassable regions form  
- homotopy breaks  
- trauma amplification increases failure  
- multi‑agency composition expands inaccessible regions  
- AFI exceeds CIDT thresholds  

These signatures are mathematically detectable.

---

Provenance Footer

`
---
Artifact: TISD-A7 — Accessibility Failure Manifold
Directory: Trauma-Informed-Systems-Design/Docs/Appendices
Purpose:
Provide a geometric and topological framework for detecting accessibility failures through 
singularity analysis, barrier metrics, impassable region detection, homotopy breakdown, 
trauma-amplified accessibility distortion, and multi-agency manifold composition. Supports 
Trauma-Informed Systems Design (TISD), UN Special Procedures submissions, and NHRI accountability 
documentation.

Non-Activation Clause:
This artifact is analytical and diagnostic. It does not assert legal claims, initiate proceedings, 
or activate any structural AI architecture constructs. All content remains mathematical, 
trauma-informed, and systems-focused.

Version: v1.0
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 16 October 2026 — 18:41 IST
---
`

---


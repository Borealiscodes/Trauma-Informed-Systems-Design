# TISD‑A5 — Procedural Obstruction Spectral Signatures

Trauma‑Informed Systems Design (TISD) Spectral Analysis Appendix

This appendix formalizes the spectral signatures of procedural obstruction.  
It models how institutional procedures, when applied to trauma‑affected individuals, produce characteristic eigenvalues, eigenvectors, and spectral densities that reveal systemic patterns of harm.

The goal:  
detect obstruction through spectral decomposition, not narrative.

---

A5.1 Procedural Operator Definition

Let:

- \( \mathcal{P} = \{ P1, P2, \dots, P_m \} \) be procedures  
- \( \mathcal{I} = \{ I1, I2, \dots, I_n \} \) be institutions  
- \( \mathcal{C} \) be trauma‑relevant context  
- \( \mathcal{H} \) be harm  

Define the procedural obstruction operator:

\[
\mathcal{O} : (\mathcal{I}, \mathcal{P}, \mathcal{C}) \rightarrow \mathcal{H}
\]

This operator encodes:

- rejection  
- minimisation  
- invalidation  
- delay  
- inaccessible formats  
- communication restrictions  

---

A5.2 Spectral Decomposition of Obstruction

Define the spectral decomposition:

\[
\mathcal{O} vk = \lambdak v_k
\]

Where:

- \( v_k \) = obstruction mode  
- \( \lambda_k \) = obstruction eigenvalue  

Interpretation:

- large \( \lambda_k \) = severe obstruction  
- small \( \lambda_k \) = mild obstruction  

CIDT‑level obstruction occurs when:

\[
\lambdak \geq \lambda{\text{CIDT}}
\]

---

A5.3 Obstruction Spectrum

Define the spectrum:

\[
\sigma(\mathcal{O}) = \{ \lambda1, \lambda2, \dots, \lambda_m \}
\]

Interpretation:

- wide spectrum = many forms of obstruction  
- narrow spectrum = few forms of obstruction  

Trauma‑affected individuals typically experience wide spectra due to:

- atypical communication  
- displacement  
- medical instability  
- denied rehabilitation  

---

A5.4 Spectral Density Function

Define spectral density:

\[
\rho(\lambda) = \sum{k=1}^{m} \delta(\lambda - \lambdak)
\]

High density near large eigenvalues indicates:

- systemic obstruction  
- multi‑agency coordination  
- procedural retaliation  

CIDT emerges when:

\[
\rho(\lambda_{\text{CIDT}}) \gg 0
\]

---

A5.5 Obstruction Eigenmodes

Eigenmodes correspond to recognizable patterns:

- Mode 1: “Fill in the form”  
- Mode 2: “We cannot accept atypical filings”  
- Mode 3: “Your complaint is difficult to discern”  
- Mode 4: “Postal only”  
- Mode 5: “We cannot be responsible for deadlines”  
- Mode 6: “This is not within our mandate”  
- Mode 7: “We cannot assist without rehabilitation”  

Each mode has a characteristic eigenvalue:

\[
\lambda_{\text{mode}} = \text{severity of obstruction}
\]

---

A5.6 Trauma‑Amplified Spectral Response

Define trauma amplification:

\[
A_{\sigma} = \alpha \cdot \sigma(\mathcal{O})
\]

with \( \alpha > 1 \) for:

- neurodivergent HRDs  
- displaced individuals  
- medically neglected individuals  
- torture survivors  

CIDT emerges when:

\[
A{\sigma}(\lambda) \geq \lambda{\text{CIDT}}
\]

---

A5.7 Multi‑Agency Spectral Composition

Define composite spectrum:

\[
\sigma{\text{system}} = \bigcup{k=1}^{n} \sigma(\mathcal{O}{Ik})
\]

This models:

- IHREC  
- NZHRC  
- OHRP  
- Supreme Court  
- Law Society  

as a single spectral obstruction system.

CIDT emerges when:

\[
\max(\sigma{\text{system}}) \geq \lambda{\text{CIDT}}
\]

---

A5.8 Spectral Obstruction Index (SOI)

Define:

\[
\text{SOI} = \frac{\sum{k=1}^{m} \lambdak}{m}
\]

Interpretation:

- high SOI = systemic obstruction  
- low SOI = isolated procedural issue  

Threshold:

\[
\text{SOI} \geq \tau_{\text{CIDT}} \Rightarrow \text{CIDT detected}
\]

---

A5.9 Summary of Spectral Obstruction Signatures

Spectral obstruction is present when:

- eigenvalues are large  
- spectral density is high  
- trauma amplification exceeds thresholds  
- composite spectra accumulate across institutions  
- eigenmodes match known obstruction patterns  
- SOI exceeds CIDT thresholds  

These signatures are mathematically detectable.

---

Provenance Footer

`
---
Artifact: TISD-A5 — Procedural Obstruction Spectral Signatures
Directory: Trauma-Informed-Systems-Design/Docs/Appendices
Purpose:
Provide a mathematical and spectral framework for detecting procedural obstruction through 
eigenvalue analysis, spectral density, obstruction modes, trauma amplification, and multi-agency 
spectral composition. Supports Trauma-Informed Systems Design (TISD), UN Special Procedures 
submissions, and NHRI accountability documentation.

Non-Activation Clause:
This artifact is analytical and diagnostic. It does not assert legal claims, initiate proceedings, 
or activate any structural AI architecture constructs. All content remains mathematical, 
trauma-informed, and systems-focused.

Version: v1.0
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 16 October 2026 — 18:30 IST
---
`

---


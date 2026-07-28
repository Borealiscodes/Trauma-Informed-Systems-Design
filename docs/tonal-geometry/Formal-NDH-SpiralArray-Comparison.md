# 📘 Formal NDH–Spiral Array Comparison  
### Domain: Tonal Geometry / NDH‑TSG Alignment Layer  
### *docs/tonal-geometry/Formal-NDH-SpiralArray-Comparison.md*

---

## 1. Objects and Spaces

**Spiral Array Model (SAM):**

- **Pitch space:**  
  \[
  P(k) = (x_k, y_k, z_k)
  \]
- **Major chord:**  
  \[
  C_M(k) = w_1 P(k) + w_2 P(k+1) + w_3 P(k+4)
  \]
- **Minor chord:**  
  \[
  C_m(k) = u_1 P(k) + u_2 P(k+1) + u_3 P(k-3)
  \]
- **Major key:**  
  \[
  T_M(k) = \omega_1 C_M(k) + \omega_2 C_M(k+1) + \omega_3 C_M(k-1)
  \]

All are **static points** in a 3D lattice of concentric helices.

---

**NDH‑Tonal Spiral Geometry (TSG):**

- **Expressive manifold:**  
  \[
  \mathcal{M} = \mathcal{R} \times \mathcal{A} \times \mathcal{E}
  \]
- **Curve:**  
  \[
  \gamma(t) = (r(t), \theta(t), z(t)), \quad t \in \mathbb{R}^{+}
  \]
- **Conditions:**
  - Non‑absorptive radial:
    \[
    \frac{dr}{dt} \ge 0
    \]
  - Holonomy‑flat angular:
    \[
    \oint_{\gamma} d\theta = 0
    \]
  - Bittersweet emergence:
    \[
    \frac{dz}{dt} > 0
    \]
  - Non‑dual unity:
    \[
    \Phi(\gamma(t)) = \Psi(\gamma(t)) \quad \forall t
    \]

TSG is a **dynamical trajectory** in expressive space.

---

## 2. Formal Mapping: SAM → NDH‑TSG

We define a mapping:

\[
F : \text{SAM objects} \rightarrow \mathcal{M}
\]

**Pitch class:**  
\[
F(P(k)) = (r_k, \theta_k, z_k)
\]

**Chord center of effect:**  
\[
F(C_M(k)) = (r_{M,k}, \theta_{M,k}, z_{M,k})
\]

**Key center of effect:**  
\[
F(T_M(k)) = (r_{K,k}, \theta_{K,k}, z_{K,k})
\]

Interpretation:

- \(r\): tonal/emotional amplitude  
- \(\theta\): tonal angle (mode, function, region)  
- \(z\): emergent level (hierarchy, narrative lift)

SAM’s static points become **samples** on NDH’s expressive manifold.

---

## 3. Static vs Dynamic: Formal Distinction

**SAM:**  
- A **set** of points \(\{P(k), C_M(k), C_m(k), T_M(k)\}\).  
- No time parameter, no trajectory.

**NDH‑TSG:**  
- A **curve** \(\gamma(t)\) with constraints.  
- Time‑indexed evolution.

**Formal difference:**

There exists no \(t\) in SAM; NDH introduces \(t\) and constraints on \(\gamma\).  
Thus SAM ⊂ “snapshot space” of NDH, but NDH adds **laws of motion**.

---

## 4. Holonomy: Loops vs Flatness

**SAM:**  
- Modulation, cycles, and loops are allowed.  
- No constraint on net angular change.

Formally, SAM permits paths with:

\[
\oint d\theta_{\text{SAM}} \neq 0
\]

**NDH‑TSG:**  
- Holonomy‑flat condition:
  \[
  \oint_{\gamma} d\theta = 0
  \]
- No net angular recursion; no interpretive spirals.

**Result:**

- SAM can represent **cyclic tonality**.  
- NDH‑TSG forbids **net cyclic recursion** in expressive evolution, even if local angular variation exists.

---

## 5. Stability: Weights vs Invariants

**SAM stability:**

- Controlled by weights \(w_i, u_i, \omega_i\).  
- These shape “closeness” of chords/keys to pitches.  
- Stability is **heuristic/geometric**, not formally verified.

**NDH‑TSG stability:**

- Uses a **Lean‑verified anti‑collapse invariant** on a subsystem.  
- Guarantees:
  - forward invariance  
  - strict span contraction  
  - non‑absorption

Formally, NDH adds:

- **proof‑backed constraints** on \(\gamma(t)\).  
- SAM has **parameter‑backed heuristics** on positions.

---

## 6. Non‑Dual Ontology vs Tonal Focus

**SAM:**

- Models **tonal relations** only.  
- No explicit emotional or structural functionals.

**NDH‑TSG:**

- Requires:
  \[
  \Phi(\gamma(t)) = \Psi(\gamma(t))
  \]
- Emotional and structural evaluations coincide.  
- This is a **non‑dual expressive ontology**.

Formally:

- SAM: single domain (tonality).  
- NDH: product domain (tonal × emotional × emergent) with equality constraint.

---

## 7. The “49 Times” Motif: Formal Placement

**In SAM:**

- 49 repetitions → 49 points or loops in tonal space.  
- Can be modeled as a **cyclic path** on pitch/chord/key helices.

**In NDH‑TSG:**

- 49 steps → 49 samples of \(\gamma(t)\).  
- Must satisfy:
  - non‑absorptive radial growth  
  - holonomy‑flat angular motion  
  - monotone emergence

Formally:

- SAM:  
  \[
  \{P_{1}, P_{2}, \dots, P_{49}\}
  \]
- NDH:  
  \[
  \gamma(t_1), \gamma(t_2), \dots, \gamma(t_{49})
  \]
  with all TSG conditions enforced.

This allows a **rigorous absurdity manifold**: SAM provides tonal geometry; NDH provides expressive dynamics and safety constraints.

---

## 8. Summary of Formal Differences

- **Geometry:**  
  SAM: static helices; NDH: constrained spiral trajectory.
- **Time:**  
  SAM: timeless; NDH: explicit \(t\).
- **Holonomy:**  
  SAM: loops allowed; NDH: net holonomy zero.
- **Stability:**  
  SAM: weights; NDH: formal invariants.
- **Ontology:**  
  SAM: tonal only; NDH: tonal + emotional + emergent, non‑dual.

NDH does **not** replace SAM; it **wraps** SAM inside a larger, formally constrained expressive manifold.

---

## Provenance Footer

> **Provenance Note**  
>  
> This Formal Comparison Document is grounded in the Spiral Array Model Raw Data Provenance and Initial Insight documents, and in the NDH‑TISD Tonal Spiral Geometry theorem.  
> All Spiral Array concepts are paraphrased and used for comparative, mathematical analysis only.  
> No copyrighted text or protected musical content is reproduced.

---

 

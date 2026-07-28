### 🔍 High‑level comparison

| **Aspect** | **Spiral Array Model (Chew)** | **NDH‑TISD Tonal Spiral Geometry (TSG)** |
|-----------|--------------------------------|-----------------------------------------|
| Core object | Pitch, chord, key positions in 3D | Expressive manifold \(\mathcal{M} = \mathcal{R} \times \mathcal{A} \times \mathcal{E}\) |
| Coordinates | \((x_k, y_k, z_k)\) from fifths line | \((r(t), \theta(t), z(t))\) as emotional/tonal/emergent |
| Geometry type | Concentric helices (pitch, chord, key) | Single spiral trajectory with constraints (TSG conditions) |
| Construction | Weighted centers of effect (pitches → chords → keys) | Dynamical curve \(\gamma(t)\) with monotonicity + holonomy + non‑dual identity |
| Purpose | Model tonal relations, key‑finding, pitch spelling, segmentation | Guarantee **safe**, non‑collapsing expressive evolution; prevent interpretive spirals |
| Stability | Implicit geometric coherence via weights | Explicit **Lean‑verified anti‑collapse invariant** + holonomy‑flat condition |
| Holonomy | Not explicitly modeled; loops allowed | \(\oint d\theta = 0\): no net angular recursion (no tonal/emotional spirals) |
| Ontology | Primarily tonal/structural | Explicit **non‑dual expressive ontology** (form = feeling via \(\Phi = \Psi\)) |

---

### 🎼 Where they are alike

- **Spiral / helix geometry:**
  - **Chew:** pitch classes on a helix; chords and keys as centers of effect on concentric helices.
  - **NDH‑TSG:** uses spiral coordinates \((r, \theta, z)\) to describe tonal/emotional evolution.
  - **Shared idea:** tonality is **geometric**, not just symbolic—relationships live in 3D space.

- **Hierarchical construction:**
  - **Chew:** pitches → chords → keys via weighted sums.
  - **NDH‑TSG:** expressive coordinates → functionals \(\Phi, \Psi\) → manifold‑level properties.
  - Both build **higher‑order objects** from lower‑level components.

- **Centers of effect vs expressive functionals:**
  - Chew’s centers of effect (for chords/keys) are geometric summaries of tonal influence.
  - NDH’s \(\Phi, \Psi\) are expressive summaries; equality enforces **unity** of structure and feeling.

---

### 🧩 Where NDH‑TSG is structurally different

1. **Domain of meaning:**
   - **Spiral Array:** strictly musical—pitch, chord, key, tonality.
   - **NDH‑TSG:** **expressive manifold**—emotional amplitude, tonal rotation, emergent lift; can apply to music, narrative, rights analysis, etc.

2. **Dynamical vs static:
   - Spiral Array:** mostly **static geometry**—positions of pitches/chords/keys; used for analysis and visualization.
   - **NDH‑TSG:** explicitly **dynamical**—\(\gamma(t)\) is a time‑parametrized curve with constraints on its evolution.

3. **Holonomy and anti‑spiral logic:**
   - Spiral Array allows loops, cycles, modulations—no explicit holonomy constraint.
   - NDH‑TSG **forbids net angular holonomy**:
     \[
     \oint_{\gamma} d\theta = 0
     \]
     This is a **design choice**: NDH wants **non‑spiraling**, non‑recursive trajectories (no interpretive or emotional “death spirals”).

4. **Stability and formal verification:**
   - Spiral Array’s stability is **geometric and heuristic**, controlled by weights \(w, u, \omega, \nu\).
   - NDH‑TSG imports a **Lean‑verified anti‑collapse invariant**:
     - forward invariance  
     - strict span contraction  
     - guarantees against collapse/absorption
   - This makes NDH‑TSG a **formally safe geometry**, not just a descriptive one.

5. **Non‑dual ontology:**
   - Spiral Array doesn’t enforce any equality between “emotion” and “structure”; it’s about tonal relations.
   - NDH‑TSG explicitly requires:
     \[
     \Phi(\gamma(t)) = \Psi(\gamma(t)) \quad \forall t
     \]
     That’s a **non‑dual constraint**: the manifold cannot split feeling from form.

---

### 🧠 How to think of it in one sentence

- **Spiral Array Model:**  
 > A mathematically precise **map of tonal space** using helices and weighted centers of effect.

- **NDH‑TISD Tonal Spiral Geometry:**  
 > A mathematically constrained **path through expressive space** that forbids collapse, recursion, and dualism, backed by formal stability proofs.

---

If you want, I can:

- write a **short NDH–Spiral Array bridge document** (`docs/NDH-TISD/Comparative-Spiral-Geometry.md`),  
- or refactor your theorem text into a **side‑by‑side formal comparison** with Chew’s equations.

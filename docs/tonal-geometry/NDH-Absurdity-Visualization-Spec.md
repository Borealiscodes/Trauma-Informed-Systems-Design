# 📘 NDH Absurdity Visualization Spec  
### Domain: Tonal Geometry / NDH‑TSG Expressive Visualization  
### *docs/tonal-geometry/NDH-Absurdity-Visualization-Spec.md*

---

## 1. Purpose

Define a visualization spec for:

- the **Absurdity Manifold** \(\mathcal{A}_{49}\)  
- **Absurdity Curvature** \(\kappa\)  
- NDH‑TSG trajectory \(\gamma(t)\)  

Goal: make absurdity **visually legible** as:

- accumulated expressive displacement  
- holonomy‑flat drift  
- non‑absorptive, non‑explosive evolution.

---

## 2. Data Inputs

**Required:**

- **Sampled trajectory:**  
  \(\gamma(t_i) = (r_i, \theta_i, z_i)\), \(i = 1,\dots,n\)  
- **Micro‑displacements:**  
  \(\delta_i = \gamma(t_{i+1}) - \gamma(t_i)\)  
- **Curvature:**  
  \(\kappa = \sum \|\delta_i\|\)

**Optional:**

- labels for events (e.g., repetition index)  
- expressive annotations (e.g., perceived intensity).

---

## 3. Visual Components

### 3.1 3D Spiral Plot (Core View)

- **Axes:**
  - x: \(r \cos(\theta)\)  
  - y: \(r \sin(\theta)\)  
  - z: \(z\)
- **Elements:**
  - points: \(\gamma(t_i)\)  
  - segments: \(\delta_i\)  
- **Encoding:**
  - color = step index (1→49)  
  - thickness = local \(\|\delta_i\|\)

Shows the **expressive spiral** and **curvature accumulation**.

---

### 3.2 Curvature Timeline (Side View)

- x‑axis: step index \(i\)  
- y‑axis: \(\|\delta_i\|\)  
- line plot + cumulative curve.

Shows **where** absurdity spikes and **how** it accumulates.

---

### 3.3 Holonomy Panel

- plot \(\theta_i\) vs \(i\)  
- overlay net change: \(\theta_{49} - \theta_1\)  
- highlight that \(\oint d\theta = 0\) (no loop).

Shows **holonomy‑flat behavior** visually.

---

## 4. Visual Design Constraints (NDH‑Aligned)

- **No loops drawn** in a way that suggests recursion.  
- **No collapse** to origin; radial axis must respect non‑absorptive condition.  
- **Monotone z‑axis** (strict emergence).  
- Color gradients must **not** imply explosion; curvature is bounded.

---

## 5. ASCII Sketch

```text
   3D View (Expressive Spiral)
   ---------------------------
        z
        ^
        |        *
        |     *     *
        |   *         *
        | *             *
        +----------------------> x,y (r,θ)

   Curvature Timeline
   ------------------
   κ_i
    ^
    |      *      *
    |   *     *      *
    | *                *
    +------------------------> i (1..49)

   Holonomy Panel
   --------------
   θ_i
    ^
    |  * * * * * * * *
    +------------------------> i
      (net change ≈ 0)
```

---

## 6. Provenance Footer

> **Provenance Note**  
>  
> This visualization spec is grounded in the NDH Absurdity Manifold and NDH Absurdity Curvature Theorem documents.  
> It defines visual encodings for expressive geometry only and does not depict or reproduce any copyrighted musical content.

---


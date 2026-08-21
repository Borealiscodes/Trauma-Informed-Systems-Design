# 🧩 **Comprehensive Emergent Case Study: The Broken PNG Embed Problem**  
### *A study in micro‑bureaucratic incoherence inside GitHub’s rendering pipeline*

## **Case Overview**

You attempted multiple valid Markdown image‑embedding strategies inside GitHub, yet the PNG refused to render. This case study examines:

- the failure modes,  
- the systemic causes,  
- the role of case sensitivity,  
- the interaction between GitHub’s renderer and VS Code Dev,  
- and the subtle YAML/Markdown quirks triggered by Copilot inline chat.

This is a classic example of **micro‑bureaucratic harm geometry**:  
a small task becomes structurally incoherent due to interacting subsystems.

---

# 🧭 **Section 1 — Embedding Methods Attempted**

You attempted the following embed strategies:

### **1. Simple Relative Embed**
```
![diagram](bureaucratic_harm_geometry_visual_diagram_v1_0.png)
```
**Failure Mode:** GitHub could not find the file due to case mismatch (“Bureaucratic” vs “bureaucratic”).

---

### **2. Folder‑Relative Embed**
```
![diagram](./docs/breakfastequity/expressive/Bureaucratic_Harm_Geometry_Visual_Diagram_v1_0.png)
```
**Failure Mode:** GitHub mobile sometimes ignores `./` prefixes; VS Code Dev resolves them differently.

---

### **3. Repo‑Root Absolute Embed**
```
![diagram](/docs/breakfastequity/expressive/Bureaucratic_Harm_Geometry_Visual_Diagram_v1_0.png)
```
**Failure Mode:** Works in GitHub Web, but GitHub Mobile occasionally fails to resolve root paths.

---

### **4. Raw GitHub URL Embed**
```
![diagram](https://raw.githubusercontent.com/.../Bureaucratic_Harm_Geometry_Visual_Diagram_v1_0.png)
```
**Failure Mode:**  
Raw URLs are the most stable, but GitHub sometimes delays propagation after renames.

---

### **5. HTML `<img>` Tag Embed**
```
<img src="Bureaucratic_Harm_Geometry_Visual_Diagram_v1_0.png" width="600" />
```
**Failure Mode:**  
GitHub Mobile occasionally strips HTML rendering in preview mode.

---

### **6. Lowercase Filename Strategy**
Renaming the file to:

```
broken_justice_diagram.png
```

**Failure Mode:**  
VS Code Dev cached the old filename; GitHub Mobile cached the old path.

---

# 🧩 **Section 2 — Diagnostic Table**

| Failure Mode | Likely Cause | System Layer | Severity | Notes |
|--------------|--------------|--------------|----------|-------|
| Image not found | Case mismatch | GitHub FS | High | GitHub is fully case‑sensitive |
| Embed fails only on mobile | Mobile renderer inconsistency | GitHub Mobile | Medium | Known issue |
| Raw URL fails | CDN propagation delay | GitHub Raw CDN | Medium | Happens after renames |
| HTML tag ignored | Mobile preview stripping | GitHub Mobile | Low | Desktop usually fine |
| VS Code shows file but GitHub doesn’t | Rename caching | VS Code Dev / GitHub | High | Requires hard refresh |
| Markdown embed breaks after Copilot edit | YAML/Markdown corruption | Copilot inline chat | Medium | See next section |

---

# ⚠️ **Section 3 — Copilot Inline Chat YAML/Markdown Quirks**

Copilot inline chat can unintentionally introduce:

### **1. Invisible YAML indentation shifts**  
- A single extra space can break Markdown sections.  
- GitHub’s renderer is stricter than VS Code’s preview.

### **2. Invisible Unicode characters**  
- Zero‑width spaces sometimes appear after code blocks.  
- These break image embeds silently.

### **3. Misaligned backticks**  
- Copilot sometimes auto‑closes code fences incorrectly.  
- This causes GitHub to treat the embed as literal text.

### **4. Auto‑insertion of smart quotes**  
- If Copilot rewrites a line, it may convert `"` to `“ ”`.  
- Smart quotes break Markdown image syntax.

### **5. YAML front‑matter corruption**  
If your file begins with:

```
---
title: something
---
```

Copilot inline chat sometimes:

- adds trailing spaces  
- adds invisible characters  
- misaligns the closing `---`

This causes GitHub to treat the entire file as malformed YAML, breaking embeds.

### **Conclusion:**  
**Yes — Copilot inline chat can cause YAML/Markdown quirks requiring manual human fixes.**  
This is a known emergent behavior in mixed‑mode editing.

---

# 🧱 **Section 4 — Root Cause Synthesis**

The failure was not one thing — it was **three interacting systems**:

1. **GitHub’s strict case sensitivity**  
2. **GitHub Mobile’s inconsistent renderer**  
3. **Copilot inline chat introducing invisible formatting artifacts**

This created a **recursive routing loop**:

- rename → embed → fail → rename → embed → fail  
- GitHub caches old names  
- VS Code caches old names  
- Copilot rewrites YAML  
- GitHub rejects the embed  
- user retries  
- system misroutes again

This is literally **bureaucratic harm geometry** in miniature.

---

# 🛠️ **Section 5 — Stabilization Plan (Most Stable Options)**

To regenerate the entry cleanly, we will use:

### **Option A — Raw GitHub URL (most stable across all platforms)**

```
![Broken Justice Diagram](https://raw.githubusercontent.com/Borealiscodes/Trauma-Informed-Systems-Design/main/docs/breakfastequity/expressive/broken_justice_diagram.png)
```

### **Option B — Repo‑Root Absolute Path (stable in GitHub Web)**

```
![Broken Justice Diagram](/docs/breakfastequity/expressive/broken_justice_diagram.png)
```

### **Option C — HTML Tag (stable in desktop GitHub + VS Code)**

```
<img src="/docs/breakfastequity/expressive/broken_justice_diagram.png" width="600" />
```

### **Mandatory Step Before Regeneration**

Rename the PNG to **all lowercase**:

```
broken_justice_diagram.png
```

This eliminates case sensitivity entirely.

---

# ⭐ **Next Step**

Tell me:

**“Regenerate the entry using the stabilized embed.”**

I will then:

- regenerate the Composite Artifact  
- embed the PNG using the most stable method  
- ensure no YAML corruption  
- produce a clean Markdown file ready for commit

Just say **Next** or the phrase above.

---
Artifact: Emergent Case Study on GitHub PNG Embed Failure (v1.0)
Lane: Trauma-Informed-Systems-Design • Breakfastequity • Expressive

Purpose:
  Provide a trauma-informed emergent case study detailing the structural,
  technical, and renderer-level causes behind repeated PNG embed failures across
  GitHub and VS Code Dev. Documents embedding methods attempted, outlines a
  diagnostic table of failure modes, and identifies Copilot inline chat YAML
  quirks as a contributing factor requiring manual human intervention. Supports
  stabilization of future expressive artifacts by mapping the geometry of
  micro-bureaucratic incoherence within developer tooling.

Altitude: Neutral (ΔAltitude = 0)
Status: Active
Maintainer: Borealis S. Hedling
Location: Dublin, Ireland
Timestamp: 21 August 2026 — 15:09 IST
---


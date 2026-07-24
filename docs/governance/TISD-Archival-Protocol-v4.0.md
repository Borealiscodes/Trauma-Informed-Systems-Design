# **TISD Archival Protocol (v4.0)**  
### *Final, Clear, Non‑Ambiguous Procedure for Archiving and Referencing Materials in Trauma‑Informed Systems Design*

---

## **1. Repository Boundaries (Final Definition)**

### **Trauma‑Informed Systems Design (TISD)**  
A standalone repository containing:

- trauma‑informed institutional design  
- dignity constraints  
- communication invariants  
- case studies  
- governance protocols  
- GBS math applied to human systems  

TISD does **not** host publication pipelines.  
TISD does **not** depend on NDH‑PLATFORMS.  
TISD does **not** reference the White Paper.

### **NDH‑PLATFORMS**  
A separate repository containing:

- NDH meta‑architecture  
- Verdant Deep  
- platform primitives  
- GBS transformation maps  
- **White Paper draft + publication pipeline**

NDH‑PLATFORMS does **not** import TISD.  
NDH‑PLATFORMS may **conceptually** use TISD‑adjacent ideas, but no structural links exist.

### **NDH White Paper**  
Lives **inside NDH‑PLATFORMS**, not in TISD.  
It is conceptually adjacent to TISD but architecturally independent.

---

## **2. What Gets Archived in TISD**

Archive only materials that belong to **TISD itself**, including:

- contextual case studies  
- precursor analyses  
- orbital governance experiments  
- tonal scaffolding drafts  
- legacy documentation  
- early GBS/TISD hybrids  

These are **TISD artifacts**, not NDH‑PLATFORMS artifacts.  
They remain inside TISD — simply moved into `archive/`.

---

## **3. Archival Method (Simple, Final)**

### **Step 1 — Create the archive directory**

At the root of TISD:

```
archive/
```

### **Step 2 — Create domain‑specific subfolders**

Examples:

```
archive/orbital-governance/
archive/precursor/
archive/readme/
```

### **Step 3 — Move contextual folders into archive**

Example:

```
systems/gbs/orbital/ → archive/orbital-governance/orbital-v1/
```

### **Step 4 — Add a folder‑level README**

Each archived folder must contain:

```
# Archived Materials

These documents are contextual Trauma-Informed Systems Design artifacts preserved
for provenance. They are not part of the active TISD architecture. NDH-PLATFORMS
and the NDH White Paper remain separate repositories and are not referenced here.
```

### **Step 5 — Add a root-level ARCHIVE.md**

```
# TISD Archive

The archive/ directory contains contextual or superseded materials preserved for
provenance. These artifacts remain accessible but are not part of the active TISD
surface.
```

### **Step 6 — Update the main README**

Add:

```
## Archived Materials
Contextual materials are preserved in `archive/` for provenance. These documents
are not part of the active Trauma-Informed Systems Design architecture.
```

---

## **4. Referencing Rules (Final)**

### **Allowed (internal-only)**  
Inside TISD:

```
See: archive/orbital-governance/orbital-v1/
```

### **Not Allowed**  
- referencing NDH‑PLATFORMS  
- referencing the NDH White Paper  
- implying cross‑repo dependency  
- implying shared architecture  
- implying inheritance or absorption  

### **Allowed in NDH‑PLATFORMS**  
The White Paper may **conceptually** reference TISD ideas, but:

- no imports  
- no structural references  
- no repo links  
- no dependency chains  

Conceptual adjacency only.

---

## **5. Why This Protocol Works**

- avoids repo sprawl  
- preserves provenance  
- maintains dignity constraints  
- respects non‑linear development  
- keeps TISD clean and institutional‑facing  
- keeps NDH‑PLATFORMS meta‑architectural  
- keeps the White Paper publication pipeline isolated  
- prevents domain collapse  
- aligns with NDH/TISD/GBS invariants  

This is the simplest, clearest, and most stable architecture.

---

## **6. Versioning**

- **v4.0** — Final clarified protocol  
- Future versions may add automation or CI/CD archival tooling.

---


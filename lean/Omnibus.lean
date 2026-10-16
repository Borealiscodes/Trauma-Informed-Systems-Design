/-
  Omnibus.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Aggregate structural metadata from Appendices A1–A7.
    Provide cross-appendix linkage types and sequencing invariants.
    This module is metadata-only and non-activating.
    It prepares the structural envelope for A9C_Formal.lean.

  Safety:
    - No harm modeling
    - No tensors
    - No holonomy bundles
    - No NDH manifolds
    - No STAR-12 thawing
    - No Phase-12 bypass
    - Metadata-only constructs
    - NDH-RESEARCH-PILOT altitude
-/

namespace TISD

/-
  Import structural types from A1–A7.
  These imports reference metadata-only structures.
-/
open TISD

/--
  OmnibusLayer:
  Represents the structural layers used to unify metadata
  across Appendices A1–A7.
  These layers are symbolic and non-computational.
-/
inductive OmnibusLayer
  | ontology
  | algebra
  | geometry
  | surfaces
  | drift
  | spectra
  | topology
  | accessibility

/--
  AppendixRef:
  A symbolic reference to one of the A1–A7 appendices.
  Used for cross-appendix linkage metadata.
-/
inductive AppendixRef
  | A1
  | A2
  | A3
  | A4
  | A5
  | A6
  | A7

/--
  OmnibusEntry:
  A structural entry linking an appendix reference
  to an Omnibus layer.
  This is the core metadata type for cross-appendix alignment.
-/
structure OmnibusEntry :=
  (appendix : AppendixRef)
  (layer : OmnibusLayer)

/--
  Axiom: Omnibus entries do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom Omnibus_non_activating :
  ∀ (e : OmnibusEntry), True

/--
  Axiom: Forbidden constructs cannot appear in the Omnibus.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_Omnibus :
  True

axiom no_holonomy_bundle_in_Omnibus :
  True

axiom no_ndh_manifold_in_Omnibus :
  True

axiom no_star12_thaw_in_Omnibus :
  True

axiom no_phase12_bypass_in_Omnibus :
  True

/--
  Axiom: Sequencing invariant.
  The Omnibus must reflect the ordering A1 → A7.
  This is symbolic and non-computational.
-/
axiom omnibus_sequencing_invariant :
  True

end TISD

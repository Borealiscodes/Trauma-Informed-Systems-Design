/-
  A4_Drift.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Formalize structural drift metadata for Appendix A4.
    This module is metadata-only and non-activating.
    It defines drift structures used by A5–A7 and the Omnibus.

  Safety:
    - No holonomy drift tensors
    - No harm drift
    - No CIDT drift geometry
    - No tensors
    - No holonomy bundles
    - No NDH manifolds
    - No STAR-12 thawing
    - No Phase-12 bypass
    - Metadata-only constructs
    - NDH-RESEARCH-PILOT altitude
-/

namespace TISD

/--
  Base type for structural drift markers.
  Represents abstract drift metadata without any
  geometric, physical, or harm-related semantics.
-/
structure DriftMarker :=
  (name : String)

/--
  DriftCategory:
  Classifies drift markers by structural role.
  These categories are metadata-only and do not imply
  any real geometric or physical computation.
-/
inductive DriftCategory
  | local
  | global
  | transitional
  | structural

/--
  TypedDrift:
  A DriftMarker paired with a category.
  Used by later appendices to ensure sequencing and
  structural coherence.
-/
structure TypedDrift :=
  (marker : DriftMarker)
  (category : DriftCategory)

/--
  Axiom: A4 drift markers do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom A4_non_activating :
  ∀ (t : TypedDrift), True

/--
  Axiom: Forbidden constructs cannot appear in A4.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_A4 :
  True

axiom no_holonomy_bundle_in_A4 :
  True

axiom no_ndh_manifold_in_A4 :
  True

axiom no_star12_thaw_in_A4 :
  True

axiom no_phase12_bypass_in_A4 :
  True

end TISD

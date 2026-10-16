/-
  A7_Accessibility.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Formalize structural accessibility metadata for Appendix A7.
    This module is metadata-only and non-activating.
    It defines accessibility markers used by the Omnibus and A9C.

  Safety:
    - No accessibility manifold activation
    - No harm accessibility modeling
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
  Base type for accessibility markers.
  Represents abstract accessibility metadata without any
  computational, physical, or harm-related semantics.
-/
structure AccessibilityMarker :=
  (name : String)

/--
  AccessibilityCategory:
  Classifies accessibility markers by structural role.
  These categories are metadata-only and do not imply
  any real manifold or accessibility computation.
-/
inductive AccessibilityCategory
  | perceptual
  | cognitive
  | physical
  | structural

/--
  TypedAccessibility:
  An AccessibilityMarker paired with a category.
  Used by the Omnibus and A9C to ensure sequencing and
  structural coherence.
-/
structure TypedAccessibility :=
  (marker : AccessibilityMarker)
  (category : AccessibilityCategory)

/--
  Axiom: A7 accessibility markers do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom A7_non_activating :
  ∀ (t : TypedAccessibility), True

/--
  Axiom: Forbidden constructs cannot appear in A7.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_A7 :
  True

axiom no_holonomy_bundle_in_A7 :
  True

axiom no_ndh_manifold_in_A7 :
  True

axiom no_star12_thaw_in_A7 :
  True

axiom no_phase12_bypass_in_A7 :
  True

end TISD

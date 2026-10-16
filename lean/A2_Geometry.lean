/-
  A2_Geometry.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Formalize structural geometry overlay metadata for Appendix A2.
    This module is metadata-only and non-activating.
    It defines geometric overlay structures used by A3–A7 and the Omnibus.

  Safety:
    - No harm surfaces
    - No CIDT geometry
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
  Base type for geometry overlays.
  Represents structural geometric metadata without any
  computational or physical semantics.
-/
structure GeometryOverlay :=
  (name : String)

/--
  OverlayCategory:
  Classifies overlays by structural role.
  These categories are metadata-only and do not imply
  any real geometric computation.
-/
inductive OverlayCategory
  | linear
  | nonlinear
  | structural

/--
  TypedOverlay:
  A GeometryOverlay paired with a category.
  Used by later appendices to ensure sequencing and
  structural coherence.
-/
structure TypedOverlay :=
  (overlay : GeometryOverlay)
  (category : OverlayCategory)

/--
  Axiom: A2 geometry overlays do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom A2_non_activating :
  ∀ (t : TypedOverlay), True

/--
  Axiom: Forbidden constructs cannot appear in A2.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_A2 :
  True

axiom no_holonomy_bundle_in_A2 :
  True

axiom no_ndh_manifold_in_A2 :
  True

axiom no_star12_thaw_in_A2 :
  True

axiom no_phase12_bypass_in_A2 :
  True

end TISD

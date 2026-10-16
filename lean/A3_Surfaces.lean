/-
  A3_Surfaces.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Formalize structural surface metadata for Appendix A3.
    This module is metadata-only and non-activating.
    It defines surface structures used by A4–A7 and the Omnibus.

  Safety:
    - No harm surfaces
    - No CIDT surface calculus
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
  Base type for structural surfaces.
  Represents abstract surface metadata without any
  geometric, physical, or harm-related semantics.
-/
structure Surface :=
  (name : String)

/--
  SurfaceCategory:
  Classifies surfaces by structural role.
  These categories are metadata-only and do not imply
  any real geometric or physical computation.
-/
inductive SurfaceCategory
  | flat
  | curved
  | composite
  | structural

/--
  TypedSurface:
  A Surface paired with a category.
  Used by later appendices to ensure sequencing and
  structural coherence.
-/
structure TypedSurface :=
  (surface : Surface)
  (category : SurfaceCategory)

/--
  Axiom: A3 surfaces do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom A3_non_activating :
  ∀ (t : TypedSurface), True

/--
  Axiom: Forbidden constructs cannot appear in A3.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_A3 :
  True

axiom no_holonomy_bundle_in_A3 :
  True

axiom no_ndh_manifold_in_A3 :
  True

axiom no_star12_thaw_in_A3 :
  True

axiom no_phase12_bypass_in_A3 :
  True

end TISD

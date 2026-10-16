/-
  A5_Spectra.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Formalize structural spectral metadata for Appendix A5.
    This module is metadata-only and non-activating.
    It defines spectral obstruction tags used by A6–A7 and the Omnibus.

  Safety:
    - No spectral calculus
    - No spectral harm operators
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
  Base type for spectral obstruction tags.
  Represents abstract spectral metadata without any
  computational, physical, or harm-related semantics.
-/
structure SpectralTag :=
  (name : String)

/--
  SpectralCategory:
  Classifies spectral tags by structural role.
  These categories are metadata-only and do not imply
  any real spectral computation.
-/
inductive SpectralCategory
  | low
  | mid
  | high
  | structural

/--
  TypedSpectral:
  A SpectralTag paired with a category.
  Used by later appendices to ensure sequencing and
  structural coherence.
-/
structure TypedSpectral :=
  (tag : SpectralTag)
  (category : SpectralCategory)

/--
  Axiom: A5 spectral tags do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom A5_non_activating :
  ∀ (t : TypedSpectral), True

/--
  Axiom: Forbidden constructs cannot appear in A5.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_A5 :
  True

axiom no_holonomy_bundle_in_A5 :
  True

axiom no_ndh_manifold_in_A5 :
  True

axiom no_star12_thaw_in_A5 :
  True

axiom no_phase12_bypass_in_A5 :
  True

end TISD

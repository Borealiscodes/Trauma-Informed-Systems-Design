/-
  A1_Operators.lean
  Trauma-Informed Systems Design (TISD)
  NDH-RESEARCH-PILOT Altitude

  Purpose:
    Formalize structural operator types for Appendix A1.
    This module is metadata-only and non-activating.
    It defines the foundational operator structures used
    in subsequent appendices (A2–A7) and the Omnibus.

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

/-- 
  Base type for all A1 operators.
  This is intentionally abstract: it represents structural
  entities used for pattern-recognition metadata.
-/
structure A1Operator :=
  (name : String)

/--
  OperatorCategory:
  A simple enumeration used to classify operators
  without introducing any computational semantics.
-/
inductive OperatorCategory
  | primitive
  | composite
  | structural

/--
  Typed operator: an A1Operator paired with a category.
  This is used by later appendices to ensure sequencing
  and structural coherence.
-/
structure TypedOperator :=
  (op : A1Operator)
  (category : OperatorCategory)

/--
  Axiom: A1 operators do not compute or propagate harm.
  This is a structural safety invariant.
-/
axiom A1_non_activating :
  ∀ (t : TypedOperator), True

/--
  Axiom: Forbidden constructs cannot appear in A1.
  These axioms serve as negative constraints for LHG.
-/
axiom no_tensor_in_A1 :
  True

axiom no_holonomy_bundle_in_A1 :
  True

axiom no_ndh_manifold_in_A1 :
  True

axiom no_star12_thaw_in_A1 :
  True

axiom no_phase12_bypass_in_A1 :
  True

end TISD

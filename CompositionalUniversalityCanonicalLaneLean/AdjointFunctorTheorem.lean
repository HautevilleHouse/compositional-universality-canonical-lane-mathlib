import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure AdjointFunctorTheorem where
  leftAdjoint : Type u → Type v
  rightAdjoint : Type u → Type v
  adjunctionIso : Prop
  unitCondition : Prop
  counitCondition : Prop

structure AdjointFunctorTheoremEvidence (A : AdjointFunctorTheorem) where
  adjunctionIsoClosed : A.adjunctionIso
  unitConditionClosed : A.unitCondition
  counitConditionClosed : A.counitCondition

def AdjointFunctorTheoremClosed (A : AdjointFunctorTheorem) : Prop :=
  A.adjunctionIso ∧ A.unitCondition ∧ A.counitCondition

theorem adjoint_functor_theorem_closed_from_evidence
    (A : AdjointFunctorTheorem) (E : AdjointFunctorTheoremEvidence A) :
    AdjointFunctorTheoremClosed A := by
  exact And.intro E.adjunctionIsoClosed (And.intro E.unitConditionClosed E.counitConditionClosed)

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse

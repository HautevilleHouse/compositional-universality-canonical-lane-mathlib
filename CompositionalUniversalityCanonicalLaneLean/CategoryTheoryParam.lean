import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CategoryTheoryParameterization where
  baseCategory : Type u
  baseTopology : TopologicalSpace baseCategory
  compositionLaw : baseCategory → baseCategory → baseCategory
  identityMorphism : baseCategory
  associativityCondition : Prop
  identityCondition : Prop

structure CategoryTheoryParameterizationEvidence (C : CategoryTheoryParameterization) where
  associativityConditionClosed : C.associativityCondition
  identityConditionClosed : C.identityCondition

def CategoryTheoryParameterizationClosed (C : CategoryTheoryParameterization) : Prop :=
  C.associativityCondition ∧ C.identityCondition

theorem category_theory_parameterization_closed_from_evidence
    (C : CategoryTheoryParameterization) (E : CategoryTheoryParameterizationEvidence C) :
    CategoryTheoryParameterizationClosed C := by
  exact And.intro E.associativityConditionClosed E.identityConditionClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse

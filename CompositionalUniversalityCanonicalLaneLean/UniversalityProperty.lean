import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure UniversalityProperty where
  universalObject : Type u
  universalMorphism : Type v
  factorizationProperty : Prop
  uniquenessCondition : Prop

structure UniversalityPropertyEvidence (U : UniversalityProperty) where
  factorizationPropertyClosed : U.factorizationProperty
  uniquenessConditionClosed : U.uniquenessCondition

def UniversalityPropertyClosed (U : UniversalityProperty) : Prop :=
  U.factorizationProperty ∧ U.uniquenessCondition

theorem universality_property_closed_from_evidence
    (U : UniversalityProperty) (E : UniversalityPropertyEvidence U) :
    UniversalityPropertyClosed U := by
  exact And.intro E.factorizationPropertyClosed E.uniquenessConditionClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse

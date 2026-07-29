import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure KanExtensionConstruction where
  leftKanExtension : Type u
  rightKanExtension : Type v
  extensionCondition : Prop
  universalProperty : Prop

structure KanExtensionConstructionEvidence (K : KanExtensionConstruction) where
  extensionConditionClosed : K.extensionCondition
  universalPropertyClosed : K.universalProperty

def KanExtensionConstructionClosed (K : KanExtensionConstruction) : Prop :=
  K.extensionCondition ∧ K.universalProperty

theorem kan_extension_construction_closed_from_evidence
    (K : KanExtensionConstruction) (E : KanExtensionConstructionEvidence K) :
    KanExtensionConstructionClosed K := by
  exact And.intro E.extensionConditionClosed E.universalPropertyClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse

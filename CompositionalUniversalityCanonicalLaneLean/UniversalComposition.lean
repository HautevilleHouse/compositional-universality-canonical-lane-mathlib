import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure UniversalCompositionPackage {L1 L2 L3 : Type u}
    (S : CompositionalSemanticsPackage) (T : CompositionalSemanticsPackage) where
  intermediateLanguage : Type u
  firstStep : S.sourceLanguage -> intermediateLanguage
  secondStep : intermediateLanguage -> T.targetLanguage
  composition : S.sourceLanguage -> T.targetLanguage := secondStep ∘ firstStep
  universalProperty : Prop
  universalPropertyProof : universalProperty

structure UniversalCompositionEvidence {L1 L2 L3 : Type u}
    {S : CompositionalSemanticsPackage} {T : CompositionalSemanticsPackage}
    (U : UniversalCompositionPackage S T) where
  universalPropertyClosed : U.universalProperty

def UniversalCompositionClosed {L1 L2 L3 : Type u}
    {S : CompositionalSemanticsPackage} {T : CompositionalSemanticsPackage}
    (U : UniversalCompositionPackage S T) : Prop :=
  U.universalProperty

theorem universal_composition_closed_from_evidence
    {L1 L2 L3 : Type u} {S : CompositionalSemanticsPackage} {T : CompositionalSemanticsPackage}
    (U : UniversalCompositionPackage S T) (E : UniversalCompositionEvidence U) :
    UniversalCompositionClosed U := by
  exact E.universalPropertyClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
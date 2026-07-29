import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionalSemanticsPackage where
  sourceLanguage : Type u
  targetLanguage : Type v
  compositionalMapping : sourceLanguage -> targetLanguage
  semanticPreservation : Prop
  compositionalityProof : Prop

structure CompositionalSemanticsEvidence (P : CompositionalSemanticsPackage) where
  semanticPreservationClosed : P.semanticPreservation
  compositionalityProofClosed : P.compositionalityProof

def CompositionalSemanticsClosed (P : CompositionalSemanticsPackage) : Prop :=
  P.semanticPreservation ∧ P.compositionalityProof

theorem compositional_semantics_closed_from_evidence
    (P : CompositionalSemanticsPackage) (E : CompositionalSemanticsEvidence P) :
    CompositionalSemanticsClosed P := by
  exact And.intro E.semanticPreservationClosed E.compositionalityProofClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
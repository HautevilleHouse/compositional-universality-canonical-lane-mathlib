import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure FunctorialCompositionPackage where
  baseCategory : Type u
  targetCategory : Type v
  functor : baseCategory → targetCategory
  compositionLaw : ∀ (f g : baseCategory), functor (g ∘ f) = functor g ∘ functor f
  identityPreserved : ∀ (x : baseCategory), functor (id x) = id (functor x)

structure FunctorialCompositionEvidence (F : FunctorialCompositionPackage) where
  compositionLawClosed : F.compositionLaw
  identityPreservedClosed : F.identityPreserved

def FunctorialCompositionClosed (F : FunctorialCompositionPackage) : Prop :=
  F.compositionLaw ∧ F.identityPreserved

theorem functorial_composition_closed_from_evidence
    (F : FunctorialCompositionPackage) (E : FunctorialCompositionEvidence F) :
    FunctorialCompositionClosed F := by
  exact And.intro E.compositionLawClosed E.identityPreservedClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
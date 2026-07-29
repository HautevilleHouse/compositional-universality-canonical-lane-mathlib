import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionalLawsPackage where
  associativity : Prop
  commutativity : Prop
  distributivity : Prop
  compositionClosure : Prop
  identityElements : Prop

structure CompositionalLawsEvidence (P : CompositionalLawsPackage) where
  associativityClosed : P.associativity
  commutativityClosed : P.commutativity
  distributivityClosed : P.distributivity
  compositionClosureClosed : P.compositionClosure
  identityElementsClosed : P.identityElements

def CompositionalLawsClosed (P : CompositionalLawsPackage) : Prop :=
  P.associativity ∧ P.commutativity ∧ P.distributivity ∧ P.compositionClosure ∧ P.identityElements

theorem compositional_laws_closed_from_evidence (P : CompositionalLawsPackage) (E : CompositionalLawsEvidence P) :
    CompositionalLawsClosed P := by
  exact And.intro E.associativityClosed
    (And.intro E.commutativityClosed
      (And.intro E.distributivityClosed
        (And.intro E.compositionClosureClosed E.identityElementsClosed)))

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
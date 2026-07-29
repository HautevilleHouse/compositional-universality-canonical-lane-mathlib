import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionalBicategoryPackage (Obj : Type u) where
  oneCell : Obj -> Obj -> Type v
  twoCell : ∀ {a b : Obj}, oneCell a b -> oneCell a b -> Type w
  verticalComposition : ∀ {a b : Obj} {f g h : oneCell a b},
    twoCell f g -> twoCell g h -> twoCell f h
  horizontalComposition : ∀ {a b c : Obj} (f : oneCell a b) (g : oneCell b c),
    oneCell a c
  associativity : Prop
  unitarity : Prop
  interchangeLaw : Prop
  associativityProof : associativity
  unitarityProof : unitarity
  interchangeLawProof : interchangeLaw

structure CompositionalBicategoryEvidence (Obj : Type u)
    (B : CompositionalBicategoryPackage Obj) where
  associativityClosed : B.associativity
  unitarityClosed : B.unitarity
  interchangeLawClosed : B.interchangeLaw

def CompositionalBicategoryClosed (Obj : Type u)
    (B : CompositionalBicategoryPackage Obj) : Prop :=
  B.associativity ∧ B.unitarity ∧ B.interchangeLaw

theorem compositional_bicategory_closed_from_evidence
    (Obj : Type u) (B : CompositionalBicategoryPackage Obj)
    (E : CompositionalBicategoryEvidence Obj B) :
    CompositionalBicategoryClosed Obj B := by
  exact And.intro E.associativityClosed
    (And.intro E.unitarityClosed E.interchangeLawClosed)

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
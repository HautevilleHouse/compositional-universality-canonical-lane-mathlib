import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure UniversalMorphismPackage where
  initialObject : Prop
  terminalObject : Prop
  universalProperty : Prop
  uniqueFactorization : Prop
  representationTheorem : Prop

structure UniversalMorphismEvidence (U : UniversalMorphismPackage) where
  initialObjectClosed : U.initialObject
  terminalObjectClosed : U.terminalObject
  universalPropertyClosed : U.universalProperty
  uniqueFactorizationClosed : U.uniqueFactorization
  representationTheoremClosed : U.representationTheorem

def UniversalMorphismClosed (U : UniversalMorphismPackage) : Prop :=
  U.initialObject ∧ U.terminalObject ∧ U.universalProperty ∧ U.uniqueFactorization ∧ U.representationTheorem

theorem universal_morphism_closed_from_evidence (U : UniversalMorphismPackage) (E : UniversalMorphismEvidence U) :
    UniversalMorphismClosed U := by
  exact And.intro E.initialObjectClosed
    (And.intro E.terminalObjectClosed
      (And.intro E.universalPropertyClosed
        (And.intro E.uniqueFactorizationClosed E.representationTheoremClosed)))

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
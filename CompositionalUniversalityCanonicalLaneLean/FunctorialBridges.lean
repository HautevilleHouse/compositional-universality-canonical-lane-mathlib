import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure FunctorialBridgePackage where
  functorLaws : Prop
  naturalTransformation : Prop
  adjunction : Prop
  categoricalClosure : Prop
  equivalencePreserved : Prop

structure FunctorialBridgeEvidence (F : FunctorialBridgePackage) where
  functorLawsClosed : F.functorLaws
  naturalTransformationClosed : F.naturalTransformation
  adjunctionClosed : F.adjunction
  categoricalClosureClosed : F.categoricalClosure
  equivalencePreservedClosed : F.equivalencePreserved

def FunctorialBridgeClosed (F : FunctorialBridgePackage) : Prop :=
  F.functorLaws ∧ F.naturalTransformation ∧ F.adjunction ∧ F.categoricalClosure ∧ F.equivalencePreserved

theorem functorial_bridge_closed_from_evidence (F : FunctorialBridgePackage) (E : FunctorialBridgeEvidence F) :
    FunctorialBridgeClosed F := by
  exact And.intro E.functorLawsClosed
    (And.intro E.naturalTransformationClosed
      (And.intro E.adjunctionClosed
        (And.intro E.categoricalClosureClosed E.equivalencePreservedClosed)))

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
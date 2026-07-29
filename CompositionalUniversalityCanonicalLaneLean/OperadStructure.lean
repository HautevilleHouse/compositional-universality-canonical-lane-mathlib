import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure OperadStructurePackage where
  colors : Type u
  operations : List (List colors × colors)
  composition : ∀ (ops : List (List colors × colors)), operations → ops → operations
  unit : colors → operations
  associativity : Prop
  unitality : Prop

structure OperadStructureEvidence (O : OperadStructurePackage) where
  associativityClosed : O.associativity
  unitalityClosed : O.unitality

def OperadStructureClosed (O : OperadStructurePackage) : Prop :=
  O.associativity ∧ O.unitality

theorem operad_structure_closed_from_evidence
    (O : OperadStructurePackage) (E : OperadStructureEvidence O) :
    OperadStructureClosed O := by
  exact And.intro E.associativityClosed E.unitalityClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
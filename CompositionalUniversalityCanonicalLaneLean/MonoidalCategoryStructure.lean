import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure MonoidalCategoryStructure where
  tensorProduct : Type u → Type u → Type u
  unitObject : Type u
  associator : Prop
  leftUnitor : Prop
  rightUnitor : Prop
  pentagonCondition : Prop
  triangleCondition : Prop

structure MonoidalCategoryStructureEvidence (M : MonoidalCategoryStructure) where
  associatorClosed : M.associator
  leftUnitorClosed : M.leftUnitor
  rightUnitorClosed : M.rightUnitor
  pentagonConditionClosed : M.pentagonCondition
  triangleConditionClosed : M.triangleCondition

def MonoidalCategoryStructureClosed (M : MonoidalCategoryStructure) : Prop :=
  M.associator ∧ M.leftUnitor ∧ M.rightUnitor ∧ M.pentagonCondition ∧ M.triangleCondition

theorem monoidal_category_structure_closed_from_evidence
    (M : MonoidalCategoryStructure) (E : MonoidalCategoryStructureEvidence M) :
    MonoidalCategoryStructureClosed M := by
  exact And.intro E.associatorClosed
    (And.intro E.leftUnitorClosed
      (And.intro E.rightUnitorClosed
        (And.intro E.pentagonConditionClosed E.triangleConditionClosed)))

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse

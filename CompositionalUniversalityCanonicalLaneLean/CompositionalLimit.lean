import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionalLimitPackage
    {C : CompositionalBicategoryPackage Obj} (J : Type w) where
  diagram : J -> Obj
  limitObject : Obj
  projectionMaps : ∀ j : J, C.oneCell limitObject (diagram j)
  universalProperty : ∀ (candidate : Obj)
    (maps : ∀ j : J, C.oneCell candidate (diagram j)),
    ∃! factor : C.oneCell candidate limitObject,
      ∀ j : J, C.horizontalComposition factor (projectionMaps j) = maps j
  universalityProof : universalProperty

structure CompositionalLimitEvidence
    {C : CompositionalBicategoryPackage Obj} {J : Type w}
    (L : CompositionalLimitPackage C J) where
  universalPropertyClosed : L.universalProperty

def CompositionalLimitClosed
    {C : CompositionalBicategoryPackage Obj} {J : Type w}
    (L : CompositionalLimitPackage C J) : Prop :=
  L.universalProperty

theorem compositional_limit_closed_from_evidence
    {C : CompositionalBicategoryPackage Obj} {J : Type w}
    (L : CompositionalLimitPackage C J) (E : CompositionalLimitEvidence L) :
    CompositionalLimitClosed L := by
  exact E.universalPropertyClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
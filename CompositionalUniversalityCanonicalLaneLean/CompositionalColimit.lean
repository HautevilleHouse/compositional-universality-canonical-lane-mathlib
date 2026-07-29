import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionalColimitPackage
    {C : CompositionalBicategoryPackage Obj} (J : Type w) where
  diagram : J -> Obj
  colimitObject : Obj
  injectionMaps : ∀ j : J, C.oneCell (diagram j) colimitObject
  universalProperty : ∀ (candidate : Obj)
    (maps : ∀ j : J, C.oneCell (diagram j) candidate),
    ∃! factor : C.oneCell colimitObject candidate,
      ∀ j : J, C.horizontalComposition (injectionMaps j) factor = maps j
  universalityProof : universalProperty

structure CompositionalColimitEvidence
    {C : CompositionalBicategoryPackage Obj} {J : Type w}
    (L : CompositionalColimitPackage C J) where
  universalPropertyClosed : L.universalProperty

def CompositionalColimitClosed
    {C : CompositionalBicategoryPackage Obj} {J : Type w}
    (L : CompositionalColimitPackage C J) : Prop :=
  L.universalProperty

theorem compositional_colimit_closed_from_evidence
    {C : CompositionalBicategoryPackage Obj} {J : Type w}
    (L : CompositionalColimitPackage C J) (E : CompositionalColimitEvidence L) :
    CompositionalColimitClosed L := by
  exact E.universalPropertyClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
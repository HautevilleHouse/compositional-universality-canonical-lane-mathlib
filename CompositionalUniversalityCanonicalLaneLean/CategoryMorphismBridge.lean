import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CategoryMorphism (Obj : Type) (Mor : Obj → Obj → Type) where
  dom : Obj
  cod : Obj
  morph : Mor dom cod

structure BridgeMorphism (A B : AdmissibleClass) where
  bridge : CategoryMorphism (AdmissibleClass) (fun _ _ => Type)  -- placeholder
  bridgeClosed : Prop
  bridgeClosedTerm : bridgeClosed

theorem bridge_morphism_closed (A B : AdmissibleClass) (bm : BridgeMorphism A B) :
    bm.bridgeClosed := bm.bridgeClosedTerm

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
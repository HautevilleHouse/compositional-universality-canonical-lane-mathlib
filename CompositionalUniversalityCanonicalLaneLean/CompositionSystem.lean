import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionSystem (Obj : Type) (Mor : Obj → Obj → Type) where
  identity : ∀ x : Obj, Mor x x
  compose : ∀ {x y z : Obj}, Mor x y → Mor y z → Mor x z
  identityLeft : ∀ {x y : Obj} (f : Mor x y), compose (identity x) f = f
  identityRight : ∀ {x y : Obj} (f : Mor x y), compose f (identity y) = f
  associativity : ∀ {w x y z : Obj} (f : Mor w x) (g : Mor x y) (h : Mor y z), compose (compose f g) h = compose f (compose g h)

structure CompositionalUniversalityEvidence (C : CompositionSystem) where
  sourceTarget : C.source → C.target
  universalProperty : Prop
  universalPropertyTerm : universalProperty

def CompositionalUniversalitySystemClosed (C : CompositionSystem) : Prop :=
  ∀ (A : AdmissibleClass), CompositionalUniversalityClosure A

theorem compositional_universality_system_closed (C : CompositionSystem) :
    CompositionalUniversalitySystemClosed C := by
  intro A
  exact compositional_universality_endgame A

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
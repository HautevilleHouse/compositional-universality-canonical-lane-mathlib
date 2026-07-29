import compositionalUniversalityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def compositionalProjection : Projection CompositionalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem compositional_projection_idempotent (x : CompositionalEndgameState) :
    compositionalProjection.toFun (compositionalProjection.toFun x) = compositionalProjection.toFun x := by
  exact compositionalProjection.idempotent x

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
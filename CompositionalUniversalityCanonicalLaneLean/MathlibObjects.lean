import compositionalUniversalityCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompositionalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CompositionalAdmittedObject where
  space : CompositionalSpace
  closed : Prop
  simplyConnected : Prop
  model : Type
  modelTopology : TopologicalSpace model
  homeomorphicToModel : Prop
  conclusion : homeomorphicToModel

structure CompositionalEndgameState where
  object : CompositionalAdmittedObject

def CompositionalWitnessClosed (O : CompositionalAdmittedObject) : Prop :=
  O.homeomorphicToModel

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
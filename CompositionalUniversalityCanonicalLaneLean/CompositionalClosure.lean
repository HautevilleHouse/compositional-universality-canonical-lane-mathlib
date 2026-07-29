import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionalAdmittedObject where
  object : Type
  structure : Prop
  compositionalProperty : Prop
  conclusion : compositionalProperty

structure AdmissibleClass where
  object : CompositionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompositionalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CompositionalWitnessClosed (O : CompositionalAdmittedObject) : Prop :=
  O.compositionalProperty

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
import compositionalUniversalityCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure AdmissibleClass where
  object : CompositionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompositionalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
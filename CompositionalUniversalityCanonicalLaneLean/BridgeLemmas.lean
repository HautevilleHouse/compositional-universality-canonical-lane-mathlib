import compositionalUniversalityCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompositionalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
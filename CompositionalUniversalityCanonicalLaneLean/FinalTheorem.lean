import compositionalUniversalityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

def ConstrainedCompositionalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compositional_endgame (A : AdmissibleClass) :
    ConstrainedCompositionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse
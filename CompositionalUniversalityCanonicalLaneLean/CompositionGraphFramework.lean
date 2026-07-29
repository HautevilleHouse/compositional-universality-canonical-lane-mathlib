import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositionalUniversalityCanonicalLaneLean

structure CompositionGraph where
  vertexSet : Type u
  edgeSet : Type v
  sourceMap : edgeSet → vertexSet
  targetMap : edgeSet → vertexSet
  compositionOperation : edgeSet → edgeSet → edgeSet
  compositionCondition : Prop

structure CompositionGraphEvidence (G : CompositionGraph) where
  compositionConditionClosed : G.compositionCondition

def CompositionGraphClosed (G : CompositionGraph) : Prop :=
  G.compositionCondition

theorem composition_graph_closed_from_evidence
    (G : CompositionGraph) (E : CompositionGraphEvidence G) :
    CompositionGraphClosed G := by
  exact E.compositionConditionClosed

end CompositionalUniversalityCanonicalLaneLean
end HautevilleHouse

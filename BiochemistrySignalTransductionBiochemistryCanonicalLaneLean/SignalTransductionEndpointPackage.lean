import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.KinaseCascadePackage

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalTransductionEndpointPackage {K : KinaseCascadePackage} (cascade : K) where
  cellResponse : Type u
  responseMeasurable : Prop
  downstreamGeneExpression : Prop
  endpointMatchesPhysiologicalState : Prop
  signalingEndpointReached : Prop

structure SignalTransductionEndpointEvidence {K : KinaseCascadePackage} {cascade : K}
    (E : SignalTransductionEndpointPackage cascade) where
  responseMeasurableClosed : E.responseMeasurable
  downstreamGeneExpressionClosed : E.downstreamGeneExpression
  endpointMatchesPhysiologicalStateClosed : E.endpointMatchesPhysiologicalState
  signalingEndpointReachedClosed : E.signalingEndpointReached

def SignalTransductionEndpointClosed {K : KinaseCascadePackage} {cascade : K}
    (E : SignalTransductionEndpointPackage cascade) : Prop :=
  E.responseMeasurable ∧ E.downstreamGeneExpression ∧
  E.endpointMatchesPhysiologicalState ∧ E.signalingEndpointReached

theorem signal_transduction_endpoint_closed_from_evidence
    {K : KinaseCascadePackage} {cascade : K}
    (E : SignalTransductionEndpointPackage cascade)
    (Ev : SignalTransductionEndpointEvidence E) : SignalTransductionEndpointClosed E := by
  exact And.intro Ev.responseMeasurableClosed
    (And.intro Ev.downstreamGeneExpressionClosed
      (And.intro Ev.endpointMatchesPhysiologicalStateClosed Ev.signalingEndpointReachedClosed))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
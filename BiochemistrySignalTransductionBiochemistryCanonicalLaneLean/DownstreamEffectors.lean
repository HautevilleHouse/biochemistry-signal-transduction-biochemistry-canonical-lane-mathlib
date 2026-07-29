import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure DownstreamEffectorsPackage {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    {T : TransductionPathwayPackage C} where
  transcriptionFactors : Prop
  geneExpressionChanges : Prop
  metabolicAdaptations : Prop
  cytoskeletalRearrangements : Prop
  cellFateDecisions : Prop

structure DownstreamEffectorsEvidence {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    {T : TransductionPathwayPackage C} (D : DownstreamEffectorsPackage T) where
  transcriptionFactorsClosed : D.transcriptionFactors
  geneExpressionChangesClosed : D.geneExpressionChanges
  metabolicAdaptationsClosed : D.metabolicAdaptations
  cytoskeletalRearrangementsClosed : D.cytoskeletalRearrangements
  cellFateDecisionsClosed : D.cellFateDecisions

def DownstreamEffectorsClosed {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    {T : TransductionPathwayPackage C} (D : DownstreamEffectorsPackage T) : Prop :=
  D.transcriptionFactors ∧ D.geneExpressionChanges ∧
  D.metabolicAdaptations ∧ D.cytoskeletalRearrangements ∧
  D.cellFateDecisions

theorem downstream_effectors_closed_from_evidence {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    {T : TransductionPathwayPackage C} (D : DownstreamEffectorsPackage T)
    (E : DownstreamEffectorsEvidence D) : DownstreamEffectorsClosed D := by
  exact And.intro E.transcriptionFactorsClosed
    (And.intro E.geneExpressionChangesClosed
      (And.intro E.metabolicAdaptationsClosed
        (And.intro E.cytoskeletalRearrangementsClosed
          E.cellFateDecisionsClosed)))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
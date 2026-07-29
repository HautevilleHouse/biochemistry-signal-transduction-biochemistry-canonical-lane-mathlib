import canonicalLaneMathlib.AdmissibleClass
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalPathwayPDEPackage (G : SignalTransductionAdmittedObject) where
  timeParameter : Type u
  concentrationField : timeParameter → Type v
  reactionDiffusionEquation : Prop
  initialConditionMatches : Prop
  boundaryConditionSatisfied : Prop

structure SignalPathwayPDEEvidence {G : SignalTransductionAdmittedObject}
    (F : SignalPathwayPDEPackage G) where
  reactionDiffusionEquationClosed : F.reactionDiffusionEquation
  initialConditionMatchesClosed : F.initialConditionMatches
  boundaryConditionSatisfiedClosed : F.boundaryConditionSatisfied

def SignalPathwayPDEClosed {G : SignalTransductionAdmittedObject}
    (F : SignalPathwayPDEPackage G) : Prop :=
  F.reactionDiffusionEquation ∧ F.initialConditionMatches ∧ F.boundaryConditionSatisfied

theorem signal_pathway_pde_closed_from_evidence
    {G : SignalTransductionAdmittedObject} (F : SignalPathwayPDEPackage G)
    (E : SignalPathwayPDEEvidence F) : SignalPathwayPDEClosed F := by
  exact And.intro E.reactionDiffusionEquationClosed
    (And.intro E.initialConditionMatchesClosed E.boundaryConditionSatisfiedClosed)

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
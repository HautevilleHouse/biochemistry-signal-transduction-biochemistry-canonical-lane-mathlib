import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure SignalTransductionPDEPackage where
  reactionDiffusionEquations : Prop
  massActionKinetics : Prop
  spatialGradients : Prop
  boundaryConditions : Prop
  initialConditions : Prop

def SignalTransductionPDEClosed (P : SignalTransductionPDEPackage) : Prop :=
  P.reactionDiffusionEquations ∧ P.massActionKinetics ∧
  P.spatialGradients ∧ P.boundaryConditions ∧ P.initialConditions

structure SignalTransductionPDEEvidence (P : SignalTransductionPDEPackage) where
  reactionDiffusionEquationsClosed : P.reactionDiffusionEquations
  massActionKineticsClosed : P.massActionKinetics
  spatialGradientsClosed : P.spatialGradients
  boundaryConditionsClosed : P.boundaryConditions
  initialConditionsClosed : P.initialConditions

theorem signal_transduction_pde_closed_from_evidence
    (P : SignalTransductionPDEPackage) (E : SignalTransductionPDEEvidence P) :
    SignalTransductionPDEClosed P := by
  exact And.intro E.reactionDiffusionEquationsClosed
    (And.intro E.massActionKineticsClosed
      (And.intro E.spatialGradientsClosed
        (And.intro E.boundaryConditionsClosed E.initialConditionsClosed)))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
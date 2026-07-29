import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure TransductionPathwayPackage {R : ReceptorKineticsPackage} (C : SignalCascadePackage) where
  kinaseCascade : Prop
  phosphataseCascade : Prop
  feedbackLoops : Prop
  crosstalk : Prop
  pathwaySpecificity : Prop

structure TransductionPathwayEvidence {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    (T : TransductionPathwayPackage C) where
  kinaseCascadeClosed : T.kinaseCascade
  phosphataseCascadeClosed : T.phosphataseCascade
  feedbackLoopsClosed : T.feedbackLoops
  crosstalkClosed : T.crosstalk
  pathwaySpecificityClosed : T.pathwaySpecificity

def TransductionPathwayClosed {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    (T : TransductionPathwayPackage C) : Prop :=
  T.kinaseCascade ∧ T.phosphataseCascade ∧
  T.feedbackLoops ∧ T.crosstalk ∧
  T.pathwaySpecificity

theorem transduction_pathway_closed_from_evidence {R : ReceptorKineticsPackage} {C : SignalCascadePackage}
    (T : TransductionPathwayPackage C) (E : TransductionPathwayEvidence T) :
    TransductionPathwayClosed T := by
  exact And.intro E.kinaseCascadeClosed
    (And.intro E.phosphataseCascadeClosed
      (And.intro E.feedbackLoopsClosed
        (And.intro E.crosstalkClosed
          E.pathwaySpecificityClosed)))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
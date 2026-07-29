import canonicalLaneMathlib.AdmissibleClass
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.ReceptorKinetics

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure FeedbackControlPackage {G : SignalTransductionAdmittedObject}
    {F : SignalPathwayPDEPackage G} {S : ReceptorKineticsPackage F} where
  positiveFeedbackLoop : Prop
  negativeFeedbackLoop : Prop
  adaptationMechanism : Prop
  stabilityCondition : Prop

structure FeedbackControlEvidence {G : SignalTransductionAdmittedObject}
    {F : SignalPathwayPDEPackage G} {S : ReceptorKineticsPackage F}
    (C : FeedbackControlPackage F S) where
  positiveFeedbackLoopClosed : C.positiveFeedbackLoop
  negativeFeedbackLoopClosed : C.negativeFeedbackLoop
  adaptationMechanismClosed : C.adaptationMechanism
  stabilityConditionClosed : C.stabilityCondition

def FeedbackControlClosed {G : SignalTransductionAdmittedObject}
    {F : SignalPathwayPDEPackage G} {S : ReceptorKineticsPackage F}
    (C : FeedbackControlPackage F S) : Prop :=
  C.positiveFeedbackLoop ∧ C.negativeFeedbackLoop ∧ C.adaptationMechanism ∧ C.stabilityCondition

theorem feedback_control_closed_from_evidence
    {G : SignalTransductionAdmittedObject} {F : SignalPathwayPDEPackage G}
    {S : ReceptorKineticsPackage F} (C : FeedbackControlPackage F S)
    (E : FeedbackControlEvidence C) : FeedbackControlClosed C := by
  exact And.intro E.positiveFeedbackLoopClosed
    (And.intro E.negativeFeedbackLoopClosed
      (And.intro E.adaptationMechanismClosed E.stabilityConditionClosed))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
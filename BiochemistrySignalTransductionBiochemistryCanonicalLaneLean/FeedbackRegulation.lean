import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.SignalAmplification

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure FeedbackRegulationPackage {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} {S : SignalAmplificationPackage K} where
  positiveFeedback : Prop
  negativeFeedback : Prop
  homeostasis : Prop

structure FeedbackRegulationEvidence {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} {S : SignalAmplificationPackage K}
    (F : FeedbackRegulationPackage S) where
  positiveFeedbackClosed : F.positiveFeedback
  negativeFeedbackClosed : F.negativeFeedback
  homeostasisClosed : F.homeostasis

def FeedbackRegulationClosed {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} {S : SignalAmplificationPackage K}
    (F : FeedbackRegulationPackage S) : Prop :=
  F.positiveFeedback ∧ F.negativeFeedback ∧ F.homeostasis

theorem feedback_regulation_closed_from_evidence {R : ReceptorBindingPackage}
    {K : KinaseCascadePackage R} {S : SignalAmplificationPackage K}
    (F : FeedbackRegulationPackage S) (E : FeedbackRegulationEvidence F) :
    FeedbackRegulationClosed F := by
  exact And.intro E.positiveFeedbackClosed
    (And.intro E.negativeFeedbackClosed E.homeostasisClosed)

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure KinaseCascadePackage where
  receptorPhosphorylation : Prop
  adaptorProteinRecruitment : Prop
  mapkCascade : Prop
  activationThreshold : Prop
  negativeFeedback : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  receptorPhosphorylationClosed : K.receptorPhosphorylation
  adaptorProteinRecruitmentClosed : K.adaptorProteinRecruitment
  mapkCascadeClosed : K.mapkCascade
  activationThresholdClosed : K.activationThreshold
  negativeFeedbackClosed : K.negativeFeedback

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.receptorPhosphorylation ∧ K.adaptorProteinRecruitment ∧
  K.mapkCascade ∧ K.activationThreshold ∧ K.negativeFeedback

theorem kinase_cascade_closed_from_evidence (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) :
    KinaseCascadeClosed K := by
  exact And.intro E.receptorPhosphorylationClosed
    (And.intro E.adaptorProteinRecruitmentClosed
      (And.intro E.mapkCascadeClosed
        (And.intro E.activationThresholdClosed E.negativeFeedbackClosed)))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.PrimitiveSignalTransduction

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure LigandBindingPackage where
  ligandConcentration : Prop
  receptorAffinity : Prop
  bindingRate : Prop
  bindingEquilibrium : Prop

def LigandBindingClosed (L : LigandBindingPackage) : Prop :=
  L.ligandConcentration ∧ L.receptorAffinity ∧ L.bindingRate ∧ L.bindingEquilibrium

structure GPCRPackage where
  receptorActivation : Prop
  gProteinExchange : Prop
  effectorActivation : Prop

def GPCRClosed (G : GPCRPackage) : Prop :=
  G.receptorActivation ∧ G.gProteinExchange ∧ G.effectorActivation

structure KinaseCascadePackage where
  mapkActivation : Prop
  phosphorylationCascade : Prop
  amplification : Prop

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.mapkActivation ∧ K.phosphorylationCascade ∧ K.amplification

structure SecondMessengerPackage where
  campProduction : Prop
  calciumRelease : Prop
  targetActivation : Prop

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.campProduction ∧ S.calciumRelease ∧ S.targetActivation

structure GeneExpressionPackage where
  transcriptionFactorActivation : Prop
  nuclearTranslocation : Prop
  geneRegulation : Prop

def GeneExpressionClosed (G : GeneExpressionPackage) : Prop :=
  G.transcriptionFactorActivation ∧ G.nuclearTranslocation ∧ G.geneRegulation

structure SignalTransductionAnalyticFoundation where
  ligandBinding : LigandBindingPackage
  ligandBindingEvidence : LigandBindingClosed ligandBinding
  gpcR : GPCRPackage
  gpcREvidence : GPCRClosed gpcR
  kinaseCascade : KinaseCascadePackage
  kinaseCascadeEvidence : KinaseCascadeClosed kinaseCascade
  secondMessenger : SecondMessengerPackage
  secondMessengerEvidence : SecondMessengerClosed secondMessenger
  geneExpression : GeneExpressionPackage
  geneExpressionEvidence : GeneExpressionClosed geneExpression
  signalTransductionClosed : Prop
  signalTransductionClosedTerm : signalTransductionClosed

def SignalTransductionAnalyticFoundationClosed (A : SignalTransductionAnalyticFoundation) : Prop :=
  A.ligandBindingEvidence ∧ A.gpcREvidence ∧ A.kinaseCascadeEvidence ∧
  A.secondMessengerEvidence ∧ A.geneExpressionEvidence ∧ A.signalTransductionClosed

theorem signal_transduction_analytic_foundation_closed_from_evidence
    (A : SignalTransductionAnalyticFoundation) :
    SignalTransductionAnalyticFoundationClosed A := by
  exact And.intro A.ligandBindingEvidence
    (And.intro A.gpcREvidence
      (And.intro A.kinaseCascadeEvidence
        (And.intro A.secondMessengerEvidence
          (And.intro A.geneExpressionEvidence A.signalTransductionClosedTerm))))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
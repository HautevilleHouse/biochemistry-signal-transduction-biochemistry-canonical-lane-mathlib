import canonicalLaneMathlib.AdmissibleClass
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.SignalPathwayPDE

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

structure ReceptorKineticsPackage {G : SignalTransductionAdmittedObject}
    (F : SignalPathwayPDEPackage G) where
  bindingRateLaw : Prop
  dissociationRateLaw : Prop
  receptorLigandComplexFormation : Prop
  signalAmplification : Prop

structure ReceptorKineticsEvidence {G : SignalTransductionAdmittedObject}
    {F : SignalPathwayPDEPackage G} (S : ReceptorKineticsPackage F) where
  bindingRateLawClosed : S.bindingRateLaw
  dissociationRateLawClosed : S.dissociationRateLaw
  receptorLigandComplexFormationClosed : S.receptorLigandComplexFormation
  signalAmplificationClosed : S.signalAmplification

def ReceptorKineticsClosed {G : SignalTransductionAdmittedObject}
    {F : SignalPathwayPDEPackage G} (S : ReceptorKineticsPackage F) : Prop :=
  S.bindingRateLaw ∧ S.dissociationRateLaw ∧ S.receptorLigandComplexFormation ∧ S.signalAmplification

theorem receptor_kinetics_closed_from_evidence
    {G : SignalTransductionAdmittedObject} {F : SignalPathwayPDEPackage G}
    (S : ReceptorKineticsPackage F) (E : ReceptorKineticsEvidence S) :
    ReceptorKineticsClosed S := by
  exact And.intro E.bindingRateLawClosed
    (And.intro E.dissociationRateLawClosed
      (And.intro E.receptorLigandComplexFormationClosed E.signalAmplificationClosed))

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
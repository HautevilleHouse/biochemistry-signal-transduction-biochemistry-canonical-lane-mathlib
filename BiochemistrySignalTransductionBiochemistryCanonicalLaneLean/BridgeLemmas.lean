import canonicalLaneMathlib.AdmissibleClass
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SignalTransductionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion A.object.pathwayModelClosed A.object.receptorStateModeled A.object.downstreamEffectPredicted

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
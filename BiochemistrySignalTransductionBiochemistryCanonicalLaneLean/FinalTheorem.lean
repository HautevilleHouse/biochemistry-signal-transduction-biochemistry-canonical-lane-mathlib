import canonicalLaneMathlib.AdmissibleClass
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.BridgeLemmas
import BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

def ConstrainedSignalTransductionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_signal_transduction_endgame (A : AdmissibleClass) :
    ConstrainedSignalTransductionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
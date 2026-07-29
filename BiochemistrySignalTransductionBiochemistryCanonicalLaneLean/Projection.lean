import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistrySignalTransductionBiochemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistrySignalTransductionBiochemistryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SignalTransductionEndgameState where
  object : SignalTransductionObject

def signalTransductionProjection : Projection SignalTransductionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem signal_transduction_projection_idempotent (x : SignalTransductionEndgameState) :
    signalTransductionProjection.toFun (signalTransductionProjection.toFun x) = signalTransductionProjection.toFun x :=
  signalTransductionProjection.idempotent x

end BiochemistrySignalTransductionBiochemistryCanonicalLaneLean
end HautevilleHouse
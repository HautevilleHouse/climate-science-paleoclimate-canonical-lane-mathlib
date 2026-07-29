import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure DansgaardOeschgerEventDynamicsPackage where
  abruptWarmingPhase : Prop
  gradualCoolingPhase : Prop
  interstadialDuration : Nat
  stadialDuration : Nat
  bistabilityMechanism : String

structure DansgaardOeschgerEventDynamicsEvidence (D : DansgaardOeschgerEventDynamicsPackage) where
  abruptWarmingPhaseClosed : D.abruptWarmingPhase
  gradualCoolingPhaseClosed : D.gradualCoolingPhase
  bistabilityMechanismClosed : D.bistabilityMechanism

def DansgaardOeschgerEventDynamicsClosed (D : DansgaardOeschgerEventDynamicsPackage) : Prop :=
  D.abruptWarmingPhase ∧ D.gradualCoolingPhase ∧ D.bistabilityMechanism

theorem dansgaard_oeschger_event_dynamics_closed_from_evidence
    (D : DansgaardOeschgerEventDynamicsPackage)
    (E : DansgaardOeschgerEventDynamicsEvidence D) :
    DansgaardOeschgerEventDynamicsClosed D := by
  exact And.intro E.abruptWarmingPhaseClosed
    (And.intro E.gradualCoolingPhaseClosed E.bistabilityMechanismClosed)

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
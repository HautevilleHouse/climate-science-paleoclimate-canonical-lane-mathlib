import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure DansgaardOeschgerEventsPackage where
  abruptWarmingEvent : Prop
  gradualCoolingPeriod : Prop
  bipoleSeeSawPattern : Prop
  iceCoreOxygenIsotopeSignal : Prop
  atlanticMeridionalOverturningLink : Prop

structure DansgaardOeschgerEventsEvidence (D : DansgaardOeschgerEventsPackage) where
  abruptWarmingEventClosed : D.abruptWarmingEvent
  gradualCoolingPeriodClosed : D.gradualCoolingPeriod
  bipoleSeeSawPatternClosed : D.bipoleSeeSawPattern
  iceCoreOxygenIsotopeSignalClosed : D.iceCoreOxygenIsotopeSignal
  atlanticMeridionalOverturningLinkClosed : D.atlanticMeridionalOverturningLink

def DansgaardOeschgerEventsClosed (D : DansgaardOeschgerEventsPackage) : Prop :=
  D.abruptWarmingEvent ∧ D.gradualCoolingPeriod ∧ D.bipoleSeeSawPattern ∧
  D.iceCoreOxygenIsotopeSignal ∧ D.atlanticMeridionalOverturningLink

theorem dansgaard_oeschger_events_closed_from_evidence
    (D : DansgaardOeschgerEventsPackage) (E : DansgaardOeschgerEventsEvidence D) :
    DansgaardOeschgerEventsClosed D := by
  exact And.intro E.abruptWarmingEventClosed
    (And.intro E.gradualCoolingPeriodClosed
      (And.intro E.bipoleSeeSawPatternClosed
        (And.intro E.iceCoreOxygenIsotopeSignalClosed E.atlanticMeridionalOverturningLinkClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
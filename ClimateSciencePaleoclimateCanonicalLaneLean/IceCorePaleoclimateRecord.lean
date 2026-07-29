import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure IceCorePaleoclimateRecordPackage where
  annualLayerCounting : Prop
  gasTrappingProcess : Prop
  dustConcentration : Prop
  isotopicComposition : Prop
  accumulationRate : Prop
  timeScaleConstruction : Prop

structure IceCorePaleoclimateRecordEvidence (I : IceCorePaleoclimateRecordPackage) where
  annualLayerCountingClosed : I.annualLayerCounting
  gasTrappingProcessClosed : I.gasTrappingProcess
  dustConcentrationClosed : I.dustConcentration
  isotopicCompositionClosed : I.isotopicComposition
  accumulationRateClosed : I.accumulationRate
  timeScaleConstructionClosed : I.timeScaleConstruction

def IceCorePaleoclimateRecordClosed (I : IceCorePaleoclimateRecordPackage) : Prop :=
  I.annualLayerCounting ∧ I.gasTrappingProcess ∧ I.dustConcentration ∧
  I.isotopicComposition ∧ I.accumulationRate ∧ I.timeScaleConstruction

theorem ice_core_paleoclimate_record_closed_from_evidence
    (I : IceCorePaleoclimateRecordPackage)
    (E : IceCorePaleoclimateRecordEvidence I) : IceCorePaleoclimateRecordClosed I := by
  exact And.intro E.annualLayerCountingClosed
    (And.intro E.gasTrappingProcessClosed
      (And.intro E.dustConcentrationClosed
        (And.intro E.isotopicCompositionClosed
          (And.intro E.accumulationRateClosed E.timeScaleConstructionClosed))))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
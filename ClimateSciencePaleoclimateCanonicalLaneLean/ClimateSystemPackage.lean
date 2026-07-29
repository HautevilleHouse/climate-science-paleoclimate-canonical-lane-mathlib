import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure ClimateSystemPackage where
  temperatureField : Type u
  iceVolume : Type v
  co2Concentration : Type w
  orbitalParameters : Type x
  insolation : Type y
  energyBalanceModel : Prop
  iceSheetDynamics : Prop
  carbonCycleCoupling : Prop
  orbitalForcing : Prop
  feedbackMechanisms : Prop

structure ClimateSystemEvidence (C : ClimateSystemPackage) where
  energyBalanceModelClosed : C.energyBalanceModel
  iceSheetDynamicsClosed : C.iceSheetDynamics
  carbonCycleCouplingClosed : C.carbonCycleCoupling
  orbitalForcingClosed : C.orbitalForcing
  feedbackMechanismsClosed : C.feedbackMechanisms

def ClimateSystemClosed (C : ClimateSystemPackage) : Prop :=
  C.energyBalanceModel ∧ C.iceSheetDynamics ∧ C.carbonCycleCoupling ∧
  C.orbitalForcing ∧ C.feedbackMechanisms

theorem climate_system_closed_from_evidence (C : ClimateSystemPackage)
    (E : ClimateSystemEvidence C) : ClimateSystemClosed C := by
  exact And.intro E.energyBalanceModelClosed
    (And.intro E.iceSheetDynamicsClosed
      (And.intro E.carbonCycleCouplingClosed
        (And.intro E.orbitalForcingClosed E.feedbackMechanismsClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
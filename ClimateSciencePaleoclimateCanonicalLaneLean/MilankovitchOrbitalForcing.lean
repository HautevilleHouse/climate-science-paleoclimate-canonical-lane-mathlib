import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure MilankovitchForcingPackage where
  eccentricityCycle : Prop
  obliquityCycle : Prop
  precessionCycle : Prop
  insolationAnomaly : Prop
  spectralPower : Prop

structure MilankovitchForcingEvidence (M : MilankovitchForcingPackage) where
  eccentricityCycleClosed : M.eccentricityCycle
  obliquityCycleClosed : M.obliquityCycle
  precessionCycleClosed : M.precessionCycle
  insolationAnomalyClosed : M.insolationAnomaly
  spectralPowerClosed : M.spectralPower

def MilankovitchForcingClosed (M : MilankovitchForcingPackage) : Prop :=
  M.eccentricityCycle ∧ M.obliquityCycle ∧ M.precessionCycle ∧
  M.insolationAnomaly ∧ M.spectralPower

theorem milankovitch_forcing_closed_from_evidence (M : MilankovitchForcingPackage)
    (E : MilankovitchForcingEvidence M) : MilankovitchForcingClosed M := by
  exact And.intro E.eccentricityCycleClosed
    (And.intro E.obliquityCycleClosed
      (And.intro E.precessionCycleClosed
        (And.intro E.insolationAnomalyClosed E.spectralPowerClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
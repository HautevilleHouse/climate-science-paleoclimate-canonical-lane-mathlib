import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure MilankovitchCyclesPackage where
  orbitalEccentricity : Prop
  axialObliquity : Prop
  precession : Prop
  insolationAnomalies : Prop
  glacialInterglacialForcing : Prop

structure MilankovitchCyclesEvidence (M : MilankovitchCyclesPackage) where
  orbitalEccentricityClosed : M.orbitalEccentricity
  axialObliquityClosed : M.axialObliquity
  precessionClosed : M.precession
  insolationAnomaliesClosed : M.insolationAnomalies
  glacialInterglacialForcingClosed : M.glacialInterglacialForcing

def MilankovitchCyclesClosed (M : MilankovitchCyclesPackage) : Prop :=
  M.orbitalEccentricity ∧ M.axialObliquity ∧ M.precession ∧
  M.insolationAnomalies ∧ M.glacialInterglacialForcing

theorem milankovitch_cycles_closed_from_evidence (M : MilankovitchCyclesPackage)
    (Ev : MilankovitchCyclesEvidence M) : MilankovitchCyclesClosed M := by
  exact And.intro Ev.orbitalEccentricityClosed
    (And.intro Ev.axialObliquityClosed
      (And.intro Ev.precessionClosed
        (And.intro Ev.insolationAnomaliesClosed Ev.glacialInterglacialForcingClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure IsotopicPaleothermometryPackage where
  delta18ORecord : Prop
  fractionationEquation : Prop
  temperatureCalibration : Prop
  iceCoreStratigraphy : Prop
  marineSedimentCore : Prop

structure IsotopicPaleothermometryEvidence (I : IsotopicPaleothermometryPackage) where
  delta18ORecordClosed : I.delta18ORecord
  fractionationEquationClosed : I.fractionationEquation
  temperatureCalibrationClosed : I.temperatureCalibration
  iceCoreStratigraphyClosed : I.iceCoreStratigraphy
  marineSedimentCoreClosed : I.marineSedimentCore

def IsotopicPaleothermometryClosed (I : IsotopicPaleothermometryPackage) : Prop :=
  I.delta18ORecord ∧ I.fractionationEquation ∧ I.temperatureCalibration ∧
  I.iceCoreStratigraphy ∧ I.marineSedimentCore

theorem isotopic_paleothermometry_closed_from_evidence
    (I : IsotopicPaleothermometryPackage) (Ev : IsotopicPaleothermometryEvidence I) :
    IsotopicPaleothermometryClosed I := by
  exact And.intro Ev.delta18ORecordClosed
    (And.intro Ev.fractionationEquationClosed
      (And.intro Ev.temperatureCalibrationClosed
        (And.intro Ev.iceCoreStratigraphyClosed Ev.marineSedimentCoreClosed)))

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

structure IceCoreIsotopicPaleothermometryPackage where
  iceCoreSite : String
  delta18O : String
  deltaD : String
  temperatureReconstruction : String
  boreholeCalibration : Prop

structure IceCoreIsotopicPaleothermometryEvidence (P : IceCoreIsotopicPaleothermometryPackage) where
  boreholeCalibrationClosed : P.boreholeCalibration

def IceCoreIsotopicPaleothermometryClosed (P : IceCoreIsotopicPaleothermometryPackage) : Prop :=
  P.boreholeCalibration

theorem ice_core_isotopic_paleothermometry_closed_from_evidence
    (P : IceCoreIsotopicPaleothermometryPackage)
    (E : IceCoreIsotopicPaleothermometryEvidence P) :
    IceCoreIsotopicPaleothermometryClosed P := by
  exact E.boreholeCalibrationClosed

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse
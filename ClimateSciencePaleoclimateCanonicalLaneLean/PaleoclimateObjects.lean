import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClimateSciencePaleoclimateCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PaleoclimateSystem where
  climateSystem : Type
  timeSeries : Type
  proxyMeasures : Type
  orbitalForcing : Prop
  iceVolumeRecords : Prop
  atmosphericCO2 : Prop

structure PaleoclimateAdmittedObject where
  system : PaleoclimateSystem
  milankovitchCyclesEstablished : Prop
  dansgaardOeschgerEventsRecorded : Prop
  isotopePaleothermometryValid : Prop
  energyBalanceModelCalibrated : Prop
  conclusion : milankovitchCyclesEstablished ∧ dansgaardOeschgerEventsRecorded ∧ isotopePaleothermometryValid ∧ energyBalanceModelCalibrated

structure PaleoclimateEndgameState where
  object : PaleoclimateAdmittedObject

def PaleoclimateWitnessClosed (O : PaleoclimateAdmittedObject) : Prop :=
  O.milankovitchCyclesEstablished ∧ O.dansgaardOeschgerEventsRecorded ∧
  O.isotopePaleothermometryValid ∧ O.energyBalanceModelCalibrated

end ClimateSciencePaleoclimateCanonicalLaneLean
end HautevilleHouse

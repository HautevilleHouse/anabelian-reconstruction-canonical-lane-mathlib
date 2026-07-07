import AnabelianReconstructionCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace AnabelianReconstructionCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AnabelianReconstructionCanonicalLaneLean
end HautevilleHouse

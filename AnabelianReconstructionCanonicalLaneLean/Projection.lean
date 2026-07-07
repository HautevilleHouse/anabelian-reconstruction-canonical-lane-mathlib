import AnabelianReconstructionCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AnabelianReconstructionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def theoremProjection : Projection EndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem theorem_projection_idempotent (x : EndgameState) :
    theoremProjection.toFun (theoremProjection.toFun x) = theoremProjection.toFun x := by
  exact theoremProjection.idempotent x

end AnabelianReconstructionCanonicalLaneLean
end HautevilleHouse

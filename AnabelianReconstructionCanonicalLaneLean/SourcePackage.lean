/-!
# Source package model for `anabelian-reconstruction-canonical-lane`

This module is generated from the repository's source package/scripts. It records
source file hashes, source declarations, and constant-extraction metadata as Lean
data.

It translates package structure and guard metadata. The encoded Canonical Lane proof architecture is checked by this Lean package boundary.
-/

namespace HautevilleHouse
namespace AnabelianReconstructionCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "5e6e7d08d2a5a75a405f00fe62033ce830aedf22"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile := [
  { path := "scripts/are_closure_guard.py", sha256 := "8b87fdf20c796886a1033822c97699e0f380db0b2df89a5234e495b445b6403d", functionCount := 9, classCount := 0, assignmentCount := 8, parseOk := true },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d", functionCount := 9, classCount := 0, assignmentCount := 7, parseOk := true },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356", functionCount := 6, classCount := 0, assignmentCount := 6, parseOk := true },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8", functionCount := 6, classCount := 0, assignmentCount := 7, parseOk := true },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12", functionCount := 3, classCount := 0, assignmentCount := 3, parseOk := true }
]

def sourceFunctions : List SourceFunctionDecl := [
  { file := "scripts/are_closure_guard.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 31, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 35, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "_bootstrap_registry", args := ["path"], returns := "None", doc := "", line := 40, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "_load_registry", args := ["path"], returns := "dict[str, Any]", doc := "", line := 46, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "_load_sigma_from_stitch", args := ["path"], returns := "float | None", doc := "", line := 58, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "_entry", args := ["constants", "key"], returns := "tuple[float | None, bool]", doc := "", line := 75, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "compute_report", args := ["data", "sigma_star", "strict_coh_zero"], returns := "dict[str, Any]", doc := "", line := 86, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "append_history", args := ["path", "report"], returns := "None", doc := "", line := 119, isAsync := false },
  { file := "scripts/are_closure_guard.py", name := "main", args := [], returns := "None", doc := "", line := 126, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 29, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_write_json_stable", args := ["path", "data", "volatile_keys"], returns := "None", doc := "", line := 36, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 56, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_eval_formula", args := ["formula", "components"], returns := "float", doc := "", line := 60, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_require_fields", args := ["name", "spec", "required"], returns := "None", doc := "", line := 70, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_require_validation_rule", args := ["name", "spec"], returns := "None", doc := "", line := 76, isAsync := false },
  { file := "scripts/extract_constants.py", name := "_validate_value", args := ["name", "value", "spec"], returns := "dict[str, Any]", doc := "", line := 82, isAsync := false },
  { file := "scripts/extract_constants.py", name := "extract", args := ["inputs", "inputs_sha256"], returns := "dict[str, Any]", doc := "", line := 101, isAsync := false },
  { file := "scripts/extract_constants.py", name := "main", args := [], returns := "None", doc := "", line := 210, isAsync := false },
  { file := "scripts/promote_constants.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 22, isAsync := false },
  { file := "scripts/promote_constants.py", name := "_write_json_stable", args := ["path", "data", "volatile_keys"], returns := "None", doc := "", line := 29, isAsync := false },
  { file := "scripts/promote_constants.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 49, isAsync := false },
  { file := "scripts/promote_constants.py", name := "_assert_ok", args := ["name", "entry"], returns := "None", doc := "", line := 53, isAsync := false },
  { file := "scripts/promote_constants.py", name := "promote", args := ["extracted", "registry_path", "stitch_path"], returns := "dict[str, Any]", doc := "", line := 68, isAsync := false },
  { file := "scripts/promote_constants.py", name := "main", args := [], returns := "None", doc := "", line := 129, isAsync := false },
  { file := "scripts/release_gate.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 24, isAsync := false },
  { file := "scripts/release_gate.py", name := "_finite", args := ["v"], returns := "bool", doc := "", line := 31, isAsync := false },
  { file := "scripts/release_gate.py", name := "_check_manifest", args := ["manifest_path"], returns := "dict[str, Any]", doc := "", line := 35, isAsync := false },
  { file := "scripts/release_gate.py", name := "_check_statuses", args := ["inputs_path", "mode"], returns := "dict[str, Any]", doc := "", line := 51, isAsync := false },
  { file := "scripts/release_gate.py", name := "_check_registry", args := ["registry_path"], returns := "dict[str, Any]", doc := "", line := 72, isAsync := false },
  { file := "scripts/release_gate.py", name := "main", args := [], returns := "None", doc := "", line := 94, isAsync := false },
  { file := "scripts/update_manifest.py", name := "_resolve", args := ["path_str"], returns := "Path", doc := "", line := 19, isAsync := false },
  { file := "scripts/update_manifest.py", name := "_write_json_stable", args := ["path", "data", "volatile_keys"], returns := "None", doc := "", line := 26, isAsync := false },
  { file := "scripts/update_manifest.py", name := "main", args := [], returns := "None", doc := "", line := 46, isAsync := false }
]

def sourceClasses : List SourceClassDecl := [

]

def sourceAssignments : List SourceAssignmentDecl := [
  { file := "scripts/are_closure_guard.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 13 },
  { file := "scripts/are_closure_guard.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 14 },
  { file := "scripts/are_closure_guard.py", name := "DEFAULT_REGISTRY", value := "\"artifacts/constants_registry.json\"", line := 16 },
  { file := "scripts/are_closure_guard.py", name := "DEFAULT_STITCH", value := "\"artifacts/stitch_constants.json\"", line := 17 },
  { file := "scripts/are_closure_guard.py", name := "DEFAULT_OUT", value := "\"repro/certificate_runtime.json\"", line := 18 },
  { file := "scripts/are_closure_guard.py", name := "DEFAULT_HISTORY", value := "\"repro/drift_guard_runs.jsonl\"", line := 19 },
  { file := "scripts/are_closure_guard.py", name := "PRIMARY_KEYS", value := "[\"kappa_reconstruction\", \"sigma_sections\", \"kappa_compact\", \"rho_rigidity\", \"anabelian_lock\"]", line := 21 },
  { file := "scripts/are_closure_guard.py", name := "COHERENCE_KEY", value := "\"eps_coh\"", line := 28 },
  { file := "scripts/extract_constants.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 14 },
  { file := "scripts/extract_constants.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 15 },
  { file := "scripts/extract_constants.py", name := "DEFAULT_INPUTS", value := "\"artifacts/constants_extraction_inputs.json\"", line := 17 },
  { file := "scripts/extract_constants.py", name := "DEFAULT_OUT", value := "\"artifacts/constants_extracted.json\"", line := 18 },
  { file := "scripts/extract_constants.py", name := "ALLOWED_STATUS", value := "{'derived_numeric', 'normalized_placeholder'}", line := 19 },
  { file := "scripts/extract_constants.py", name := "VALIDATION_KEYS", value := "[\"required_positive\", \"required_nonnegative\", \"strict_zero\"]", line := 20 },
  { file := "scripts/extract_constants.py", name := "ALLOWED_FUNCS", value := "{'min': min, 'max': max, 'abs': abs}", line := 22 },
  { file := "scripts/promote_constants.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 13 },
  { file := "scripts/promote_constants.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 14 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_EXTRACTED", value := "\"artifacts/constants_extracted.json\"", line := 16 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REGISTRY", value := "\"artifacts/constants_registry.json\"", line := 17 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_STITCH", value := "\"artifacts/stitch_constants.json\"", line := 18 },
  { file := "scripts/promote_constants.py", name := "DEFAULT_REPORT", value := "\"artifacts/promotion_report.json\"", line := 19 },
  { file := "scripts/release_gate.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 14 },
  { file := "scripts/release_gate.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 15 },
  { file := "scripts/release_gate.py", name := "DEFAULT_MANIFEST", value := "\"repro/repro_manifest.json\"", line := 17 },
  { file := "scripts/release_gate.py", name := "DEFAULT_REGISTRY", value := "\"artifacts/constants_registry.json\"", line := 18 },
  { file := "scripts/release_gate.py", name := "DEFAULT_INPUTS", value := "\"artifacts/constants_extraction_inputs.json\"", line := 19 },
  { file := "scripts/release_gate.py", name := "MODES", value := "{'normalized', 'fully_extracted'}", line := 20 },
  { file := "scripts/release_gate.py", name := "ALLOWED_STATUS", value := "{'derived_numeric', 'normalized_placeholder'}", line := 21 },
  { file := "scripts/update_manifest.py", name := "SCRIPT_DIR", value := "Path(__file__).resolve().parent", line := 13 },
  { file := "scripts/update_manifest.py", name := "PROJECT_ROOT", value := "SCRIPT_DIR.parent", line := 14 },
  { file := "scripts/update_manifest.py", name := "DEFAULT_MANIFEST", value := "\"repro/repro_manifest.json\"", line := 16 }
]

def constantSpecs : List ConstantSpec := [
  { group := "constants", key := "kappa_reconstruction", status := "derived_numeric", formula := "c_core_raw * density_raw - e_core_raw", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 4 / Appendix A", validation := "required_positive", componentKeys := ["c_core_raw", "density_raw", "e_core_raw"] },
  { group := "constants", key := "sigma_sections", status := "derived_numeric", formula := "capture_floor_raw - transport_loss_raw - restart_loss_raw", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 5 / Appendix B", validation := "required_positive", componentKeys := ["capture_floor_raw", "restart_loss_raw", "transport_loss_raw"] },
  { group := "constants", key := "kappa_compact", status := "derived_numeric", formula := "1.0 / (1.0 + delta_comp_sup_raw)", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 5 / Appendix C", validation := "required_positive", componentKeys := ["delta_comp_sup_raw"] },
  { group := "constants", key := "rho_rigidity", status := "derived_numeric", formula := "rho_rigidity_raw", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6 / Appendix D", validation := "required_positive", componentKeys := ["rho_rigidity_raw"] },
  { group := "constants", key := "anabelian_lock", status := "derived_numeric", formula := "c_transfer_raw * transfer_gain_raw - e_transfer_raw", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6 / Appendix D", validation := "required_positive", componentKeys := ["c_transfer_raw", "e_transfer_raw", "transfer_gain_raw"] },
  { group := "constants", key := "eps_coh", status := "derived_numeric", formula := "eps_coh_raw", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6 / Appendix E", validation := "required_nonnegative", componentKeys := ["eps_coh_raw"] },
  { group := "stitch", key := "sigma_star_can", status := "derived_numeric", formula := "sigma_star_can_raw", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 5 / stitch constants", validation := "required_positive", componentKeys := ["sigma_star_can_raw"] }
]

def registryConstants : List RegistryConstant := [
  { key := "anabelian_lock", value := "1.02951", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#anabelian_lock", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6 / Appendix D" },
  { key := "eps_coh", value := "0.0", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#eps_coh", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6 / Appendix E" },
  { key := "kappa_compact", value := "0.8038585209003215", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#kappa_compact", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 5 / Appendix C" },
  { key := "kappa_hyperbolic", value := "1.0946500000000001", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#kappa_hyperbolic", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 4.5 / Appendix A" },
  { key := "kappa_reconstruction", value := "1.091838", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#kappa_reconstruction", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 4 / Appendix A" },
  { key := "reconstruction_transfer", value := "1.031658", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#reconstruction_transfer", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6.2 / Appendix E.4" },
  { key := "rho_rigidity", value := "1.077", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#rho_rigidity", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 6 / Appendix D" },
  { key := "sigma_section", value := "1.075", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#sigma_section", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 5.2 / Appendix B" },
  { key := "sigma_sections", value := "1.075", theoremLevel := true, status := "derived_numeric", source := "artifacts/constants_extracted.json#sigma_sections", sourceSection := "paper/ANABELIAN_RECONSTRUCTION_PREPRINT.md Section 5 / Appendix B" }
]

def sourcePackageFileCount : Nat := 5
def sourceFunctionCount : Nat := 33
def sourceClassCount : Nat := 0
def sourceAssignmentCount : Nat := 31
def constantSpecCount : Nat := 7
def registryConstantCount : Nat := 9

theorem source_package_file_count_checked : sourceFiles.length = 5 := by
  rfl

theorem source_function_count_checked : sourceFunctions.length = 33 := by
  rfl

theorem source_constant_spec_count_checked : constantSpecs.length = 7 := by
  rfl

end AnabelianReconstructionCanonicalLaneLean
end HautevilleHouse

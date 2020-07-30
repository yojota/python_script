#PoC for terragrunt
# child common.hcl
locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}

include {
  path = find_in_parent_folders()
}

inputs = merge(
  local.common_vars.inputs,
  {
    # additional inputs
  }
)

1-vpc  --> este tiene que cambiar

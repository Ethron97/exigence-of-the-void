# Sub function to call Open Vault subfunction as player

## INPUT
#   STR vault

#==============================================================================================================

# DEBUG
#$say finish opening $(vault)

$execute as @a[tag=Opening$(vault)] run function exigence:door/vault/open_vault {vault:$(vault)}

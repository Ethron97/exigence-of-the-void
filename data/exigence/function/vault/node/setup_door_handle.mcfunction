# Call correct setup_handle function

## CONSTRAINTS
#   AS vault node

#====================================================================================================

## SWITCH
# Level 1
execute if entity @s[tag=Vault_host] run return run function exigence:door/vault/host/setup_handle
execute if entity @s[tag=Vault_raiser] run return run function exigence:door/vault/raiser/setup_handle
execute if entity @s[tag=Vault_rib] run return run function exigence:door/vault/rib/setup_handle
execute if entity @s[tag=Vault_shaper] run return run function exigence:door/vault/shaper/setup_handle
execute if entity @s[tag=Vault_tide] run return run function exigence:door/vault/tide/setup_handle
execute if entity @s[tag=Vault_wayfinder] run return run function exigence:door/vault/wayfinder/setup_handle
# Level 2
execute if entity @s[tag=Vault_snout] run return run function exigence:door/vault/snout/setup_handle
execute if entity @s[tag=Vault_wild] run return run function exigence:door/vault/wild/setup_handle
execute if entity @s[tag=Vault_sentry] run return run function exigence:door/vault/sentry/setup_handle
execute if entity @s[tag=Vault_vex] run return run function exigence:door/vault/vex/setup_handle
execute if entity @s[tag=Vault_coast] run return run function exigence:door/vault/coast/setup_handle
execute if entity @s[tag=Vault_ward] run return run function exigence:door/vault/ward/setup_handle
# Level 3
execute if entity @s[tag=Vault_bolt] run return run function exigence:door/vault/bolt/setup_handle
execute if entity @s[tag=Vault_dune] run return run function exigence:door/vault/dune/setup_handle
execute if entity @s[tag=Vault_silence] run return run function exigence:door/vault/silence/setup_handle
execute if entity @s[tag=Vault_eye] run return run function exigence:door/vault/eye/setup_handle
execute if entity @s[tag=Vault_spire] run return run function exigence:door/vault/spire/setup_handle
execute if entity @s[tag=Vault_flow] run return run function exigence:door/vault/flow/setup_handle
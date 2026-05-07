# Load this vault node

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute at @s run function exigence:vault/node/unload

# Do not setup if not active level
execute if score @s node.property.object_level > game.difficulty game.state run return 0
#----------------------------------------------------------------------------------------------------

## SWITCH
# Level 1
execute if entity @s[tag=Vault_host] run return run function exigence:door/vault/host/setup
execute if entity @s[tag=Vault_raiser] run return run function exigence:door/vault/raiser/setup
execute if entity @s[tag=Vault_rib] run return run function exigence:door/vault/rib/setup
execute if entity @s[tag=Vault_shaper] run return run function exigence:door/vault/shaper/setup
execute if entity @s[tag=Vault_tide] run return run function exigence:door/vault/tide/setup
execute if entity @s[tag=Vault_wayfinder] run return run function exigence:door/vault/wayfinder/setup
# Level 2
execute if entity @s[tag=Vault_snout] run return run function exigence:door/vault/snout/setup
execute if entity @s[tag=Vault_wild] run return run function exigence:door/vault/wild/setup
execute if entity @s[tag=Vault_sentry] run return run function exigence:door/vault/sentry/setup
execute if entity @s[tag=Vault_vex] run return run function exigence:door/vault/vex/setup
execute if entity @s[tag=Vault_coast] run return run function exigence:door/vault/coast/setup
execute if entity @s[tag=Vault_ward] run return run function exigence:door/vault/ward/setup
# Level 3
execute if entity @s[tag=Vault_bolt] run return run function exigence:door/vault/bolt/setup
execute if entity @s[tag=Vault_dune] run return run function exigence:door/vault/dune/setup
execute if entity @s[tag=Vault_silence] run return run function exigence:door/vault/silence/setup
execute if entity @s[tag=Vault_eye] run return run function exigence:door/vault/eye/setup
execute if entity @s[tag=Vault_spire] run return run function exigence:door/vault/spire/setup
execute if entity @s[tag=Vault_flow] run return run function exigence:door/vault/flow/setup
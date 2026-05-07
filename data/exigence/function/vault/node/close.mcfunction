# Call correct close function

## CONSTRAINTS
#   AS vault node

#====================================================================================================

## SWITCH
# Level 1
execute if entity @s[tag=Vault_host] run return run function exigence:door/vault/host/close
execute if entity @s[tag=Vault_raiser] run return run function exigence:door/vault/raiser/close
execute if entity @s[tag=Vault_rib] run return run function exigence:door/vault/rib/close
execute if entity @s[tag=Vault_shaper] run return run function exigence:door/vault/shaper/close
execute if entity @s[tag=Vault_tide] run return run function exigence:door/vault/tide/close
execute if entity @s[tag=Vault_wayfinder] run return run function exigence:door/vault/wayfinder/close
# Level 2
execute if entity @s[tag=Vault_snout] run return run function exigence:door/vault/snout/close
execute if entity @s[tag=Vault_wild] run return run function exigence:door/vault/wild/close
execute if entity @s[tag=Vault_sentry] run return run function exigence:door/vault/sentry/close
execute if entity @s[tag=Vault_vex] run return run function exigence:door/vault/vex/close
execute if entity @s[tag=Vault_coast] run return run function exigence:door/vault/coast/close
execute if entity @s[tag=Vault_ward] run return run function exigence:door/vault/ward/close
# Level 3
execute if entity @s[tag=Vault_bolt] run return run function exigence:door/vault/bolt/close
execute if entity @s[tag=Vault_dune] run return run function exigence:door/vault/dune/close
execute if entity @s[tag=Vault_silence] run return run function exigence:door/vault/silence/close
execute if entity @s[tag=Vault_eye] run return run function exigence:door/vault/eye/close
execute if entity @s[tag=Vault_spire] run return run function exigence:door/vault/spire/close
execute if entity @s[tag=Vault_flow] run return run function exigence:door/vault/flow/close
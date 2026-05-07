# Set vault name in data, so we don't have to write so many switches

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if entity @s[tag=Vault_host] run data modify entity @s data.custom_data.vault_name set value host
execute if entity @s[tag=Vault_wayfinder] run data modify entity @s data.custom_data.vault_name set value wayfinder
execute if entity @s[tag=Vault_shaper] run data modify entity @s data.custom_data.vault_name set value shaper
execute if entity @s[tag=Vault_raiser] run data modify entity @s data.custom_data.vault_name set value raiser
execute if entity @s[tag=Vault_tide] run data modify entity @s data.custom_data.vault_name set value tide
execute if entity @s[tag=Vault_rib] run data modify entity @s data.custom_data.vault_name set value rib

execute if entity @s[tag=Vault_snout] run data modify entity @s data.custom_data.vault_name set value snout
execute if entity @s[tag=Vault_wild] run data modify entity @s data.custom_data.vault_name set value wild
execute if entity @s[tag=Vault_sentry] run data modify entity @s data.custom_data.vault_name set value sentry
execute if entity @s[tag=Vault_ward] run data modify entity @s data.custom_data.vault_name set value ward
execute if entity @s[tag=Vault_coast] run data modify entity @s data.custom_data.vault_name set value coast
execute if entity @s[tag=Vault_vex] run data modify entity @s data.custom_data.vault_name set value vex

execute if entity @s[tag=Vault_bolt] run data modify entity @s data.custom_data.vault_name set value bolt
execute if entity @s[tag=Vault_dune] run data modify entity @s data.custom_data.vault_name set value dune
execute if entity @s[tag=Vault_eye] run data modify entity @s data.custom_data.vault_name set value eye
execute if entity @s[tag=Vault_flow] run data modify entity @s data.custom_data.vault_name set value flow
execute if entity @s[tag=Vault_silence] run data modify entity @s data.custom_data.vault_name set value silence
execute if entity @s[tag=Vault_spire] run data modify entity @s data.custom_data.vault_name set value spire
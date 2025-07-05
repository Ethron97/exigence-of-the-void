# Called if you start the game with a vault key in your inventory
#   So we can tell which vaults there is already a key for

## CONSTRAINTS
#   AS active player

#====================================================================================

# Level 1
execute as @s[nbt={Inventory:[{id:"minecraft:host_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_host] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:raiser_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_raiser] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:rib_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_rib] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:shaper_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_shaper] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:tide_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_tide] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:wayfinder_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_wayfinder] add PickedUp

# Level 2
execute as @s[nbt={Inventory:[{id:"minecraft:sentry_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_sentry] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:snout_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_snout] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:wild_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_wild] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:vex_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_vex] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:coast_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_coast] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:ward_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_ward] add PickedUp

# Level 3
execute as @s[nbt={Inventory:[{id:"minecraft:bolt_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_bolt] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:flow_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_flow] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:silence_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_silence] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:dune_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_dune] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:eye_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_eye] add PickedUp
execute as @s[nbt={Inventory:[{id:"minecraft:spire_armor_trim_smithing_template"}]}] run tag @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_spire] add PickedUp

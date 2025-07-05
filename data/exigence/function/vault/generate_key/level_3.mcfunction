# Generate vault key on level 3

#say Generate vault key (level 3)

# Pick treasure node to drop key on
execute as @e[type=minecraft:armor_stand,tag=TreasureNode,scores={ObjectLevel=3},tag=!KeyBlacklist,limit=1,sort=random] run tag @s add VaultKeyDropper

# Pick which vault to drop a key for
#   Nodes are disqualified if the vault has been opened, or the key has been picked up already
execute as @e[type=minecraft:armor_stand,tag=VaultNode,scores={ObjectLevel=3},tag=!PickedUp,tag=!Opened,sort=random,limit=1] run tag @s add SelectedVaultNode

## LEVEL 3
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode,tag=Vault_bolt] run data modify storage exigence:treasure_drop vault_name set value bolt
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode,tag=Vault_flow] run data modify storage exigence:treasure_drop vault_name set value flow
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode,tag=Vault_silence] run data modify storage exigence:treasure_drop vault_name set value silence
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode,tag=Vault_dune] run data modify storage exigence:treasure_drop vault_name set value dune
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode,tag=Vault_eye] run data modify storage exigence:treasure_drop vault_name set value eye
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode,tag=Vault_spire] run data modify storage exigence:treasure_drop vault_name set value spire

# Increase scores (if there was a vault node remaining to spawn a key)
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode] run scoreboard players add @a[tag=ActivePlayer] t_vaultKeysDropped 1
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode] run scoreboard players add @a[tag=ActivePlayer] cr_vaultKeysDropped 1

# Drop key
execute if entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode] run execute as @e[type=minecraft:armor_stand,tag=VaultKeyDropper] run function exigence:treasure/node/drop_treasure {function:"exigence:door/vault/summon_vault_key"}

# Debug
execute unless entity @e[type=minecraft:armor_stand,tag=SelectedVaultNode] run say No vault nodes available to drop a key

# Remove local tag(s)
execute as @e[type=minecraft:armor_stand,tag=VaultKeyDropper] run tag @s remove VaultKeyDropper
execute as @e[type=minecraft:armor_stand,tag=SelectedVaultNode] run tag @s remove SelectedVaultNode

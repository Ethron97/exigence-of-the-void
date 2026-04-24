# Executes sub-sub commands for opening vault

## CONSTRAINTS
#   AS/AT VaultNode

#====================================================================================================

# Summon displays above altars
execute as @n[type=minecraft:armor_stand,scores={game.node.node_state=0},tag=AltarNode,tag=Trial,distance=..8] at @s run function exigence:door/vault/bolt/summon_trial_displays with entity @s
execute as @n[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible,distance=..8] at @s run function exigence:door/vault/bolt/summon_crucible_displays with entity @s

playsound minecraft:item.totem.use neutral @a ~ ~ ~ 2 1
particle enchant ~ ~ ~ 1 1 1 0 100
scoreboard players add @s node.vault.data.opened 1
tag @s add Opened
scoreboard players operation #compare game.vault.handle.id = @s node.id

# Copy score to NewVaultTrialDisplays
scoreboard players operation @n[type=minecraft:text_display,tag=NewVaultTrialDisplay,distance=..16] game.entity.vault_code = @n[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible,distance=..8] node.property.altar.vault_code

# Remove local tags
tag @e[tag=NewVaultTrialDisplay,distance=..16] remove NewVaultTrialDisplay
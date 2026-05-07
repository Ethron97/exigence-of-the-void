# Sub function to call Open Vault subfunction as player

## CONSTRAINTS
#   AS/AT vault handle (item display)

## INPUT
#   STR vault

#====================================================================================================

# DEBUG
$execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Finish opening $(vault)

# Call vault-specific opens
$function exigence:door/vault/$(vault)/open
# Call common open as VaultNode
execute as @n[type=minecraft:marker,tag=VaultNode,distance=..5] at @s run function exigence:door/vault/_common/open_vault

# Player open
execute as @p[tag=OpeningVault,tag=ActivePlayer,scores={dead=0},distance=..16] run function exigence:door/vault/_common/open_vault_player

# Cleanup item displays
$particle minecraft:item{item:{id:"minecraft:$(vault)_armor_trim_smithing_template"}} ^ ^ ^-0.2 0.3 0.3 0.3 0.1 20
kill @e[type=minecraft:item_display,tag=VaultHandleKey,distance=..5]
kill @s[type=minecraft:item_display,tag=VaultHandle]

# If vault handle is not a Trial Handle, return
execute unless entity @s[tag=TrialHandle] run return 0
#----------------------------------------------------------------------------------------------------

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Open vault (common) - Level 3 Vault

# Summon displays above altars
$execute as @n[type=minecraft:marker,scores={game.node.node_state=0},tag=AltarNode,tag=Trial,distance=..8] at @s run function exigence:door/vault/$(vault)/summon_trial_displays with entity @s
$execute as @n[type=minecraft:marker,tag=AltarNode,tag=Crucible,distance=..8] at @s run function exigence:door/vault/$(vault)/summon_crucible_displays with entity @s

# Copy score to NewVaultTrialDisplays
scoreboard players operation @e[type=#exigence:display,tag=NewVaultTrialDisplay,distance=..16] game.entity.vault_code = @n[type=minecraft:marker,tag=AltarNode,tag=Crucible,distance=..8] node.property.altar.vault_code

# Remove local tags
tag @e[type=#exigence:display,tag=NewVaultTrialDisplay,distance=..16] remove NewVaultTrialDisplay
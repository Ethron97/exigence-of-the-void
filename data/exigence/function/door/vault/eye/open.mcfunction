# Called by door/vault/open_vault

# Clear main door
fill -373 153 5 -373 155 7 air destroy

# Summon text displays
# Add local tag to the two corresponding altars to this vault
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Trial] if score @s VaultID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_eye,limit=1] NodeID run tag @s add AltarTrialDisplay
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible] if score @s VaultID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_eye,limit=1] NodeID run tag @s add AltarCrucibleDisplay

# Summon displays above altars
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Trial,tag=AltarTrialDisplay,scores={game.node.node_state=0}] at @s run function exigence:door/vault/eye/summon_trial_displays with entity @s
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible,tag=AltarCrucibleDisplay] at @s run function exigence:door/vault/eye/summon_crucible_displays with entity @s

# Main display
summon minecraft:text_display -364.1 155.5 6.5 {background:1,line_width:150,Rotation:[90.0f,0.0f],Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Light an altar to begin",color:"yellow"}]}



# Copy score to NewVaultTrialDisplays
scoreboard players operation @e[type=minecraft:text_display,tag=NewVaultTrialDisplay] game.entity.vault_code = @e[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible,tag=AltarCrucibleDisplay,limit=1] node.property.altar.vault_code



# Remove local tags
tag @e[type=minecraft:armor_stand,tag=AltarTrialDisplay] remove AltarTrialDisplay
tag @e[type=minecraft:armor_stand,tag=AltarCrucibleDisplay] remove AltarCrucibleDisplay

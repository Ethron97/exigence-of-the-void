# Called by door/vault/open_vault

# Clear main door
fill -397 153 -1 -397 155 -3 air destroy

# Summon text displays
# Add local tag to the two corresponding altars to this vault
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Trial] if score @s VaultID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_dune,limit=1] NodeID run tag @s add AltarTrialDisplay
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible] if score @s VaultID = @e[type=minecraft:armor_stand,tag=VaultNode,tag=Vault_dune,limit=1] NodeID run tag @s add AltarCrucibleDisplay

# Summon displays above altars
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Trial,tag=AltarTrialDisplay,scores={NodeState=0}] at @s run function exigence:door/vault/dune/summon_trial_displays with entity @s
execute as @e[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible,tag=AltarCrucibleDisplay] at @s run function exigence:door/vault/dune/summon_crucible_displays with entity @s

# Main display
summon minecraft:text_display -404.9 155.5 -1.5 {background:1,line_width:150,Rotation:[-90.0f,0.0f],Tags:["VaultTrialDisplay","NewVaultTrialDisplay"],billboard:'fixed',text:[{text:"Light an altar to begin",color:"yellow"}]}



# Copy score to NewVaultTrialDisplays
scoreboard players operation @e[type=minecraft:text_display,tag=NewVaultTrialDisplay] VaultCode = @e[type=minecraft:armor_stand,tag=AltarNode,tag=Crucible,tag=AltarCrucibleDisplay,limit=1] VaultCode



# Remove local tags
tag @e[type=minecraft:armor_stand,tag=AltarTrialDisplay] remove AltarTrialDisplay
tag @e[type=minecraft:armor_stand,tag=AltarCrucibleDisplay] remove AltarCrucibleDisplay

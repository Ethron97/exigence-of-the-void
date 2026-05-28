# Begin Spire trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 5
#       Player must be within 24 blocks of the trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin Spire (Hub)

# Update status
scoreboard players set hub.spire.trial trial.status 1
execute if entity @s[tag=Crucible] run scoreboard players set hub.spire.crucible trial.status 1

# Call generic functions
function exigence:door/vault/_trial/_begin_hub

# Setup spire
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,tag=Hub,distance=..24] at @s run function exigence:door/vault/spire/trial/setup

# Teleport player into the chamber
execute at @s at @n[type=minecraft:marker,tag=TrialNode,tag=Spire,tag=Hub,distance=..24] run tp @s ~ ~4 ~

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"yellow"},{text:" Entered the ",color:"gray"}\
,{text:"Trial of Ascension ",color:"yellow"},{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"light_purple"},{text:" Entered the ",color:"gray"}\
,{text:"Crucible of Ascension ",color:"light_purple"},{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"}]

# Initialize spire bossbar
bossbar set exigence:hub_trial_spire visible true
bossbar set exigence:hub_trial_spire players @s
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_spire color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_spire name [{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Trial of Ascension ",color:"yellow"},{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_spire color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_spire name [{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Crucible of Ascension ",color:"light_purple"},{sprite:"minecraft:item/spire_armor_trim_smithing_template",atlas:"items",color:"white"}]

# TODO add "practice" score tracking
#scoreboard players add @s[tag=ActivePlayer,tag=Trial] profile.data.vaults.cr.spire_trial_try 1
#scoreboard players add @s[tag=ActivePlayer,tag=Crucible] profile.data.vaults.cr.spire_crucible_try 1

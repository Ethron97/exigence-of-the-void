# Begin Flow trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 6
#       Player must be within 24 blocks of the trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin Flow (Hub)

# Update status
scoreboard players set hub.flow.trial trial.status 1
execute if entity @s[tag=Crucible] run scoreboard players set hub.flow.crucible trial.status 1

# Call generic functions
function exigence:door/vault/_trial/_begin_hub

# Setup flow
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Flow,tag=Hub,distance=..24] at @s run function exigence:door/vault/flow/trial/setup

# Teleport player into the chamber
execute at @s run tp @s @n[type=minecraft:marker,tag=TrialNode,tag=Flow,tag=Hub,distance=..24]

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"yellow"},{text:" Entered the ",color:"gray"}\
,{text:"Trial of Motion ",color:"yellow"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"light_purple"},{text:" Entered the ",color:"gray"}\
,{text:"Crucible of Motion ",color:"light_purple"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]

# Initialize flow bossbar
bossbar set exigence:hub_trial_flow visible true
bossbar set exigence:hub_trial_flow players @s
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_flow color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_flow name [{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Trial of Motion ",color:"yellow"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_flow color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_flow name [{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Crucible of Motion ",color:"light_purple"},{sprite:"minecraft:item/flow_armor_trim_smithing_template",atlas:"items",color:"white"}]

# TODO add "practice" score tracking
#scoreboard players add @s[tag=ActivePlayer,tag=Trial] profile.data.vaults.cr.flow_trial_try 1
#scoreboard players add @s[tag=ActivePlayer,tag=Crucible] profile.data.vaults.cr.flow_crucible_try 1

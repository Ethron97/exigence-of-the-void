# Begin Eye trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 4
#       Player must be within 24 blocks of the trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin Eye (Hub)

# Update status
scoreboard players set hub.eye.trial trial.status 1
execute if entity @s[tag=Crucible] run scoreboard players set hub.eye.crucible trial.status 1

# Call generic functions
function exigence:door/vault/_trial/_begin_hub

# Setup eye
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Eye,tag=Hub,distance=..24] at @s run function exigence:door/vault/eye/trial/setup

# Teleport player into the chamber
execute at @s run tp @s @n[type=minecraft:marker,tag=TrialNode,tag=Eye,tag=Hub,distance=..24]

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"yellow"},{text:" Entered the ",color:"gray"}\
,{text:"Trial of Sight ",color:"yellow"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"light_purple"},{text:" Entered the ",color:"gray"}\
,{text:"Crucible of Sight ",color:"light_purple"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]

# Initialize eye bossbar
bossbar set exigence:hub_trial_eye visible true
bossbar set exigence:hub_trial_eye players @s
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_eye color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:hub_trial_eye name [{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Trial of Sight ",color:"yellow"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_eye color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:hub_trial_eye name [{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Crucible of Sight ",color:"light_purple"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]

# TODO add "practice" score tracking
#scoreboard players add @s[tag=ActivePlayer,tag=Trial] profile.data.vaults.cr.eye_trial_try 1
#scoreboard players add @s[tag=ActivePlayer,tag=Crucible] profile.data.vaults.cr.eye_crucible_try 1

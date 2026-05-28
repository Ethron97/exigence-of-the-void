# Begin Eye trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 4
#       Player must be within 24 blocks of the trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin eye (Game)

# Update status
scoreboard players set game.eye.trial trial.status 1

# Call generic functions
function exigence:door/vault/_trial/_begin_game

# Cleanup displays from altar choice
function exigence:door/vault/_trial/_cleanup_displays {vault_code:2,vault_name:'Eye'}

# Setup eye
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Eye,tag=Game,distance=..24] at @s run function exigence:door/vault/eye/trial/setup

# Teleport player into the chamber
execute at @s run tp @s @n[type=minecraft:marker,tag=TrialNode,tag=Eye,tag=Game,distance=..24]

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"yellow"},{text:" Entered the ",color:"gray"}\
,{text:"Trial of Sight ",color:"yellow"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"light_purple"},{text:" Entered the ",color:"gray"}\
,{text:"Crucible of Sight ",color:"light_purple"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 4 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=4},tag=Game]",color:"dark_aqua"},\
{text:" entered the ",color:"gray"},{text:"Trial of Sight ",color:"yellow"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 4 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=4},tag=Game]",color:"dark_aqua"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Sight ",color:"light_purple"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 4 run title @s title ""

# Initialize eye bossbar
bossbar set exigence:trial_eye visible true
bossbar set exigence:trial_eye players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_eye color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_eye name [{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Trial of Sight ",color:"yellow"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_eye color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_eye name [{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Crucible of Sight ",color:"light_purple"},{sprite:"minecraft:item/eye_armor_trim_smithing_template",atlas:"items",color:"white"}]

# Give try scores
scoreboard players add @s[tag=ActivePlayer,tag=Trial] profile.data.vaults.cr.eye_trial_try 1
scoreboard players add @s[tag=ActivePlayer,tag=Crucible] profile.data.vaults.cr.eye_crucible_try 1

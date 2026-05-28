# Begin Bolt trial

## CONSTRAINTS
#   AS player with game.player.vault_code = 1
#       Player must be within 24 blocks of the trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin Bolt (Game)

# Update status
scoreboard players set game.bolt.trial trial.status 1

# Call generic functions
function exigence:door/vault/_trial/_begin_game

# Cleanup displays from altar choice
function exigence:door/vault/_trial/_cleanup_displays {vault_code:1,vault_name:'Bolt'}

# Setup bolt
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,tag=Game,distance=..24] at @s run function exigence:door/vault/bolt/trial/setup

# Teleport player into the chamber
execute at @s run tp @s @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,tag=Game,distance=..24]

# Send message to player
execute if entity @s[tag=Trial] run tellraw @s [{text:"[!]",color:"yellow"},{text:" Entered the ",color:"gray"}\
,{text:"Trial of Lightning ",color:"yellow"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run tellraw @s [{text:"[!]",color:"light_purple"},{text:" Entered the ",color:"gray"}\
,{text:"Crucible of Lightning ",color:"light_purple"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]

# COOP - Show title to all other players
execute if entity @s[tag=Trial] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 1 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=1},tag=Game]",color:"dark_aqua"},\
{text:" entered the ",color:"gray"},{text:"Trial of Lightning ",color:"yellow"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 1 run title @s subtitle [{"selector":"@a[scores={game.player.vault_code=1},tag=Game]",color:"dark_aqua"},\
{text:" entered the ",color:"gray"},{text:"Crucible of Lightning ",color:"light_purple"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute as @a[tag=ActivePlayer] unless score @s game.player.vault_code matches 1 run title @s title ""

# Initialize bolt bossbar
bossbar set exigence:trial_bolt visible true
bossbar set exigence:trial_bolt players @s
execute if entity @s[tag=Trial] run bossbar set exigence:trial_bolt color yellow
execute if entity @s[tag=Trial] run bossbar set exigence:trial_bolt name [{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Trial of Lightning ",color:"yellow"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_bolt color purple
execute if entity @s[tag=Crucible] run bossbar set exigence:trial_bolt name [{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"},{text:" Crucible of Lightning ",color:"light_purple"},{sprite:"minecraft:item/bolt_armor_trim_smithing_template",atlas:"items",color:"white"}]

# Give try scores
scoreboard players add @s[tag=ActivePlayer,tag=Trial] profile.data.vaults.cr.bolt_trial_try 1
scoreboard players add @s[tag=ActivePlayer,tag=Crucible] profile.data.vaults.cr.bolt_crucible_try 1

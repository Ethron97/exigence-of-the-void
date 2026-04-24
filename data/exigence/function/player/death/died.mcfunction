# Call from detect_game_state when a player is found with dead=1 (just died)

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
tellraw @a [{text:"(D3) Died ",color:"red"},{"score": {"name": "@s","objective": "game.player.active_level"}}]

# Increase score to dead=2 so this doesn't recall
scoreboard players set @s dead 2

# Increment death check counter
scoreboard players add game.dead_players game.state 1

# "You Died"
title @s subtitle {text:"You died",color:"red"}
title @s title ""

#====================================================================================================
## CLEAR / DROP ITEMS
data modify storage exigence:give death_x set from entity @s LastDeathLocation.pos[0]
data modify storage exigence:give death_y set from entity @s LastDeathLocation.pos[1]
data modify storage exigence:give death_z set from entity @s LastDeathLocation.pos[2]

# Before clear, check if character has echo (or shards)
execute store result score #temp Temp run clear @s minecraft:echo_shard 0
scoreboard players operation @s profile.data.ember.cr.echos_lost += #temp Temp
execute store result score #temp Temp run clear @s minecraft:disc_fragment_5 0
scoreboard players operation @s profile.data.ember.cr.echo_fragment_lost += #temp Temp

# Drop items
function exigence:player/death/died/died_at with storage exigence:give

# TEMP TESTING BREAKPOINT
return 0
#----------------------------------------------------------------------------------------------------

# Gamemode spectator if there is another player alive
#execute if entity @a[scores={dead=0},tag=ActivePlayer] run gamemode spectator @s
#execute if entity @a[scores={dead=0},tag=ActivePlayer] run schedule function exigence:player/game/refresh_spectate 5t

# Ensure is on player team
team join Player @s

# Reset effects (effect_)
function exigence:player/effects/reset_active_effects

scoreboard players set @s game.player.heighten 0

scoreboard players set @s game.player.damage_since_last_death 0

# Increase locational deaths
execute if score @s game.player.active_level matches 1 run scoreboard players add @s profile.data.winloss.cr.deaths_L1 1
execute if score @s game.player.active_level matches 2 run scoreboard players add @s profile.data.winloss.cr.deaths_L2 1
execute if score @s game.player.active_level matches 3 run scoreboard players add @s profile.data.winloss.cr.deaths_L3 1
execute if score @s game.player.active_level matches 4 run scoreboard players add @s profile.data.winloss.cr.deaths_L4 1
execute if score @s game.player.active_level matches 5 run scoreboard players add @s profile.data.winloss.cr.deaths_L5 1

# Increase difficulty deaths
execute if score game.difficulty game.state matches 1 run scoreboard players add @s profile.data.winloss.cr.deaths_D1 1
execute if score game.difficulty game.state matches 2 run scoreboard players add @s profile.data.winloss.cr.deaths_D2 1
execute if score game.difficulty game.state matches 3 run scoreboard players add @s profile.data.winloss.cr.deaths_D3 1
execute if score game.difficulty game.state matches 4 run scoreboard players add @s profile.data.winloss.cr.deaths_D4 1
execute if score game.difficulty game.state matches 5 run scoreboard players add @s profile.data.winloss.cr.deaths_D5 1
execute if score game.difficulty game.state matches 6 run scoreboard players add @s profile.data.winloss.cr.deaths_D6 1

# Update killed_by scores
function exigence:player/death/private/update_scores
scoreboard players add @s profile.data.winloss.cr.deaths 1

# If died at max menace, add to score
execute if score game.max_menace game.state matches 1 run scoreboard players add @s profile.data.winloss.cr.max_menace_deaths 1

# If player dies while carrying NPC (and game is coop), remove NPC and carrying tag and send message
execute if entity @s[tag=Carrying] run function exigence:player/uncarry
tag @s remove Carrying

# Title to alert teammates
title @a[scores={dead=0},tag=ActivePlayer] subtitle [{"selector":"@s"},{text:" died",color:"red"}]
title @a[scores={dead=0},tag=ActivePlayer] title ""

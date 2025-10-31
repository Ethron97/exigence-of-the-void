# Increase health of player by X number

## CONSTRAINTS
#   AS player

## INPUT
#   INT boost:

#=========================================================================================================

# If already at +20 hearts (40), return
execute if score @s game.player.mod.health_boost matches 40.. run return 1

$scoreboard players set #adding game.player.mod.health_boost $(boost)

# Get the current amount that we can add
scoreboard players operation #can_add game.player.mod.health_boost = 40 number
scoreboard players operation #can_add game.player.mod.health_boost -= @s game.player.mod.health_boost

# Limit #adding to #can_add
scoreboard players operation #adding game.player.mod.health_boost < #can_add game.player.mod.health_boost

# If adding 0, return
execute if score #adding game.player.mod.health_boost matches 0 run return 1

# Add to current score
scoreboard players operation @s game.player.mod.health_boost += #adding game.player.mod.health_boost

# Store to data to call next macro
execute store result storage exigence:temp new_total int 1 run scoreboard players get @s game.player.mod.health_boost
execute store result storage exigence:temp amount int 1 run scoreboard players get #adding game.player.mod.health_boost
function exigence:player/attributes/health_boost/macro with storage exigence:temp

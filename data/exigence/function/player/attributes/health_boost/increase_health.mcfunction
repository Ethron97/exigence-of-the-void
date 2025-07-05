# Increase health of player by X number

## CONSTRAINTS
#   AS player

## INPUT
#   INT boost:

#=========================================================================================================

# If already at +20 hearts (40), return
execute if score @s mod_calc_HealthBoost matches 40.. run return 1

$scoreboard players set #adding mod_calc_HealthBoost $(boost)

# Get the current amount that we can add
scoreboard players operation #can_add mod_calc_HealthBoost = 40 number
scoreboard players operation #can_add mod_calc_HealthBoost -= @s mod_calc_HealthBoost

# Limit #adding to #can_add
scoreboard players operation #adding mod_calc_HealthBoost < #can_add mod_calc_HealthBoost

# If adding 0, return
execute if score #adding mod_calc_HealthBoost matches 0 run return 1

# Add to current score
scoreboard players operation @s mod_calc_HealthBoost += #adding mod_calc_HealthBoost

# Store to data to call next macro
execute store result storage exigence:temp new_total int 1 run scoreboard players get @s mod_calc_HealthBoost
execute store result storage exigence:temp amount int 1 run scoreboard players get #adding mod_calc_HealthBoost
function exigence:player/attributes/health_boost/macro with storage exigence:temp

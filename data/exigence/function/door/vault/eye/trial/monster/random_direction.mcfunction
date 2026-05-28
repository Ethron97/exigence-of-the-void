# Pick random direction

## CONSTRAINTS
#   AS/AT monster

## OUTPUT
#  SCORE #random Random

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4 Trial) Random monster direction

#   0 = pos x, east
#   1 = pos z, south
#   2 = neg x, west
#   3 = neg z, north

# If not opposite from previous AND not empty
scoreboard players operation #compare Random = @s trial.object.direction
scoreboard players operation #compare Random += 2 number
scoreboard players operation #compare Random %= 4 number

# Initialize list
data modify storage exigence:trial valid_directions set value []

# Add valid directions to list
#   Cannot turn around (#compare) and cannot walk into air
execute unless score #compare Random matches 0 unless block ~1 ~-1 ~ air run data modify storage exigence:trial valid_directions append value 0
execute unless score #compare Random matches 1 unless block ~ ~-1 ~1 air run data modify storage exigence:trial valid_directions append value 1
execute unless score #compare Random matches 2 unless block ~-1 ~-1 ~ air run data modify storage exigence:trial valid_directions append value 2
execute unless score #compare Random matches 3 unless block ~ ~-1 ~-1 air run data modify storage exigence:trial valid_directions append value 3

# Get array length
scoreboard players set #length_1 Temp 0
execute if data storage exigence:trial {valid_directions:[0]} run scoreboard players add #length_1 Temp 1
execute if data storage exigence:trial {valid_directions:[1]} run scoreboard players add #length_1 Temp 1
execute if data storage exigence:trial {valid_directions:[2]} run scoreboard players add #length_1 Temp 1
execute if data storage exigence:trial {valid_directions:[3]} run scoreboard players add #length_1 Temp 1
execute if score #length_1 Temp matches 0 run say Uhhh no valid direction for Eye trial monster random direction?

# If there is only one valid direction, return it (no need to player-filter)
#execute if score #length_1 Temp matches 1 run say Just one valid direction
execute if score #length_1 Temp matches 1 run return run execute store result score #random Random run data get storage exigence:trial valid_directions[0]
#----------------------------------------------------------------------------------------------------

# Try filter
execute if entity @s[type=!minecraft:husk] run function exigence:door/vault/eye/trial/monster/private/try_filter_directions
execute if entity @s[type=minecraft:husk] run function exigence:door/vault/eye/trial/monster/private/try_filter_directions_husk

# If there is only one valid direction, return it
#execute if score #length_2 Temp matches 1 run say Just one valid direction (filtered)
execute if score #length_2 Temp matches 1 run return run execute store result score #random Random run data get storage exigence:trial valid_directions[0]
#----------------------------------------------------------------------------------------------------

# If there are multiple valid-player-filtered directions, randomly choose
#say Multiple directions availbale

# Select a random direction from valid ones
execute store result storage exigence:trial length int 1 run scoreboard players get #length_1 Temp
## OUTPUTS: #chosen_direction Temp
function exigence:door/vault/eye/trial/monster/private/choose_direction with storage exigence:trial

scoreboard players operation #random Random = #chosen_direction Temp

## OUTPUTS
#   #random Random 0-3
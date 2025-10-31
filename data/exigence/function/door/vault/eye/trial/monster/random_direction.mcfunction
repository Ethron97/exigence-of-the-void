# Pick random direction

## CONSTRAINTS
#   AS/AT monster

#==============================================================================================================

# DEBUG
#say Random direction

# Random value between 0..3
execute store result score #random Random run random value 0..3
#   0 = pos x, east
#   1 = pos z, south
#   2 = neg x, west
#   3 = neg z, north

# If not opposite from previous AND not empty
scoreboard players operation #compare Random = @s EyeDirection
scoreboard players operation #compare Random += 2 number
scoreboard players operation #compare Random %= 4 number

execute if score #random Random matches 0 unless score #compare Random = #random Random unless block ~1 ~-1 ~ air run return 1
execute if score #random Random matches 1 unless score #compare Random = #random Random unless block ~ ~-1 ~1 air run return 1
execute if score #random Random matches 2 unless score #compare Random = #random Random unless block ~-1 ~-1 ~ air run return 1
execute if score #random Random matches 3 unless score #compare Random = #random Random unless block ~ ~-1 ~-1 air run return 1

function exigence:door/vault/eye/trial/monster/random_direction

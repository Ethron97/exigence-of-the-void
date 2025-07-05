# Choose next valid direction and give tag

#===========================================================================================================

# DEBUG
#say Try choose direction

# Random value between 0..3
execute store result score random Random run random value 0..4
# Extra weight to trying to continue straight
execute if score random Random matches 4 run scoreboard players operation random Random = #silence_previous Random
#   0 = pos x, east
#   1 = pos z, south
#   2 = neg x, west
#   3 = neg z, north

# If not opposite from previous AND not a wall
scoreboard players operation #compare Random = #silence_previous Random
scoreboard players operation #compare Random += 2 number
scoreboard players operation #compare Random %= 4 number
#tellraw Ethron97 [{"score":{"name": "random","objective": "Random"}},{text:" "},{"score":{"name": "#compare","objective": "Random"}}]

# If runs into wall, retry
# If matches previous, retry
execute unless score random Random = #compare Random unless function exigence:door/vault/silence/trial/platform/if_wall run return 1

function exigence:door/vault/silence/trial/platform/random_direction


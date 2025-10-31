# Load unlocks from profile node

## CALLS
#   Shop load
#   Whenever an item is researched

## CONSTRAINTS
#   AS player

#=============================================================================================================

# Reset array
data modify storage exigence:shop shop_unlocked set value [] 
data modify storage exigence:shop one_time_purchased set value [] 

# If profile has unlock score, add to array for later lookup
scoreboard players operation #compare profile.node.profile_id = @s profile.profile_id

execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] \
if score @s profile.node.profile_id = @s profile.node.profile_id run function exigence:scoreboard/generated_functions/shop_unlocks

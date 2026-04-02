# Load unlocks from profile node

## CALLS
#   Shop load
#   Whenever an item is researched

## CONSTRAINTS
#   AS player
#       We should be able to call this as any arbitrary player 
#       in the item shop, as the unlocks should be synced when granted.

#====================================================================================================

say Load unlocks (initialize)

# Reset array
data modify storage exigence:shop shop_unlocked set value [] 
data modify storage exigence:shop one_time_purchased set value [] 

# If profile has unlock score, add to array for later lookup
scoreboard players operation #compare profile.node.profile_id = @s profile.player.profile_id

# Call generated unlock function
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run function exigence:scoreboard/generated_functions/shop_unlocks

# Get tier threshold based on progression
#   OUTPUTS: #tier Temp
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] \
if score @s profile.node.profile_id = #compare profile.node.profile_id run function exigence:profile/profile_node/get/tier_threshold

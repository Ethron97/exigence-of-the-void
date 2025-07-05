## CONSTRAINTS
#   AS BeaconNode

#================================================================================================

# Remove interaction
function exigence:beacon/node/remove_interaction

# Set block to unlit campfire
#execute at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:soul_campfire[lit=false]

# Clone ruined beacon
clone -411 -43 -122 -407 -41 -118 ~-2 ~-2 ~-2


# Set node state
scoreboard players set @s NodeState -1

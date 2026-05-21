# Called from interaction

## CONSTRAINTS
#   AS BeaconInteraction interaction

#====================================================================================================

# DEBUG
execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Beacon handle

# Give tag to interacting player
execute on target run tag @s add Lighting

# Store compare
scoreboard players operation #compare node.id = @s node.id

# Call subfunction as Beacon that is interacted with
execute at @s as @e[type=minecraft:marker,tag=BeaconNode,distance=..3] if score @s node.id = #compare node.id run function exigence:beacon/node/try_light

# Remove local tag
execute on target run tag @s remove Lighting

# Called from interaction

## CONSTRAINTS
#   AS BeaconInteraction interaction OR BeaconNode armorstand
#       Both have the same NodeID

# ===============================================================================================================

# DEBUG
say Beacon handle

# Give tag to interacting player
execute on target run tag @s add Lighting

# Store compare
scoreboard players operation #compare NodeID = @s NodeID

# Call subfunction as Beacon that is interacted with
execute as @e[type=minecraft:armor_stand,tag=BeaconNode] if score @s NodeID = #compare NodeID run function exigence:beacon/node/try_light

# Remove local tag
execute on target run tag @s remove Lighting

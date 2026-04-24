# Create interaction entity for this Beacon

## CONSTRAINTS
#   AS BeaconNode

#====================================================================================================

# Store this Beacon's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
execute as @e[type=minecraft:interaction,tag=BeaconInteract] if score @s node.id = #compare node.id run kill @s

# Summon new interaction
execute at @s run summon minecraft:interaction ~ ~ ~ {width:2.8,height:1.5,Tags:["NewBeaconInteract","BeaconInteract"],response:1b}

# Assign id
scoreboard players operation @e[type=minecraft:interaction,tag=NewBeaconInteract] node.id = #compare node.id

# Remove local tag
tag @e[type=minecraft:interaction,tag=NewBeaconInteract] remove NewBeaconInteract

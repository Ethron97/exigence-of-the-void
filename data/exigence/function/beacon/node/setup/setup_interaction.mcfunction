# Create interaction entity for this Beacon

## CONSTRAINTS
#   AS BeaconNode

#====================================================================================================

# Store this Beacon's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:interaction,tag=BeaconInteract] if score @s node.id = #compare node.id run kill @s

# Summon new interaction
execute at @s run summon minecraft:interaction ~ ~ ~ {width:2.8,height:1.5,Tags:["NewBeaconInteract","BeaconInteract","ETICK"],response:1b}

# Assign id
execute at @s run scoreboard players operation @e[type=minecraft:interaction,tag=NewBeaconInteract,distance=..1] node.id = #compare node.id

# Remove local tag
execute at @s run tag @e[type=minecraft:interaction,tag=NewBeaconInteract,distance=..1] remove NewBeaconInteract

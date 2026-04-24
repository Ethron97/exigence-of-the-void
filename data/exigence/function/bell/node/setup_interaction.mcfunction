# Create interaction entity for this bell

## CONSTRAINTS
#   AS/AT BellNode

#====================================================================================================

# Store this bell's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=BellInteract] if score @s node.id = #compare node.id run kill @s

# Summon new interaction
summon minecraft:interaction ~ ~ ~ {Tags:["NewBellInteract","BellInteract"],response:1b}

# Assign id
scoreboard players operation @e[type=minecraft:interaction,tag=NewBellInteract,distance=..1] node.id = #compare node.id

# Remove local tag
tag @e[type=minecraft:interaction,tag=NewBellInteract,distance=..1] remove NewBellInteract

# Create interaction entity for this berry bush

## CONSTRAINTS
#   AS BerryNode

#====================================================================================================

# Store this Berry Node's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=BerryInteract] if score @s node.id = #compare node.id run kill @s

# Summon new interaction
execute at @s run summon minecraft:interaction ~ ~ ~ {width:1.1,height:1.1,Tags:["NewBerryInteract","BerryInteract"],response:1b}

# Assign id
execute at @s run scoreboard players operation @e[type=minecraft:interaction,tag=NewBerryInteract,distance=..3] node.id = #compare node.id

# Remove local tag
execute at @s run tag @e[type=minecraft:interaction,tag=NewBerryInteract,distance=..3] remove NewBerryInteract

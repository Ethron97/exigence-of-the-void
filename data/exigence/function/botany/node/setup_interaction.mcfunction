# Create interaction entity for this berry bush

## CONSTRAINTS
#   AS BerryNode

#=================================================================================================================

# Store this Berry Node's id for lookup
scoreboard players operation #compare NodeID = @s NodeID

# If there is already an interaction, kill it
#   Ensures we don't accidently stack entities and cause lag
execute as @e[type=minecraft:interaction,tag=BerryInteract] if score @s NodeID = #compare NodeID run kill @s

# Summon new interaction
execute at @s run summon minecraft:interaction ~ ~ ~ {width:1.1,height:1.1,Tags:["NewBerryInteract","BerryInteract"],response:1b}

# Assign id
execute at @s run scoreboard players operation @e[distance=..3,type=minecraft:interaction,tag=NewBerryInteract] NodeID = #compare NodeID

# Remove local tag
execute at @s run tag @e[distance=..3,type=minecraft:interaction,tag=NewBerryInteract] remove NewBerryInteract

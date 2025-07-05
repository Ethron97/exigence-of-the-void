# Create interaction entity for this bell

## CONSTRAINTS
#   AS BellNode

#=================================================================================================================

# Store this bell's id for lookup
scoreboard players operation #compare NodeID = @s NodeID

# If there is already an interaction, kill it
execute as @e[type=minecraft:interaction,tag=BellInteract] if score @s NodeID = #compare NodeID run kill @s

# Summon new interaction
execute at @s run summon minecraft:interaction ~ ~ ~ {Tags:["NewBellInteract","BellInteract"],response:1b}

# Assign id
scoreboard players operation @e[type=minecraft:interaction,tag=NewBellInteract] NodeID = #compare NodeID

# Remove local tag
tag @e[type=minecraft:interaction,tag=NewBellInteract] remove NewBellInteract

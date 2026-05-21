# Create interaction entity for this bell

## CONSTRAINTS
#   AS/AT BellNode

## INPUT
#   #compare node.id

#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3) I am a bell setting up interaction

# Store this bell's id for lookup
scoreboard players operation #compare node.id = @s node.id

# If there is already an interaction, kill it
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=BellInteract] if score @s game.interaction.node.id = #compare node.id run kill @s
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:interaction,tag=BellInteract] if score @s game.interaction.node.id = #compare node.id run kill @s
execute as @e[type=interaction,distance=..1,scores={game.interaction.node.id=0}] run kill @s

# Summon new interaction
summon minecraft:interaction ~ ~ ~ {Tags:["NewBellInteract","BellInteract","ETICK"],response:1b}

# Assign id
scoreboard players operation @e[type=minecraft:interaction,tag=NewBellInteract,distance=..1] game.interaction.node.id = #compare node.id

# Remove local tag
tag @e[type=minecraft:interaction,tag=NewBellInteract,distance=..1] remove NewBellInteract

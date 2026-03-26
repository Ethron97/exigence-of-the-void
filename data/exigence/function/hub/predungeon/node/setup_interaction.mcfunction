# Setup the facehugger for this room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

say Setup Predungeon interaction

# Summon interaction
summon interaction ~ ~ ~ {Tags:["PredungeonInteraction","NewPredungeonInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign player id to interaction
scoreboard players operation @n[distance=..0.1,type=interaction,tag=NewPredungeonInteraction] hub.entity.player_id = @s career.player_id

# Remove local tag
tag @n[distance=..0.1,type=interaction,tag=NewPredungeonInteraction] remove NewPredungeonInteraction
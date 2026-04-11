# Setup the facehugger for this room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) Setup item shop interaction

# Summon interaction
summon interaction ~ ~ ~ {Tags:["ItemShopInteraction","NewItemShopInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign player id to interaction
scoreboard players operation @n[type=interaction,tag=NewItemShopInteraction,distance=..0.1] hub.entity.player_id = @s career.player_id

# Remove local tag
tag @n[type=interaction,tag=NewItemShopInteraction,distance=..0.1] remove NewItemShopInteraction
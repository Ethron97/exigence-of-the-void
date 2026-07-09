# Setup the facehugger for this room

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Setup Ember Shop interaction

# Summon interaction
summon minecraft:interaction ~ ~ ~ {Tags:["EmberShopInteraction","NewEmberShopInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign player id to interaction
scoreboard players operation @n[type=minecraft:interaction,tag=NewEmberShopInteraction,distance=..0.1] hub.entity.player_id = @s career.player_id

# Remove local tag
tag @n[type=minecraft:interaction,tag=NewEmberShopInteraction,distance=..0.1] remove NewEmberShopInteraction
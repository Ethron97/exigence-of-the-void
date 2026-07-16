# Called from click

## CONSTRAINTS
#   AS card display
#   player with tag Interacting

#====================================================================================================

# If creative, always
execute if entity @p[tag=Interacting,gamemode=creative] run return run function exigence:hub/ember_shop/menu/display/card/purchase
#----------------------------------------------------------------------------------------------------

# Check if there is enough embers to purchase it
execute if score shop.embers_to_spend ember_shop >= @s ember_shop.cost run return run function exigence:hub/ember_shop/menu/display/card/purchase
#----------------------------------------------------------------------------------------------------
# Else
tellraw @p[tag=Interacting] [{text:"✖ Not enough embers!",color:"red"}]
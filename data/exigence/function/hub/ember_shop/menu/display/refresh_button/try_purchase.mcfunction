# Called from click

## CONSTRAINTS
#   AS refresh button
#   player with tag Interacting

#====================================================================================================

# If creative, always
execute if entity @p[tag=Interacting,gamemode=creative,distance=..16] run return run function exigence:hub/ember_shop/menu/display/refresh_button/purchase
#----------------------------------------------------------------------------------------------------

# Get glint of this player
execute store result score shop.glint_to_spend ember_shop run clear @p[tag=Interacting,distance=..16] diamond 0

# Check if there is enough embers to purchase it
execute if score shop.glint_to_spend ember_shop >= @s ember_shop.cost run return run function exigence:hub/ember_shop/menu/display/refresh_button/purchase
#----------------------------------------------------------------------------------------------------
# Else
tellraw @p[tag=Interacting,distance=..16] [{text:"✖ Not enough glint!",color:"red"}]
# Called by item shop load, and recursively one tier at a time

## CONSTRAINTS
#   

#=============================================================================================================

# DEBUG
#say load handler iterate

# Load the ones that match the current tier iteration 
execute as @e[predicate=exigence:region/item_shop,type=minecraft:item_display,tag=ItemShopDisplay,tag=!Loaded] if score @s ItemShopTier = i Temp run tag @s add IterateCandidate

# Load 3 random from the candidates
#   Function removes the IterateCandidate tag
execute as @e[predicate=exigence:region/item_shop,type=minecraft:item_display,tag=ItemShopDisplay,tag=IterateCandidate,sort=random,limit=3] run function exigence:menu/item_display/item_shop_display/load/load

# Increase i (tier) if there are no remaining candidates for this tier
execute unless entity @e[predicate=exigence:region/item_shop,type=minecraft:item_display,tag=ItemShopDisplay,tag=IterateCandidate] run scoreboard players add i Temp 1

# Remove local tag
tag @e[predicate=exigence:region/item_shop,type=minecraft:item_display,tag=IterateCandidate] remove IterateCandidate

# Schedule next iteration if i <= 8
execute if score i Temp matches ..8 run schedule function exigence:hub/item_shop/load_handler/iterate 1t

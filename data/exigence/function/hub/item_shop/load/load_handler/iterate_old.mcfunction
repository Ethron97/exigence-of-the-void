# Called by item shop load, and recursively one tier at a time

## CONSTRAINTS
#   IN exigence:hub
#   AT center of item shop ( -43.5 200.0 0.5 )

#====================================================================================================

# DEBUG
say load handler iterate

# Load the ones that match the current tier iteration
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=!Loaded,distance=..32] if score @s shop.frame.tier = #item_shop_load_iterate Temp run tag @s add IterateCandidate
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=!Loaded,distance=..32] if score @s shop.frame.tier = #item_shop_load_iterate Temp run say tag me
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=IterateCandidate,distance=..32] run say hi???

# Load 3 random from the candidates
#   Function removes the IterateCandidate tag
execute as @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=IterateCandidate,distance=..32,sort=random,limit=3] run function exigence:menu/item_display/item_shop_display/load/load2

# Increase i (tier) if there are no remaining candidates for this tier
execute unless entity @e[type=minecraft:item_display,tag=ItemShopDisplay,tag=IterateCandidate,distance=..32] run scoreboard players add #item_shop_load_iterate Temp 1

# Remove local tag
tag @e[type=minecraft:item_display,tag=IterateCandidate,distance=..32] remove IterateCandidate

# Schedule next iteration if i <= 8
execute if score #item_shop_load_iterate Temp matches ..8 run schedule function exigence:hub/item_shop/load/load_handler/schedule 1t

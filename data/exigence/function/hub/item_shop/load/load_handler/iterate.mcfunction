# Called by item shop load, and recursively one tier at a time

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

# DEBUG
#say (D3) load handler iterate
#tellraw @a [{score:{name:"#item_shop_load_iterate",objective:"Temp"}}]

# Load the ones that match the current tier iteration
execute as @e[x=-59,y=190,z=-13,dx=35,dy=18,dz=25,type=minecraft:item_display,tag=ItemShopDisplay,tag=!Loaded] if score @s shop.frame.tier = #item_shop_load_iterate Temp run tag @s add IterateCandidate

# Load 3 random from the candidates
execute as @e[x=-59,y=190,z=-13,dx=35,dy=18,dz=25,type=minecraft:item_display,tag=IterateCandidate,sort=random,limit=3] run function exigence:menu/item_display/item_shop_display/load/load

# Increase i (tier) if there are no remaining candidates for this tier
execute unless entity @e[x=-59,y=190,z=-13,dx=35,dy=18,dz=25,type=minecraft:item_display,tag=IterateCandidate,limit=1] run scoreboard players add #item_shop_load_iterate Temp 1

# Remove local tag
tag @e[x=-59,y=190,z=-13,dx=35,dy=18,dz=25,type=minecraft:item_display,tag=IterateCandidate] remove IterateCandidate

# Schedule next iteration if i <= 8
execute if score #item_shop_load_iterate Temp matches ..8 run schedule function exigence:hub/item_shop/load/load_handler/schedule 1t

# Called from click

## CONSTRAINTS
#   AS refresh button
#   player with tag Interacting

#====================================================================================================

# Announce
execute if entity @p[tag=Interacting,gamemode=creative,distance=..16] run tellraw @a[tag=EmberShop] \
[{text:"Refreshed ",color:"gray"},{nbt:"item.components.'minecraft:lore'[0]",source:"entity",entity:"@s",interpret:true},{text:" (force)",color:"gray"}]

execute unless entity @p[tag=Interacting,gamemode=creative,distance=..16] run tellraw @a[tag=EmberShop] \
[{text:"Refreshed ",color:"gray"},{nbt:"item.components.'minecraft:lore'[0]",source:"entity",entity:"@s",interpret:true},{text:" for ",color:"gray"}\
,{score:{name:"@s",objective:"ember_shop.cost"},color:"gray"},{text:" 💎",color:"aqua"}]

# Remove glint from player
#   Do this before refresh because refresh inceasess cost
execute store result storage exigence:card_shop refresh_cost int 1 run scoreboard players get @s ember_shop.cost
execute as @p[tag=Interacting,gamemode=!creative,distance=..16] run function exigence:hub/ember_shop/menu/display/refresh_button/private/remove_money with storage exigence:card_shop

# Then refresh
execute at @n[type=minecraft:marker,tag=EmberShopMenuNode,distance=..7] run function exigence:hub/ember_shop/menu/display/refresh_button/refresh_current_rarity

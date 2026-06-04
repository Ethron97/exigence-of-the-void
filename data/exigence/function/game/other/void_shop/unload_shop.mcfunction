# Unload

## CONSTRAINTS
#   AS/AT void merchant

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Unload void shop

scoreboard players operation #compare game.void_merchant.shop_id = @s game.void_merchant.shop_id

# Remove tags
tag @s remove Loaded
#execute as @a[tag=ActivePlayer] if score @s shop.player.void_shopping_id = #compare game.void_merchant.shop_id run tag @s remove VoidShopping
#execute as @a[tag=ActivePlayer] if score @s shop.player.void_shopping_id = #compare game.void_merchant.shop_id run scoreboard players set @s VoidShopping 0

# Playsound
playsound minecraft:block.ender_chest.close ambient @a ~ ~ ~ 1

# Delete shop displays
execute as @e[type=minecraft:item_display,tag=MenuDisplay,distance=..10] if score @s game.void_merchant.shop_id = #compare game.void_merchant.shop_id run function exigence:menu/item_display/delete with entity @s item.components."minecraft:custom_data"

# If debug, regllow
execute if score toggle.void debug matches 1 run effect give @s glowing infinite 0 true
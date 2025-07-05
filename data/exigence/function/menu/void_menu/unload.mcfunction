# Unload

## CONSTRAINTS
# AS void merchant

#=============================================================================================================

# DEBUG
#say unload void menu
scoreboard players operation #compare VoidShopID = @s VoidShopID

# Remove tags
tag @s remove Loaded
execute as @a[tag=ActivePlayer] if score @s VoidShopping = #compare VoidShopID run tag @s remove VoidShopping
execute as @a[tag=ActivePlayer] if score @s VoidShopping = #compare VoidShopID run scoreboard players set @s VoidShopping 0

# Playsound
execute at @s run playsound minecraft:block.ender_chest.close ambient @a ~ ~ ~ 1

# Delete shop displays
execute as @e[type=minecraft:item_display,tag=MenuDisplay] if score @s VoidShopID = #compare VoidShopID run function exigence:menu/item_display/delete with entity @s item.components."minecraft:custom_data"


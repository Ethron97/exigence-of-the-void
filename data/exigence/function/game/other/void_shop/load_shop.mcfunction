# Load the void menu

## CONSTRAINTS
#   AS void merchant

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 3.. run say (D3 Game) Load void shop

tag @s add Loaded

# Generate new game.void_merchant.shop_id
scoreboard players add #highest game.void_merchant.shop_id 1
scoreboard players operation @s game.void_merchant.shop_id = #highest game.void_merchant.shop_id

# Assign FK to nearest player
#execute at @s run scoreboard players operation @p[scores={dead=0},tag=ActivePlayer] shop.player.void_shopping_id = #highest game.void_merchant.shop_id

# Give tag to nearest player
#tag @p[scores={dead=0},tag=ActivePlayer] add VoidShopping

# Playsound
execute at @s run playsound minecraft:block.ender_chest.open ambient @a ~ ~ ~ 1

data modify storage exigence:void_shop rot_0 set from entity @s Rotation[0]

# Call load function based
execute if score mod.void_shop_slots game.modifiers matches 3 run function exigence:game/other/void_shop/load/load_3 with storage exigence:void_shop
execute if score mod.void_shop_slots game.modifiers matches 4 run function exigence:game/other/void_shop/load/load_4 with storage exigence:void_shop
execute if score mod.void_shop_slots game.modifiers matches 5 run function exigence:game/other/void_shop/load/load_5 with storage exigence:void_shop
execute if score mod.void_shop_slots game.modifiers matches 6 run function exigence:game/other/void_shop/load/load_6 with storage exigence:void_shop

# Initalize purchasability
#function exigence:menu/void_menu/update_purchasability

# Temp disable glowing
effect clear @s glowing

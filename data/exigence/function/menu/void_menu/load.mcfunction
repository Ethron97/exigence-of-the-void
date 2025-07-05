# Load the void menu

## CONSTRAINTS
# AS void merchant looking in direction of shop

#=============================================================================================================

# DEBUG
#say load void menu
# randomize shop
#function exigence:menu/void_menu/randomize_shop

tag @s add Loaded

# Generate new VoidShopID
scoreboard players add #highest VoidShopID 1
scoreboard players operation @s VoidShopID = #highest VoidShopID

# Assign FK to nearest player
execute at @s run scoreboard players operation @p[tag=ActivePlayer,scores={dead=0}] VoidShopping = #highest VoidShopID

# Give tag to nearest player
tag @p[tag=ActivePlayer,scores={dead=0}] add VoidShopping

# Playsound
execute at @s run playsound minecraft:block.ender_chest.open ambient @a ~ ~ ~ 1

data modify storage exigence:void_shop rot_0 set from entity @s Rotation[0]

# Call load function based
execute if score VoidShopSlots Modifiers matches 3 run function exigence:menu/void_menu/load/load_3 with storage exigence:void_shop
execute if score VoidShopSlots Modifiers matches 4 run function exigence:menu/void_menu/load/load_4 with storage exigence:void_shop
execute if score VoidShopSlots Modifiers matches 5 run function exigence:menu/void_menu/load/load_5 with storage exigence:void_shop
execute if score VoidShopSlots Modifiers matches 6 run function exigence:menu/void_menu/load/load_6 with storage exigence:void_shop

# Initalize purchasability
function exigence:menu/void_menu/update_purchasability

# Initialize shop purchase cooldown
execute as @e[type=minecraft:item_display,tag=VoidShopDisplay] run scoreboard players set @s ShopPurchaseCooldown 0

# Called from refresh

#====================================================================================================

# Discard commons ChosenCard cards
execute as @e[x=30,y=200,z=12,dx=0,dy=2,dz=15,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] run function exigence:hub/ember_shop/menu/library_display/discard

# Reset display sequence
scoreboard players set #common ember_shop.display_sequence 0

## STANDARD CARDS
function exigence:hub/ember_shop/menu/refresh/pick/common
function exigence:hub/ember_shop/menu/refresh/pick/common
function exigence:hub/ember_shop/menu/refresh/pick/common
# ... Extra card slot(s)
execute if score shop.bonus_slots ember_shop matches 1.. run function exigence:hub/ember_shop/menu/refresh/pick/common
execute if score shop.bonus_slots ember_shop matches 2.. run function exigence:hub/ember_shop/menu/refresh/pick/common
execute if score shop.bonus_slots ember_shop matches 3.. run function exigence:hub/ember_shop/menu/refresh/pick/common
execute if score shop.bonus_slots ember_shop matches 4.. run function exigence:hub/ember_shop/menu/refresh/pick/common
execute if score shop.bonus_slots ember_shop matches 5.. run function exigence:hub/ember_shop/menu/refresh/pick/common
execute if score shop.bonus_slots ember_shop matches 6.. run function exigence:hub/ember_shop/menu/refresh/pick/common
execute if score shop.bonus_slots ember_shop matches 7.. run function exigence:hub/ember_shop/menu/refresh/pick/common

## VOID CARDS
function exigence:hub/ember_shop/menu/refresh/pick/common_void
# ... Extra void card slot(s)

# Random chance for bonus void card slots
execute store result score #temp Temp run random value 1..4
execute if score #temp Temp matches 1 run function exigence:hub/ember_shop/menu/refresh/pick/common_void
execute store result score #temp2 Temp run random value 1..4
execute if score #temp Temp matches 1 if score #temp2 Temp matches 1 run function exigence:hub/ember_shop/menu/refresh/pick/common_void

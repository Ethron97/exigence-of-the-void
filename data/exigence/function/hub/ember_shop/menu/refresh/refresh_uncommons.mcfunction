# Called from refresh

#====================================================================================================

# Discard uncommon ChosenCard cards
execute as @e[x=40,y=200,z=4,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] run function exigence:hub/ember_shop/menu/library_display/discard

# Reset display sequence
scoreboard players set #uncommon ember_shop.display_sequence 0

## STANDARD CARDS
function exigence:hub/ember_shop/menu/refresh/pick/uncommon
function exigence:hub/ember_shop/menu/refresh/pick/uncommon
function exigence:hub/ember_shop/menu/refresh/pick/uncommon
# ... Extra card slot(s)
execute if score shop.bonus_slots ember_shop matches 1.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon
execute if score shop.bonus_slots ember_shop matches 2.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon
execute if score shop.bonus_slots ember_shop matches 3.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon
execute if score shop.bonus_slots ember_shop matches 4.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon
execute if score shop.bonus_slots ember_shop matches 5.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon
execute if score shop.bonus_slots ember_shop matches 6.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon
execute if score shop.bonus_slots ember_shop matches 7.. run function exigence:hub/ember_shop/menu/refresh/pick/uncommon

## VOID CARDS
function exigence:hub/ember_shop/menu/refresh/pick/uncommon_void
# ... Extra void card slot(s)

# Random chance for bonus void card slots
execute store result score #temp Temp run random value 1..4
execute if score #temp Temp matches 1 run function exigence:hub/ember_shop/menu/refresh/pick/uncommon_void
execute store result score #temp2 Temp run random value 1..4
execute if score #temp Temp matches 1 if score #temp2 Temp matches 1 run function exigence:hub/ember_shop/menu/refresh/pick/uncommon_void

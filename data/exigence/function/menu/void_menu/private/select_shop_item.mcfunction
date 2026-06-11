# Randomly chooses one item to add to the shop

## CONSTRAINTS
#   AT location with temp shop markers for randomization

#====================================================================================================

# Mark one random marker
tag @e[type=minecraft:marker,tag=RandomVoid,tag=!SelectedVoid,distance=..1,sort=random,limit=1] add ChosenVoid

# Mark all markers with matching data
execute as @e[type=minecraft:marker,tag=RandomVoid,tag=ChosenVoid,distance=..1] run function exigence:menu/void_menu/private/mark_other_shop_options with entity @s data.custom_data

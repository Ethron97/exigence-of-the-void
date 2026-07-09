# Called from refresh

#====================================================================================================

# Discard rare ChosenCard cards
execute as @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] run function exigence:hub/ember_shop/menu/library_display/discard


## STANDARD CARDS
function exigence:hub/ember_shop/menu/refresh/pick/rare
function exigence:hub/ember_shop/menu/refresh/pick/rare
function exigence:hub/ember_shop/menu/refresh/pick/rare
# ... Extra card slot(s)



## VOID CARDS
function exigence:hub/ember_shop/menu/refresh/pick/rare_void
# ... Extra void card slot(s)

# Random chance for bonus void card slots
execute store result score #temp Temp run random value 1..4
execute if score #temp Temp matches 1 run function exigence:hub/ember_shop/menu/refresh/pick/rare_void
execute store result score #temp2 Temp run random value 1..4
execute if score #temp Temp matches 1 if score #temp2 Temp matches 1 run function exigence:hub/ember_shop/menu/refresh/pick/rare_void

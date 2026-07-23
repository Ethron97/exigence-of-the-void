# Remove ChosenCard from library display so you can refres to seee it again
#   And so refresh doesn't discard it

## INPUT
#   STR card_name

#====================================================================================================

# Check all library
# Common
$execute as @e[x=30,y=200,z=12,dx=0,dy=2,dz=15,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] \
if items entity @s container.* *[custom_data~{card_name:'$(card_name)'}] run function exigence:hub/ember_shop/menu/library_display/reset_no_remove

# Uncommon
$execute as @e[x=40,y=200,z=4,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] \
if items entity @s container.* *[custom_data~{card_name:'$(card_name)'}] run function exigence:hub/ember_shop/menu/library_display/reset_no_remove

# Rare
$execute as @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] \
if items entity @s container.* *[custom_data~{card_name:'$(card_name)'}] run function exigence:hub/ember_shop/menu/library_display/reset_no_remove

# Legendary
$execute as @e[x=30,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] \
if items entity @s container.* *[custom_data~{card_name:'$(card_name)'}] run function exigence:hub/ember_shop/menu/library_display/reset_no_remove
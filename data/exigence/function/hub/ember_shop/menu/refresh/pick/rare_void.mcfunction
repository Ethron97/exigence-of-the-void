# Pick one random common card to add to the shop display

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

# If all void are displaying or discarded, undiscard
execute unless entity @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=!Displaying,tag=!Discarded,tag=Void] \
as @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=!Displaying,tag=Discarded,tag=Void] run function exigence:hub/ember_shop/menu/library_display/undiscard

# Choose one void card to display
execute as @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=!Displaying,tag=!Discarded,tag=Void,sort=random,limit=1] run function exigence:hub/ember_shop/menu/library_display/display

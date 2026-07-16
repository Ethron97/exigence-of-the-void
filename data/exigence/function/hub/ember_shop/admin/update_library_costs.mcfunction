# Update all library display rarities based on location

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

# Common
scoreboard players set @e[x=30,y=200,z=12,dx=0,dy=2,dz=15,type=minecraft:item_display,tag=LibraryDisplay,tag=Void] ember_shop.cost 4
scoreboard players set @e[x=30,y=200,z=12,dx=0,dy=2,dz=15,type=minecraft:item_display,tag=LibraryDisplay,tag=!Void] ember_shop.cost 10

# Uncommon
scoreboard players set @e[x=40,y=200,z=4,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=Void] ember_shop.cost 8
scoreboard players set @e[x=40,y=200,z=4,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=!Void] ember_shop.cost 20

# Rare
scoreboard players set @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=Void] ember_shop.cost 16
scoreboard players set @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=!Void] ember_shop.cost 40

# Legendary
scoreboard players set @e[x=30,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=Void] ember_shop.cost 32
scoreboard players set @e[x=30,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay,tag=!Void] ember_shop.cost 80

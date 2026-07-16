# Update all library display rarities based on location

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

# Common
scoreboard players set @e[x=30,y=200,z=12,dx=0,dy=2,dz=15,type=minecraft:item_display,tag=LibraryDisplay] ember_shop.rarity 1

# Uncommon
scoreboard players set @e[x=40,y=200,z=4,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay] ember_shop.rarity 2

# Rare
scoreboard players set @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay] ember_shop.rarity 3

# Legendary
scoreboard players set @e[x=30,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay] ember_shop.rarity 4
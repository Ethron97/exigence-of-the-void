# Update all library display rarities based on location

## CONSTRAINTS
#   IN exigence:hub

#====================================================================================================

# Set inputs
#   SCORE #spellbinding Temp (1 = true)
scoreboard players set #spellbinding Temp 0
#   SCORE mod.spellbook game.modifiers
scoreboard players set mod.spellbook game.modifiers 0

# Common
execute as @e[x=30,y=200,z=12,dx=0,dy=2,dz=15,type=minecraft:item_display,tag=LibraryDisplay] at @s run function exigence:hub/ember_shop/menu/library_display/update_card_data

# Uncommon
execute as @e[x=40,y=200,z=4,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay] at @s run function exigence:hub/ember_shop/menu/library_display/update_card_data

# Rare
execute as @e[x=40,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay] at @s run function exigence:hub/ember_shop/menu/library_display/update_card_data

# Legendary
execute as @e[x=30,y=200,z=-28,dx=0,dy=2,dz=23,type=minecraft:item_display,tag=LibraryDisplay] at @s run function exigence:hub/ember_shop/menu/library_display/update_card_data

# Called by hub_tick

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )

#====================================================================================================

#say predungeon menu tick

# Swap Hover/OldHover tags
execute as @e[type=minecraft:item_display,tag=MenuDisplay,tag=Hover,distance=..16] run function exigence:menu/menu_tick_tag_swap

# Handle player functions
execute as @a[tag=Predungeon,distance=..16] at @s run function exigence:hub/predungeon/menu/predungeon_player_tick

# Hover logic
execute as @e[type=minecraft:item_display,tag=MenuDisplay,distance=..16] run function exigence:hub/predungeon/menu/display_hover_logic

# If the dungeon is in state 2, check player sensors
execute if score #predungeon_state Temp matches 2 at @n[distance=..10,type=marker,tag=PredungeonMenuNode] \
run function exigence:hub/predungeon/menu/display/player_sensors/check_sensors

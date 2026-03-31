# Load first menu / validation button

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

# Summon main button
execute at @n[type=marker,tag=DoorSlotMarker0,distance=..5] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/pre_button/summon_main_button

# Open slot with pre button in it
execute as @n[type=item_display,tag=DoorSlotFill0,distance=..5] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot
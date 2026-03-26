# Load first menu / validation button

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

# Summon main button
execute at @n[distance=..5,type=marker,tag=DoorSlotMarker0] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/pre_button/summon_main_button

# Open slot with pre button in it
execute as @n[distance=..5,type=item_display,tag=DoorSlotFill0] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot
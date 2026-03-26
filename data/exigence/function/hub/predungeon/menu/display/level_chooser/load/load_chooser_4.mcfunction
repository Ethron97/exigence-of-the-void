# Check if we should load chooser #

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker4] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/level_chooser/load/4/summon_chooser_4
execute as @n[distance=..5,type=item_display,tag=DoorSlotFill4,tag=Closed] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Update visual / selectability state
execute as @n[distance=..5,type=item_display,tag=LevelChooserDisplay,tag=Level4] run function exigence:hub/predungeon/menu/display/level_chooser/load/4/set_selectability
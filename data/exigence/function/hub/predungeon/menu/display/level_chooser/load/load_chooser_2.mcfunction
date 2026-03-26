# Check if we should load chooser #

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker2] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/level_chooser/load/2/summon_chooser_2
execute as @n[distance=..5,type=item_display,tag=DoorSlotFill2,tag=Closed] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Update visual / selectability state
execute as @n[distance=..5,type=item_display,tag=LevelChooserDisplay,tag=Level2] run function exigence:hub/predungeon/menu/display/level_chooser/load/2/set_selectability
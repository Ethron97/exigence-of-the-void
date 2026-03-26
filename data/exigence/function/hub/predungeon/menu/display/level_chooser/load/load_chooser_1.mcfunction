# Check if we should load chooser #

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker1] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/level_chooser/load/1/summon_chooser_1
execute as @n[distance=..5,type=item_display,tag=DoorSlotFill1,tag=Closed] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Update visual / selectability state
execute as @n[distance=..5,type=item_display,tag=LevelChooserDisplay,tag=Level1] run function exigence:hub/predungeon/menu/display/level_chooser/load/1/set_selectability
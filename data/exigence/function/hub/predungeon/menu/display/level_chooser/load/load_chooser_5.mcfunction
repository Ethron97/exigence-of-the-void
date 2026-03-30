# Check if we should load chooser #

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker5] positioned ~ ~ ~0.01 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/5/summon_chooser_bg

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker5] positioned ~ ~ ~-0.02125 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/5/summon_chooser_mg

execute at @n[distance=..5,type=marker,tag=DoorSlotMarker5] positioned ~ ~ ~-0.0525 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/5/summon_chooser_fg

execute as @n[distance=..5,type=item_display,tag=DoorSlotFill5,tag=Closed] \
run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Update visual / selectability state
execute as @n[distance=..5,type=item_display,tag=LevelChooserDisplayFG,tag=Level5] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/5/set_selectability
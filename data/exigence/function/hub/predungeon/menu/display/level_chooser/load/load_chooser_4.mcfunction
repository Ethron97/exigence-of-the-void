# Check if we should load chooser #

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

execute at @n[type=minecraft:marker,tag=DoorSlotMarker4,distance=..5] positioned ~ ~ ~0.01 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/4/summon_chooser_bg

execute at @n[type=minecraft:marker,tag=DoorSlotMarker4,distance=..5] positioned ~ ~ ~-0.02125 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/4/summon_chooser_mg

execute at @n[type=minecraft:marker,tag=DoorSlotMarker4,distance=..5] positioned ~ ~ ~-0.0525 \
run function exigence:hub/predungeon/menu/display/level_chooser/load/4/summon_chooser_fg

execute as @n[type=minecraft:item_display,tag=DoorSlotFill4,tag=Closed,distance=..5] \
run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Update visual / selectability state
execute as @n[type=minecraft:item_display,tag=LevelChooserDisplayFG,tag=Level4,distance=..5] \
run function exigence:hub/predungeon/menu/display/level_chooser/load/4/set_selectability
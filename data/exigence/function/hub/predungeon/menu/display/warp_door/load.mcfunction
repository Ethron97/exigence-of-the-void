# Load the full doorway

## CONSTRAINTS
#   AT predungeon menu node

#====================================================================================================

# Summon frame
execute positioned ~ ~2.5 ~0.875 run function exigence:hub/predungeon/menu/display/warp_door/summon_frame_part
#execute positioned ~ ~2.5 ~0.875 run function exigence:hub/predungeon/menu/display/warp_door/summon_door_base

# Summon door
execute positioned ~ ~2.5 ~0.875 run function exigence:hub/predungeon/menu/display/warp_door/summon_door_squares
execute positioned ~ ~2.5 ~0.875 run function exigence:hub/predungeon/menu/display/warp_door/summon_door_channels
execute positioned ~ ~2.5 ~0.875 run function exigence:hub/predungeon/menu/display/warp_door/summon_door_channels_inv

# Summon square fills
execute at @n[distance=..3,tag=DoorSquares] run function exigence:hub/predungeon/menu/display/warp_door/slot/summon_slot_markers
function exigence:hub/predungeon/menu/display/warp_door/slot/summon_slot_fills

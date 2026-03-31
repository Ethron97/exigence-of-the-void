# Scheduled from warp_the_door

#====================================================================================================

# Kill the door
execute in exigence:hub positioned 0.45 209.00 109.37 run kill @e[type=item_display,tag=PredungeonDisplay,tag=!FramePart,distance=..7]

execute in exigence:hub positioned 0.0 209 104.0 run function exigence:generated/from_schematic/warp_2_warp_c

# Schedule teleporting the player
schedule function exigence:hub/predungeon/menu/display/warp_door/temp_teleport_player 58t
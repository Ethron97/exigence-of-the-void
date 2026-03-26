# Sensors are complete
#   Handle functionality related to the door

## CONSTRAINTS
#   AT predungeon menu node

#====================================================================================================

say Sensors complete

# Set state
scoreboard players set #predungeon_state Temp 3

# Kill menu buttons
kill @e[distance=..5,type=item_display,tag=PredungeonMenuDisplay]
kill @e[distance=..5,type=item_display,tag=PlayerSensorPupil]

# Close door slots
execute as @e[distance=..5,type=item_display,tag=DoorSlotFill,tag=Open] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot

# Glow the door channels
data modify entity @n[distance=..5,type=item_display,tag=DoorChannels] Glowing set value true

# Playsound
playsound block.beacon.activate ui @a ~ ~ ~ 1 1.7

# Summon the warp blocks
execute in exigence:hub positioned 0.0 209 104.0 run function exigence:generated/from_schematic/warp_2_c

# Schedule function to blow out the door
schedule function exigence:hub/predungeon/menu/display/warp_door/warp_the_door 4t

# Update the room related stuff:
# TODO
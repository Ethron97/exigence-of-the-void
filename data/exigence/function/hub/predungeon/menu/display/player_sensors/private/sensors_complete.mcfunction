# Sensors are complete
#   Handle functionality related to the door

## CONSTRAINTS
#   AT predungeon menu node

#====================================================================================================

#say (D3) Sensors complete

# Set state
scoreboard players set predungeon.door_state hub.room_misc 3
# Initialize cancel score (used if player logs out mid load)
scoreboard players set predungeon.cancel_load hub.room_misc 0

# Kill menu buttons
kill @e[type=minecraft:item_display,tag=PredungeonMenuDisplay,distance=..5]
kill @e[type=minecraft:item_display,tag=PlayerSensorPupil,distance=..5]

# Close door slots
execute as @e[type=minecraft:item_display,tag=DoorSlotFill,tag=Open,distance=..5] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot

# Glow the door channels
data modify entity @n[type=minecraft:item_display,tag=DoorChannels,distance=..5] Glowing set value true

# Playsound
playsound block.beacon.activate ui @a ~ ~ ~ 1 1.7

# Summon the warp blocks
execute in exigence:hub positioned 0.0 209 104.0 run function exigence:generated/from_schematic/warp_2_c

# Schedule function to blow out the door
schedule function exigence:hub/predungeon/menu/display/warp_door/warp_the_door 4t

# Protect the predungeon room during load
execute positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/node/protect_room

# Start game loading sequence
function exigence:game/load/start_loading_sequence
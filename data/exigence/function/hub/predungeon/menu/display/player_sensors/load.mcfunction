# Load third menu / player ready sensors

## CONSTRAINTS
#   AT predungeon menu

#====================================================================================================

# Playsound
playsound minecraft:block.ender_chest.open ui @a ~ ~ ~ 1 1

# Update state
scoreboard players set #predungeon_state Temp 2

# Initialize sensor state
scoreboard players set #sensor_state Temp 0

# Open middel slot
execute as @n[type=item_display,tag=DoorSlotFill0,tag=Closed,distance=..5] run function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot

# Summon cancel button
execute at @n[type=marker,tag=DoorSlotMarker0,distance=..5] positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/level_chooser/load/summon_cancel

# Get profile size
#   OUTPUTS: #profile_size Temp
execute as @p[tag=Predungeon,distance=..16] run function exigence:player/get/profile_size
# Chooser X number of random slots to reveal a player sensor, where X is number of members on the profile
execute if score #profile_size Temp matches 1 as @e[type=item_display,tag=DoorSlotFill,tag=!DoorSlotFill0,tag=!Open,distance=..5,sort=random,limit=1] \
run function exigence:hub/predungeon/menu/display/player_sensors/load_player_sensor
execute if score #profile_size Temp matches 2 as @e[type=item_display,tag=DoorSlotFill,tag=!DoorSlotFill0,tag=!Open,distance=..5,sort=random,limit=2] \
run function exigence:hub/predungeon/menu/display/player_sensors/load_player_sensor
execute if score #profile_size Temp matches 3 as @e[type=item_display,tag=DoorSlotFill,tag=!DoorSlotFill0,tag=!Open,distance=..5,sort=random,limit=3] \
run function exigence:hub/predungeon/menu/display/player_sensors/load_player_sensor
execute if score #profile_size Temp matches 4 as @e[type=item_display,tag=DoorSlotFill,tag=!DoorSlotFill0,tag=!Open,distance=..5,sort=random,limit=4] \
run function exigence:hub/predungeon/menu/display/player_sensors/load_player_sensor

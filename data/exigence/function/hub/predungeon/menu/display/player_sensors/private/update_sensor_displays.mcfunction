# Update the glowing ring of sensor displaying

## CONSTRAINTS
#   AT predungeon menu node

## INPUT
#   SCORE #sensor_state Temp

#====================================================================================================

# Update to % based on sensor state

execute at @e[distance=..5,type=item_display,tag=PlayerSensor] run particle dragon_breath ~ ~ ~ 0.1 0.1 0.1 0.03 1

# Update the door channels
execute as @n[distance=..5,type=item_display,tag=DoorChannels] run function exigence:hub/predungeon/menu/display/player_sensors/private/update_channels_inside
execute as @n[distance=..5,type=item_display,tag=DoorChannelsInv] run function exigence:hub/predungeon/menu/display/player_sensors/private/update_channels_outside

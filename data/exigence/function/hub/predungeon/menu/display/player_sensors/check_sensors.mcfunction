# Check if all the sensors are active

## CONSTRAINTS
#   AT predungeon menu node

#====================================================================================================

# If sensor is being looked at, update pupil
execute as @e[distance=..5,type=item_display,tag=PlayerSensor,tag=Hover] at @s run function exigence:hub/predungeon/menu/display/player_sensors/private/update_pupil



scoreboard players operation #old_sensor_state Temp = #sensor_state Temp

scoreboard players set #increase_sensors Temp 1
# Is every PlayerSensor Hovered?
execute if entity @e[distance=..5,type=item_display,tag=PlayerSensor,tag=!Hover,limit=1] run scoreboard players set #increase_sensors Temp 0
# Does every player have a looking at IDID?
execute if entity @a[distance=..16,tag=Predungeon,scores={shop.player.looking_at_idid=0},limit=1] run scoreboard players set #increase_sensors Temp 0

execute if score #increase_sensors Temp matches 1 run scoreboard players add #sensor_state Temp 1
execute if score #increase_sensors Temp matches 0 run scoreboard players set #sensor_state Temp 0

# If the sensor state changed, update the item display
execute unless score #old_sensor_state Temp = #sensor_state Temp run function exigence:hub/predungeon/menu/display/player_sensors/private/update_sensor_displays

# If reached max, run animations
execute if score #sensor_state Temp matches 60 run function exigence:hub/predungeon/menu/display/player_sensors/private/sensors_complete
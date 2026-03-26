# Summon a player sensor here and open the slot

## CONSTRAINTS
#   AS slot marker

#====================================================================================================

say Load player sensor

# Summon sensor
execute at @s positioned ~ ~ ~-0.01 run function exigence:hub/predungeon/menu/display/player_sensors/summon_player_sensor

# Summon pupil part
execute at @s positioned ~ ~ ~-0.0425 run function exigence:hub/predungeon/menu/display/player_sensors/summon_player_sensor_pupil

# Open slot
function exigence:hub/predungeon/menu/display/warp_door/slot/open_slot
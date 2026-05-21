# Tick on all armor stands

## CONSTRAINTS
#   AS/AT armor_stand

#====================================================================================================

# If waypoint
execute if score seconds.cooldown tick_counter matches 18 if entity @s[tag=Waypoint] run function exigence:game/other/waypoint/update_waypoint
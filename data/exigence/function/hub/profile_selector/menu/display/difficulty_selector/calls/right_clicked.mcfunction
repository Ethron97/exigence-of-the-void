# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================

#say Right click profile

execute if entity @s[tag=!ExigentLocked] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/clicked with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=ExigentLocked] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/clicked_exigent_locked with entity @s item.components."minecraft:custom_data"
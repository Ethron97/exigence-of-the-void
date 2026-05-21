# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Right click Difficulty selector

execute if entity @s[tag=!ExigentLocked] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/clicked with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=ExigentLocked] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/clicked_exigent_locked with entity @s item.components."minecraft:custom_data"
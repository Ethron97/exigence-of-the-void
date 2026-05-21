# Called by interaction.call_function_left

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3) Left click settings

function exigence:hub/profile_selector/menu/display/settings/calls/clicked
# with entity @s item.components."minecraft:custom_data"
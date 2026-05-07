# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) Right click profile

function exigence:hub/profile_selector/menu/display/coop_selector/calls/clicked with entity @s item.components."minecraft:custom_data"
# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3) Right click coop invitor

function exigence:hub/profile_selector/menu/display/coop_invitor/calls/clicked with entity @s item.components."minecraft:custom_data"
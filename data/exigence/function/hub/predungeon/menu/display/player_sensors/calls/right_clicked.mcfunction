# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Right click player sensor

execute at @s run function exigence:hub/predungeon/menu/display/player_sensors/calls/clicked
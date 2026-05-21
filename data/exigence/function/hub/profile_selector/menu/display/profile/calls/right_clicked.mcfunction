# Called by interaction.call_function_right

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================
execute at @s as @p[tag=ProfileSelecting,tag=Interacting,distance=..16] unless function exigence:hub/profile_selector/menu/display/profile/calls/validate_click run return fail
#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) Right click profile

function exigence:hub/profile_selector/menu/display/profile/calls/clicked
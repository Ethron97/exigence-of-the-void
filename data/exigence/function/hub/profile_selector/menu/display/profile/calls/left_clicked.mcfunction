# Called by interaction.call_function_left

## CONSTRAINTS:
#   AS item shop display

#====================================================================================================
execute at @s as @p[tag=ProfileSelecting,tag=Interacting,distance=..16] unless function exigence:hub/profile_selector/menu/display/profile/calls/validate_click run return fail
#====================================================================================================

#say (D3) Left click profile

function exigence:hub/profile_selector/menu/display/profile/calls/clicked
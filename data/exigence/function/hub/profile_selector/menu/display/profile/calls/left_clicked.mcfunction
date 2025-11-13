# Called by interaction.call_function_left

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================
execute at @s as @p[distance=..16,tag=ProfileSelecting,tag=Interacting] unless function exigence:hub/profile_selector/menu/display/profile/calls/validate_click run return fail
#=============================================================================================================

#say Left click profile

function exigence:hub/profile_selector/menu/display/profile/calls/clicked
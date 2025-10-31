# Show details

## CONSTRAINTS
#   AS display

#=============================================================================================================

execute at @s positioned ^0.5 ^0.0 ^ run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_name
execute at @s[tag=!Exigent] positioned ^0.5 ^-0.15 ^ run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_lore {line_width:80}
execute at @s[tag=Exigent] positioned ^0.5 ^-0.15 ^ run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_lore {line_width:90}

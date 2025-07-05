# Check for hide generate

## CONSTRAINTS
#   AS player

#=====================================================================================================

# Reset title data based on settings
execute if entity @s[scores={s_hideGenerate=1}] run data modify storage exigence:resource_hud green_generate set value {text:""}
execute if entity @s[scores={s_hideGenerate=1}] run data modify storage exigence:resource_hud red_generate set value {text:""}
execute if entity @s[scores={s_hideGenerate=1}] run data modify storage exigence:resource_hud aqua_generate set value {text:""}
execute if entity @s[scores={s_hideOverflow=1}] run data modify storage exigence:resource_hud green_overflow set value {text:""}
execute if entity @s[scores={s_hideOverflow=1}] run data modify storage exigence:resource_hud red_overflow set value {text:""}
execute if entity @s[scores={s_hideOverflow=1}] run data modify storage exigence:resource_hud aqua_overflow set value {text:""}

# Update title
function exigence:resources/display_generate with storage exigence:resource_hud
title @s title {text:""}

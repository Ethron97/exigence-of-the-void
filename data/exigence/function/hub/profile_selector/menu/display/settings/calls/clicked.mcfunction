# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

#say Clicked settings

# Call subfunction based on setting button type
execute if entity @s[tag=Toggle] run function exigence:hub/profile_selector/menu/display/settings/calls/private/toggle_setting with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=Cycle] run function exigence:hub/profile_selector/menu/display/settings/calls/private/cycle_setting with entity @s item.components."minecraft:custom_data"

# Update text/preview
execute at @s run function exigence:hub/profile_selector/menu/display/settings/calls/private/update_text with entity @s item.components."minecraft:custom_data"
execute at @s[tag=HasPreview] run function exigence:hub/profile_selector/menu/display/settings/calls/private/update_preview with entity @s item.components."minecraft:custom_data"

# Effects
execute at @s run playsound minecraft:ui.button.click ui @p[distance=..16,tag=ProfileSelecting,tag=Interacting] ~ ~ ~ 1 1
#execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

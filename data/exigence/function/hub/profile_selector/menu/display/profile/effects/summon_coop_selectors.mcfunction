# Display difficulty selector buttons

## CONSTRAINTS
#   AS profile display

#=============================================================================================================

say Summon coop selectors

# Clear previous step details
# Show step details
#execute at @s positioned ^ ^0.53 ^0.12 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_step_details {step_text:"Select Type"}
execute at @s run data modify entity @n[distance=..5,type=text_display,tag=StepDetails] text set value {text:"Select Type",color:"yellow"}

# Place the four buttons
execute at @s run function exigence:hub/profile_selector/menu/display/coop_selector/summon_selector_sp with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:hub/profile_selector/menu/display/coop_selector/summon_selector_mp with entity @s item.components."minecraft:custom_data"

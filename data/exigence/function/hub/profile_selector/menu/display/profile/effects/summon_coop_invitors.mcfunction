# Display buttons

## CONSTRAINTS
#   AS profile display

#=============================================================================================================

#say Summon coop invitors

# Update step details
execute at @s run data modify entity @n[distance=..5,type=text_display,tag=StepDetails] text set value {text:"Invite Players",color:"yellow"}

# Place the buttons
execute at @s run function exigence:hub/profile_selector/menu/display/coop_invitor/summon_selector_confirm with entity @s item.components."minecraft:custom_data"
#execute at @s run function exigence:hub/profile_selector/menu/display/coop_invitor/summon_selector_invitor with entity @s item.components."minecraft:custom_data"

# Invite status display (title)
execute at @s positioned ~-0.21 ~1.91 ~ run function exigence:hub/profile_selector/menu/display/coop_invitor/status/summon_status_display_title with entity @s item.components."minecraft:custom_data"
# P# status displays:
execute at @s positioned ~-0.21 ~1.8 ~ run function exigence:hub/profile_selector/menu/display/coop_invitor/status/summon_status_display {num:1}
#   TODO check max player settigs?
execute at @s positioned ~-0.21 ~1.7 ~ run function exigence:hub/profile_selector/menu/display/coop_invitor/status/summon_status_display {num:2}
execute at @s positioned ~-0.21 ~1.6 ~ run function exigence:hub/profile_selector/menu/display/coop_invitor/status/summon_status_display {num:3}

# Display buttons

## CONSTRAINTS
#   AS profile display

#=============================================================================================================

say Summon coop invitors

# Update step details
execute at @s run data modify entity @n[distance=..5,type=text_display,tag=StepDetails] text set value {text:"Invite Players",color:"yellow"}

# Place the buttons
execute at @s run function exigence:hub/profile_selector/menu/display/coop_invitor/summon_selector_confirm with entity @s item.components."minecraft:custom_data"
execute at @s run function exigence:hub/profile_selector/menu/display/coop_invitor/summon_selector_invitor with entity @s item.components."minecraft:custom_data"

# Enable inviting
scoreboard players enable @p[distance=..16,tag=ProfileSelecting,tag=Interacting] SendCoopInvite

# Send initial message explaining the invite sequence
execute at @s as @p[distance=..16,tag=ProfileSelecting] run function exigence:hub/profile_selector/menu/display/coop_invitor/player_message

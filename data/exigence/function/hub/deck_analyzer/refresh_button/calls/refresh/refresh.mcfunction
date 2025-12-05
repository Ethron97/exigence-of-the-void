# Handle refresh

## CONSTRAINTS
#   AS refresh button display

#=============================================================================================================

# Call subfunction to save current chests to deck
execute if score @s hub.entity.profile_selector_id matches 1.. run function exigence:hub/deck_analyzer/refresh_button/calls/refresh/profile_selector with entity @s item.components."minecraft:custom_data"



# analyze_deck
execute at @s as @p[distance=..16,tag=Interacting] run function exigence:deck/process/analyze_deck

# update displays

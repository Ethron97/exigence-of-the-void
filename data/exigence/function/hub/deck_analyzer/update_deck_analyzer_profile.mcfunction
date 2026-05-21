# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AS deck analyzer node

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3 Menu) UPDATE DECK ANALYZER

# Save the profile id for this load
scoreboard players operation @s hub.entity.profile_id = #profile_id Temp
scoreboard players operation @s hub.entity.coop_profile_id = #coop_profile_id Temp
execute at @s as @e[type=minecraft:item_display,tag=RefreshButton,distance=..1,limit=1] run function exigence:hub/deck_analyzer/refresh_button/update_keys
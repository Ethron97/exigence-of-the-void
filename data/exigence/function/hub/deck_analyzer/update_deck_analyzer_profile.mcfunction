# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AS deck analyzer node

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

say UPDATE DECK ANALYZER

# Save the profile id for this load
scoreboard players operation @s hub.entity.profile_id = #profile_id Temp
scoreboard players operation @s hub.entity.coop_profile_id = #coop_profile_id Temp
execute at @s run scoreboard players operation @n[distance=..3,type=item_display,tag=RefreshButton] hub.entity.profile_id = #profile_id Temp
execute at @s run scoreboard players operation @n[distance=..3,type=item_display,tag=RefreshButton] hub.entity.coop_profile_id = #coop_profile_id Temp
execute at @s store result entity @n[distance=..3,type=item_display,tag=RefreshButton] item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get #profile_id Temp
execute at @s store result entity @n[distance=..3,type=item_display,tag=RefreshButton] item.components."minecraft:custom_data".coop_profile_id int 1 run scoreboard players get #coop_profile_id Temp
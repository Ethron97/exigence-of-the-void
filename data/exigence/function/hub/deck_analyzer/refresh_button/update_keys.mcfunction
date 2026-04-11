# Update refresh button FKs

## CONSTRAINTS
#   AS refresh button (item display)

## INPUT
#   SCORE #profile_id Temp
#   SCORE #coop_profile_id Temp

#====================================================================================================

scoreboard players operation @s hub.entity.profile_id = #profile_id Temp
scoreboard players operation @s hub.entity.coop_profile_id = #coop_profile_id Temp
execute store result entity @s item.components."minecraft:custom_data".profile_id int 1 run scoreboard players get #profile_id Temp
execute store result entity @s item.components."minecraft:custom_data".coop_profile_id int 1 run scoreboard players get #coop_profile_id Temp
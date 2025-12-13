# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AS deck analyzer node

## INPUT
#   INT profile_id

#=============================================================================================================

$say UPDATE DECK ANALYZER $(profile_id)

# Save the profile id for this load
$scoreboard players set @s hub.entity.profile_id $(profile_id)
$execute at @s run data modify entity @n[distance=..3,type=item_display,tag=RefreshButton] item.components."minecraft:custom_data".profile_id set value $(profile_id)

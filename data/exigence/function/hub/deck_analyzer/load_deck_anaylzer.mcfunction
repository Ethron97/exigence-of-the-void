# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AS deck analyzer node

## INPUT
#   INT profile_id

#=============================================================================================================

say INTERFACE load deck analyzer

# Save the profile id for this load
$scoreboard players set @s hub.entity.profile_id $(profile_id)
$data modify entity @s item.components."minecraft:custom_data".profile_id set value $(profile_id)

# Summon refresh button
#   We'll just make it a dumb refresh (no status/update detection, just refresh with the currently stored profile id)
execute at @s positioned ~ ~0.5 ~ run function exigence:hub/deck_analyzer/refresh_button/load_refresh_button with entity @s

# Summon text displays
# TODO

# (local tags get removed by the function that calls this)

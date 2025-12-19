# Summons the refresh button and actual displays
# INTERFACE

## CONSTRAINTS
#   AS deck analyzer node

## INPUT
#   INT profile_id

#=============================================================================================================

say INTERFACE load deck analyzer

# Summon temporary marker
#   Used to easily standardize text gaps etc on displays
summon marker ~ ~ ~ {Tags:["Telemarker"]}

# Save the profile id for this load
$scoreboard players set @s hub.entity.profile_id $(profile_id)

# Copy rotation to storage
data modify storage exigence:temp Rotation set from entity @s Rotation
data modify storage exigence:temp color_a set from storage exigence:colors da_tan
#data modify storage exigence:temp color_b set from storage exigence:colors da_brown
data modify storage exigence:temp color_b set value "#DAD2BC"
#data modify storage exigence:temp color_b set value "gold"

# Summon refresh button
#   We'll just make it a dumb refresh (no status/update detection, just refresh with the currently stored profile id)
execute at @s positioned ~ ~0.5 ~ run function exigence:hub/deck_analyzer/refresh_button/load_refresh_button with storage exigence:temp

# Summon text displays
#   Deck analysis title
execute at @s positioned ^ ^4.1 ^ run function exigence:hub/deck_analyzer/display/title with storage exigence:temp

execute at @s positioned ^-2.375 ^2.25 ^ run function exigence:hub/deck_analyzer/display/system_impact/summon with storage exigence:temp
execute at @s positioned ^0.00 ^2.25 ^ run function exigence:hub/deck_analyzer/display/core/summon with storage exigence:temp
execute at @s positioned ^1.25 ^2.0 ^ run function exigence:hub/deck_analyzer/display/effects/summon with storage exigence:temp

execute at @s positioned ^-2.375 ^1.125 ^ run function exigence:hub/deck_analyzer/display/hazard/summon with storage exigence:temp
execute at @s positioned ^-1.375 ^1.125 ^ run function exigence:hub/deck_analyzer/display/deck/summon with storage exigence:temp
execute at @s positioned ^1.0 ^1.125 ^ run function exigence:hub/deck_analyzer/display/resources/summon with storage exigence:temp

# Kill temp marker
kill @n[distance=..10,type=marker,tag=Telemarker]

# (local tags get removed by the function that calls this)
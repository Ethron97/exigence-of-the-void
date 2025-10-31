# Summon new profile selector room node

## CONSTRAINTS
#   AT position

#=============================================================================================================

execute align x align y align z run summon minecraft:marker ~.5 ~ ~.5 {Tags:["NewMarker","Marker","ProfileSelectorNode"]}

# Generate new id
scoreboard players add #sequence hub.profile_selector_id 1
scoreboard players operation @n[distance=..1,tag=NewMarker] hub.profile_selector_id = #sequence hub.profile_selector_id

# Remove local tag
tag @n[distance=..1,tag=NewMarker] remove newMarker
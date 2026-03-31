# Summon new profile selector room node

## CONSTRAINTS
#   AT position

#====================================================================================================

execute align x align y align z run summon minecraft:marker ~.5 ~ ~.5 {Tags:["NewMarker","Marker","ProfileSelectorNode"],CustomName:{text:"Marker | ProfileSelectorNode"}}

# Initialize id
scoreboard players set @n[tag=NewMarker,distance=..1] hub.profile_selector_id 0

# Remove local tag
tag @n[tag=NewMarker,distance=..1] remove NewMarker
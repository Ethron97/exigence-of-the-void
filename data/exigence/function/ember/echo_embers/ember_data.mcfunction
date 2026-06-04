# Add common ember data after summoning item
#   Called by summon ember and summon ember big

## CONSTRAINTS
#   AS ember/bigember item with just_spawned:'true'

#====================================================================================================

tag @s add Ember
tag @s add ETICK
team join Ember @s
scoreboard players operation @s game.entity.object_level = #compare node.property.object_level
data merge entity @s {Age:-32768}

# Get rid of "just spawed" data
data remove entity @s Item.components."minecraft:custom_data".just_spawned

# Add common ember data after summoning item
#   Called by summon ember and summon ember big

## CONSTRAINTS
#   AS ember/bigember item with just_spawned:'true'

#==============================================================================================================

tag @s add Ember
team join Ember @s
scoreboard players operation @s ObjectLevel = #compare ObjectLevel
data merge entity @s {Age:-32768}

# Get rid of "just spawed" data
data remove entity @s Item.components."minecraft:custom_data".just_spawned

# Summon text display from item name

## CONSTRAINTS
#   AS new hover name text display

## INPUT
#   SCORE #input IDID
#   SCORE #input hub.entity.profile_selector_id
#   SCORE #input hub.entity.locker_room_id
#   SCORE #input_a Temp
#   SCORE #input_b Temp

#====================================================================================================

# Remove local tag
tag @s remove NewTextDisplay

# Merge text based on how many lore lines there are
data modify entity @s text set from entity @s item.components."minecraft:custom_name"

scoreboard players operation @s IDID = #input IDID

scoreboard players operation @s hub.entity.profile_selector_id = #input hub.entity.profile_selector_id
scoreboard players operation @s hub.entity.locker_room_id = #input hub.entity.locker_room_id
execute if score #input_a Temp matches 1 run tag @s add ItemShopAnalyzerDisplay
execute if score #input_b Temp matches 1 run tag @s add PredungeonAnalyzerDisplay

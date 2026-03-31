# Ensure the incoming slot id is valid and unique

## CONSTRAINTS
#   AS profile node

## INPUT
#   STORAGE player_id
#   SCORE #compare (profile.node.slot_id)

#====================================================================================================

# If value is not within 1-5, initialize to 1
scoreboard players operation #compare profile.node.slot_id > 1 number

scoreboard players set #temp Temp 0

# If value is duplicated, add 1 and iterate
$execute at @s as @e[type=marker,scores={profile.node.player_id=$(player_id)},tag=ProfileNode,distance=..300] if score @s profile.node.slot_id = #compare profile.node.slot_id run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run scoreboard players add #compare profile.node.slot_id 1
scoreboard players operation #compare profile.node.slot_id %= 6 number
execute if score #temp Temp matches 1 run function exigence:profile/profile_node/new/validate_slot_id with storage exigence:temp

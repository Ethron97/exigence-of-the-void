# Called by try_inform_member_1 (part 1)

## CONSTRAINTS
#   AS player node

## INPUT
#   STR(item id) profile_identifier

#====================================================================================================

#say (D3) Try inform member 2

scoreboard players set #player_found2 Temp 0

scoreboard players operation #compare29 profile.node.player_id = @s profile.node.player_id
# Returns: #player_found2 Temp
execute as @a if score @s career.player_id = #compare29 profile.node.player_id run function exigence:profile/profile_node/remove/inform_member with storage exigence:temp

execute if score #player_found2 Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

data modify storage exigence:temp name set from entity @s equipment.head.components."minecraft:profile".name
function exigence:profile/profile_node/remove/mail_inform_member with storage exigence:temp
scoreboard players add @s player.node.queue.mail 1
scoreboard players add @s player.node.queue 1

# Try to kick players from this player node

## CONSTRAINTS
#   AS player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Try kick player (LOCKER ROOM EXPIRE)

scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

# Is player online?
scoreboard players set #player_found_expire Temp 0

# If yes, kick
#   RETURNS: #player_found_expire Temp
execute as @a[tag=LockerRoom] if score @s career.player_id = #compare profile.node.player_id run return run function exigence:room/locker_room/expire/kick
#----------------------------------------------------------------------------------------------------

# If no, queue
scoreboard players add @s player.node.queue 1
scoreboard players add @s player.node.queue.timeout_locker_room 1

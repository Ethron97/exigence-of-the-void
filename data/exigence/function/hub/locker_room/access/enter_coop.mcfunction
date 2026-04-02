# Handle player entering the room

## CONSTRAINTS
#   AS player
#   AT LockerRoom node

## OUTPUT
#   SCORE #did_coop_enter Temp

#====================================================================================================

say Entering Locker Room (COOP)

tag @s add LockerRoom

execute if entity @n[tag=LockerRoomNode,tag=South,distance=..0.1] at @s run tp @s ~ ~ ~1
execute if entity @n[tag=LockerRoomNode,tag=West,distance=..0.1] at @s run tp @s ~-1 ~ ~
# If further than 5 blocks away, just tp to the node
execute unless entity @s[distance=..5] run tellraw @s [{text:"Joined locker room with co-op member",italic:true,color:"gray"}]
execute unless entity @s[distance=..5] run tp @s ~ ~ ~
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Store ids
scoreboard players operation #compare career.player_id = @s career.player_id
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id

scoreboard players operation @s hub.player.locker_room_id = @n[tag=LockerRoomNode,distance=..1] hub.locker_room_id

# Summon interaction
function exigence:hub/locker_room/node/setup_interaction

# Remove local tag (added from try_enter_coop
tag @n[type=marker,tag=LockerRoomNode,distance=..1] remove TeleportToThisOne
scoreboard players set #did_coop_enter Temp 1

#====================================================================================================
# Assign room ids
scoreboard players operation #compare hub.entity.room_id = @n[tag=LockerRoomNode,distance=..1] hub.entity.room_id
#   PLAYER
scoreboard players operation @s hub.player.room_id = #compare hub.entity.room_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #compare hub.entity.room_id
#   FK (link room node to specific room node)
scoreboard players operation @n[tag=LockerRoomNode,distance=..1] hub.entity.room_id = #compare hub.entity.room_id

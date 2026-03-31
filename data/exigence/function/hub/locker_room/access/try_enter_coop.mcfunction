# Called from try_enter_door if player is a co-op profile

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #did_coop_enter Temp = 1 if co-op room found to follow into

#====================================================================================================

say Try enter coop

scoreboard players set #did_coop_enter Temp 0

scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
# Look for other co-op members in a Locker Room (even if they are offline)
execute in exigence:hub positioned 0 200 0 as @e[type=marker,tag=LockerRoomNode,distance=..100] \
if score @s hub.entity.coop_profile_id = #compare profile.player.coop_profile_id run tag @s add TeleportToThisOne

# Returns #did_coop_enter Temp
#   Local tag gets removed by function
execute in exigence:hub positioned 0 200 0 at @n[distance=..100,type=marker,tag=LockerRoomNode,tag=TeleportToThisOne] run function exigence:hub/locker_room/access/enter_coop

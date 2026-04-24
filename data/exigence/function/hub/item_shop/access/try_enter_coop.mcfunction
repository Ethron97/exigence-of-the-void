# Called from try_enter_door if player is a co-op profile

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #did_coop_enter Temp = 1 if co-op room found to follow into

#====================================================================================================

#say (D3) Try enter coop

scoreboard players set #did_coop_enter Temp 0

scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id

# Look for other co-op members in a Item Shop (even if they are offline)
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=9},tag=RoomNode] \
if score @s hub.entity.coop_profile_id = #compare profile.player.coop_profile_id run scoreboard players set #did_coop_enter Temp 1

execute if score #did_coop_enter Temp matches 1 run function exigence:hub/item_shop/access/enter_coop

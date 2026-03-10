# Called from try_enter_door if player is a co-op profile

## CONSTRAINTS
#   AS player

## OUTPUT
#   SCORE #did_coop_enter Temp = 1 if co-op room found to follow into

#====================================================================================================

say Try enter coop

scoreboard players set #did_coop_enter Temp 0

scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id

# Look for other co-op members in a Item Shop (even if they are offline)
execute in exigence:hub positioned 0 153 0 as @e[distance=..1,type=marker,tag=RoomNode,scores={hub.room.room_type=4}] \
if score @s hub.entity.coop_profile_id = #compare profile.player.coop_profile_id run scoreboard players set #did_coop_enter Temp 1

execute if score #did_coop_enter Temp matches 1 run function exigence:hub/item_shop/access/enter_coop

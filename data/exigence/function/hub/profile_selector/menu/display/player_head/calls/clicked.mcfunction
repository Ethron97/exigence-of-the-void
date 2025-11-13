# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

## INPUT
#   data

#=============================================================================================================

#say clicked head

# Store ahead of time to avoid flip flip
execute store success score #o Temp run execute if entity @s[tag=DisplayingHead]

# Cancel invite button if you click it while its pending?
execute if score #o Temp matches 0 as @p[distance=..16,tag=Interacting,predicate=!exigence:player/sneaking] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/message/pending
execute if score #o Temp matches 0 if entity @p[distance=..16,tag=Interacting,predicate=exigence:player/sneaking] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from/menu with entity @s item.components."minecraft:custom_data"

execute if score #o Temp matches 1 run function exigence:hub/profile_selector/menu/display/player_head/calls/private/click_invite with entity @s item.components."minecraft:custom_data"

# Effects
execute at @s run playsound minecraft:entity.ender_eye.death ui @a ~ ~ ~ 1 1
execute at @s run particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

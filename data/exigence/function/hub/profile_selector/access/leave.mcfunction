# Handle player leaving the room

## CONSTRAINTS
#   AS player

#=============================================================================================================

say Leaving profile selector

tag @s remove ProfileSelecting

tp @s -3.5 195.0 -65.5 -90 0
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
team leave @s

# Handle scores
scoreboard players operation #compare profile.node.profile_id = @s profile.profile_id
scoreboard players operation #compare hub.profile_selector_id = @s hub.player.profile_selector_id
scoreboard players reset @s hub.player.profile_selector_id
# Reset triggers
scoreboard players set @s SendCoopInvite 0
scoreboard players set @s AcceptCoopInvite 0

# Unload room
execute in exigence:hub positioned 999.5 128 6.5 as @e[distance=..200,type=marker,tag=ProfileSelectorNode] if score @s hub.profile_selector_id = #compare hub.profile_selector_id at @s run function exigence:hub/profile_selector/node/unload_room

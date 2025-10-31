# Handle player leaving the room

## CONSTRAINTS
#   AS player

#=============================================================================================================

say Leaving profile selector

tag @s remove ProfileSelecting

# TODO better tp
tp @s ~ ~ ~1
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
team leave @s

# Handle scores
scoreboard players operation #compare profile.node.profile_id = @s profile.profile_id
scoreboard players operation #compare hub.profile_selector_id = @s hub.player.profile_selector_id
scoreboard players reset @s hub.player.profile_selector_id

# Unload room
#   TODO location bind
execute as @e[type=marker,tag=ProfileSelectorNode] if score @s hub.profile_selector_id = #compare hub.profile_selector_id at @s run function exigence:hub/profile_selector/node/unload_room

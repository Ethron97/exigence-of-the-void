# Handle player leaving the room

## CONSTRAINTS
#   AS player

#====================================================================================================

say Kicking from profile selector

tag @s remove ProfileSelecting

execute in exigence:hub run tp @s -3.5 195.0 -65.5 -90 0
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
team leave @s

# Handle scores
scoreboard players operation #compare hub.profile_selector_id = @s hub.player.profile_selector_id
scoreboard players reset @s hub.player.profile_selector_id
# Reset triggers
scoreboard players reset @s AcceptCoopInvite
scoreboard players reset @s DeclineCoopInvite

scoreboard players reset @s hub.player.room_id
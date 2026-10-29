# When leaving or being kicked from a room, teleport nearby items

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id

execute at @s as @e[type=minecraft:item,distance=..128] if score @s hub.entity.profile_id = #compare profile.player.profile_id run tp @s ~ ~ ~
execute if score @s profile.player.coop_profile_id matches 1.. \
at @s as @e[type=minecraft:item,distance=..128] if score @s hub.entity.coop_profile_id = #compare profile.player.coop_profile_id run tp @s ~ ~ ~

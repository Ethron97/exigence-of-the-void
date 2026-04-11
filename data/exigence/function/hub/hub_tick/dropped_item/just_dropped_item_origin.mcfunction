# Called on the origin of an item just dropped

## CONSTRAINTS
#   AS player (item origin)

## OUTPUT
#   SCORE #compare profile.player.profile_id
#   SCORE #compare profile.player.coop_profile_id
#   SCORE #is_admin Temp

#====================================================================================================

data modify storage exigence:temp UUID set from entity @s UUID
scoreboard players operation #compare profile.player.profile_id = @s profile.player.profile_id
scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
execute store success score #is_admin Temp if entity @s[tag=Admin]
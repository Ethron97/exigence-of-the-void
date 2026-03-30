# Called on a coop item

## CONSTRAINTS
#   AS item

#====================================================================================================

data modify storage exigence:temp UUID set from entity @s Owner

# Set Owner to the nearest player with this entities coop profile id
scoreboard players operation #compare profile.player.coop_profile_id = @s hub.entity.coop_profile_id
execute at @s as @a[distance=..5] if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id \
run tag @s add NearbyCoop

execute at @s as @p[distance=..5,tag=NearbyCoop] run data modify storage exigence:temp UUID set from entity @s UUID

execute at @s run tag @a[distance=..5,tag=NearbyCoop] remove NearbyCoop

data modify entity @s Owner set from storage exigence:temp UUID

# Called on a coop item

## CONSTRAINTS
#   AS/AT item

#====================================================================================================

data modify storage exigence:temp UUID set from entity @s Owner

# Set Owner to the nearest player with this entities coop profile id
scoreboard players operation #compare profile.player.coop_profile_id = @s hub.entity.coop_profile_id
execute as @a[distance=..5] if score @s profile.player.coop_profile_id = #compare profile.player.coop_profile_id \
run tag @s add NearbyCoop

# Allow admins to pick up any item
tag @a[tag=Admin,distance=..5] add NearbyCoop

execute as @p[tag=NearbyCoop,distance=..5] run data modify storage exigence:temp UUID set from entity @s UUID

tag @a[tag=NearbyCoop,distance=..5] remove NearbyCoop

data modify entity @s Owner set from storage exigence:temp UUID

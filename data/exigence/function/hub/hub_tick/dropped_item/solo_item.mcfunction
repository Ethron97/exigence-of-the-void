# Called on a solo item

## CONSTRAINTS
#   AS/AT item

#====================================================================================================

data modify storage exigence:temp UUID set from entity @s Owner

# Set Owner to the nearest player with this entities solo profile id
scoreboard players operation #compare profile.player.profile_id = @s hub.entity.profile_id
execute as @a[distance=..5] if score @s profile.player.profile_id = #compare profile.player.profile_id \
run tag @s add NearbySolo

# Allow admins to pick up any item
tag @a[tag=Admin,distance=..5] add NearbySolo

execute as @p[tag=NearbySolo,distance=..5] run data modify storage exigence:temp UUID set from entity @s UUID

tag @a[tag=NearbySolo,distance=..5] remove NearbySolo

data modify entity @s Owner set from storage exigence:temp UUID

# Called on an item that was just dropped

## CONSTRAINTS
#   AS item

#====================================================================================================

# Initial safety, set owner to origin
execute on origin run data modify storage exigence:temp UUID set from entity @s UUID
data modify entity @s Owner set from storage exigence:temp UUID

# Add tag so we don't need to call this again
tag @s add DropChecked

# If origin is in a co-op profile, set score and add tag
execute on origin run scoreboard players operation #compare profile.player.coop_profile_id = @s profile.player.coop_profile_id
execute if score #compare profile.player.coop_profile_id matches 0 run return 0
#-----------------------------------------------------------------------------------------------------
tag @s add CoopItem
scoreboard players operation @s hub.entity.coop_profile_id = #compare profile.player.coop_profile_id

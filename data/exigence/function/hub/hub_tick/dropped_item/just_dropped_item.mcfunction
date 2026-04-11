# Called on an item that was just dropped

## CONSTRAINTS
#   AS item

#====================================================================================================

# Retrieve origin info
execute on origin run function exigence:hub/hub_tick/dropped_item/just_dropped_item_origin
#   SCORE #compare profile.player.profile_id
#   SCORE #compare profile.player.coop_profile_id
#   SCORE #is_admin Temp

# Add tag so we don't need to call this again
tag @s add DropChecked

# Add tag if dropped by admin (and return)
execute if score #is_admin Temp matches 1 run return run tag @s add DroppedByAdmin
#----------------------------------------------------------------------------------------------------

# Initial safety, set owner to origin
data modify entity @s Owner set from storage exigence:temp UUID

# Copy profile id
scoreboard players operation @s hub.entity.profile_id = #compare profile.player.profile_id

# If origin is in a co-op profile, set score and add tag
execute if score #compare profile.player.coop_profile_id matches 0 run return 0
#-----------------------------------------------------------------------------------------------------
tag @s add CoopItem
scoreboard players operation @s hub.entity.coop_profile_id = #compare profile.player.coop_profile_id

# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS item shop display

#=============================================================================================================

# If clicked non-selected profile, switch to
execute at @s if entity @s[tag=ProfileLoaded,tag=!Selected] unless entity @p[distance=..24,tag=Interacting,predicate=exigence:player/sneaking] run function exigence:hub/profile_selector/menu/display/profile/switch_to with entity @s item.components."minecraft:custom_data"

# If clicked non-selected and sneaking, queue delete
data modify storage exigence:profile slot_id set from entity @s item.components."minecraft:custom_data".slot_id
execute at @s if entity @s[tag=ProfileLoaded,tag=!Selected] as @p[distance=..24,tag=Interacting,predicate=exigence:player/sneaking] run function exigence:hub/profile_selector/menu/display/profile/input_delete with storage exigence:profile
execute at @s if entity @s[tag=ProfileLoaded,tag=Selected] as @p[distance=..24,tag=Interacting,predicate=exigence:player/sneaking] run tellraw @s {text:"Cannot delete a selected profile",color:"red"}

# If currently blank, create new profile
execute if entity @s[tag=Blank,tag=!ProfileLoaded,tag=!Selected] run function exigence:hub/profile_selector/menu/display/profile/input_create_new with entity @s item.components."minecraft:custom_data"

# Increase cooldown score for player
scoreboard players add @p[distance=..24,tag=Interacting] hub.player.profile_selector_cooldown 20

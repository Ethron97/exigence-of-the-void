# Confirm deletion of a profile via slot display
#   To be called only by trigger, after a confirmation dialog

## CONSTRAINTS
#   AS player

## INPUT
#   INT player_id
#   INT profile_selector_id
#   INT slot_id

#=============================================================================================================

#say display - confirm delete

# Finish delete, with effects
$execute at @s as @n[distance=..24,tag=SlotDisplay,scores={hub.entity.profile_selector_id=$(profile_selector_id)},nbt={item:{components:{"minecraft:custom_data":{slot_id:"$(slot_id)"}}}}] \
run function exigence:hub/profile_selector/menu/display/profile/confirm_delete_display with entity @s item

# Archive profile data
$execute in exigence:profile_data positioned 8 128 8 as @n[distance=..200,type=marker,tag=ProfileNode,scores={profile.node.player_id=$(player_id),profile.node.slot_id=$(slot_id)}] \
run function exigence:profile/profile_node/remove_profile

# Reset query
scoreboard players reset @s hub.player.query_selector_slot_id

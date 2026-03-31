# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)

## CONSTRAINTS:
#   AS/AT item shop display

#====================================================================================================

say clicked pre button

# Increase cooldown score for player
scoreboard players add @p[tag=Interacting,distance=..16] hub.player.interaction_cooldown 20

# VALIDATE
#   OUTPUTS: #predungeon_validate_total Temp
execute as @n[distance=..5,type=marker,tag=PredungeonMenuNode] at @s run function exigence:hub/predungeon/validate/validate

execute if score #predungeon_validate_total Temp matches 0 run return run playsound minecraft:block.sculk_sensor.clicking ui @a ~ ~ ~ 1 1.4
#----------------------------------------------------------------------------------------------------
# Effects
#particle glow ~ ~ ~0.1 0.1 0.1 0.0 0.001 5

# Close door slot
execute at @s as @n[distance=..5,type=item_display,tag=DoorSlotFill0,tag=Open] run function exigence:hub/predungeon/menu/display/warp_door/slot/close_slot

# Open level chooser menu (schedule)
#execute at @s at @n[distance=..5,type=marker,tag=PredungeonMenuNode] run
schedule function exigence:hub/predungeon/menu/display/level_chooser/schedule_load 20t

# Update state
scoreboard players set #predungeon_state Temp 1

# Close this menu (do last so we retainer executor)
execute at @s run function exigence:hub/predungeon/menu/display/pre_button/calls/hover/remove_hover_details with entity @s item.components."minecraft:custom_data"
kill @s[type=item_display,tag=PreButtonDisplay]

# Save and remove chests
#====================================================================================================
# Get storage from chest contents
#   RETURNS: #chests_saved Temp
execute positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/load/save_chests

# Store data
scoreboard players set #remove_tag Temp 1
#   INPUT: #chests_saved Temp
execute in exigence:profile_data positioned 8 128 8 as @e[type=marker,tag=ProfileNode,distance=..140] \
if score @s profile.node.profile_id = #compare hub.entity.profile_id at @s run function exigence:profile/profile_node/save/try_data_to_chest
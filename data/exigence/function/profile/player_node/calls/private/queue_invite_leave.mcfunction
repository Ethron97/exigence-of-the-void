# Called by player_logged_out

## CONSTRAINTS
#   AS player node

#====================================================================================================

say Queue invite leave

# Set queue score
scoreboard players set @s player.node.queue.invite_leave 1
scoreboard players add @s player.node.queue 1

# Other functionality:
scoreboard players operation #compare hub.player_entity.query_idid = @s hub.player_entity.query_idid
# Find the player head that corresponds to
scoreboard players operation #target player.node.invite_sent_to = @s profile.node.player_id
execute in exigence:hub positioned 999 128 6 as @e[distance=..200,type=item_display,tag=PlayerHeadDisplay] if score @s IDID = #compare hub.player_entity.query_idid \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from/leave with entity @s item.components."minecraft:custom_data"

scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id
# Update the status display for this player
execute in exigence:hub positioned 999 128 6 as @e[distance=..200,type=text_display,tag=StatusDisplay] if score @s hub.entity.player_id = #compare profile.node.player_id \
run function exigence:hub/profile_selector/menu/display/coop_invitor/status/update_left
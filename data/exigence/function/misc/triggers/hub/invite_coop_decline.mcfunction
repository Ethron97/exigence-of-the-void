# Called by player who declines a coop invite, either via tellraw or /trigger

## CONSTRAINTS
#   AS player

#=============================================================================================================

say Decline invite

# Reset trigger score
scoreboard players reset @s DeclineCoopInvite

scoreboard players operation #compare hub.player_entity.query_idid = @s hub.player_entity.query_idid
# Find the player head that corresponds to
scoreboard players operation #target player.node.invite_sent_to = @s career.player_id
execute if entity @s[tag=Invited,tag=!Joined] in exigence:hub positioned 999 128 6 as @e[distance=..300,type=item_display,tag=PlayerHeadDisplay] if score @s IDID = #compare hub.player_entity.query_idid \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from/decline with entity @s item.components."minecraft:custom_data"
execute if entity @s[tag=Invited,tag=Joined] in exigence:hub positioned 999 128 6 as @e[distance=..300,type=item_display,tag=PlayerHeadDisplay] if score @s IDID = #compare hub.player_entity.query_idid \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel_from/leave with entity @s item.components."minecraft:custom_data"

scoreboard players operation #compare career.player_id = @s career.player_id
# Update the status display for this player
execute in exigence:hub positioned 999 128 6 as @e[distance=..300,type=text_display,tag=StatusDisplay] if score @s hub.entity.player_id = #compare career.player_id \
run function exigence:hub/profile_selector/menu/display/coop_invitor/status/update_left

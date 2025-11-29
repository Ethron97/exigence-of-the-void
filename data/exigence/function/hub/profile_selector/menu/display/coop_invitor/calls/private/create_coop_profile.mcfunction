# Send out create commands for a single co-op profiles

## CONSTRAINTS
#   AS player

## INPUT
#   INT player_index (eg P2, P3, P4)

#=============================================================================================================

say CREATE COOP PROFILE FOR MEEEEEEE

tellraw @s [{text:"Co-op profile successfully created",color:green}]
tag @s remove Invited
tag @s remove Joined
scoreboard players reset @s player.node.invited_by
scoreboard players reset @s hub.player_entity.query_idid
scoreboard players reset @s AcceptCoopInvite
scoreboard players reset @s DeclineCoopInvite

# For now, just hit a nearest slot for this player
#   This might be the most efficient way to give the player control, even if it is unintuitive.
execute at @s as @n[distance=..20,type=item_display,tag=SlotDisplay,tag=!ProfileLoaded] \
run function exigence:hub/profile_selector/menu/display/profile/create_new with entity @s item.components."minecraft:custom_data"

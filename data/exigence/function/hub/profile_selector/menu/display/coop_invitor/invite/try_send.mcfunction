# Send invite to player

## CONSTRAINTS
#   AS player who was invite
#   AT player who sent the invite (tag=InviteCoopSend)

#=============================================================================================================

say Try send

# VALIDATE
#=============================================================================================================
# Fail if the player is NOT in the profile selector room
scoreboard players set #temp Temp 0
execute if entity @s[tag=ProfileSelecting] run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 0 run tellraw @p[distance=..0.01,tag=InviteCoopSend] [{selector:"@s",color:gold},{text:" is not in a Profile Selector room",color:"red"}]
execute if score #temp Temp matches 0 run scoreboard players enable @p[distance=..0.01,tag=InviteCoopSend] SendCoopInvite
execute if score #temp Temp matches 0 run return 1

# Make sure they have an open profile slot
scoreboard players set #temp Temp 0
#   Count how many slot profiles (that aren't in Archive). If 5, bad fail.
scoreboard players set #i Temp 0
scoreboard players operation #compare profile.node.player_id = @s career.player_id
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.player_id = #compare profile.node.player_id run scoreboard players add #i Temp 1
execute if score #i Temp matches 5 run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @p[distance=..0.01,tag=InviteCoopSend] [{selector:"@s",color:gold},{text:" does not have an open profile slot",color:"red"}]
execute if score #temp Temp matches 1 run scoreboard players enable @p[distance=..0.01,tag=InviteCoopSend] SendCoopInvite
execute if score #temp Temp matches 1 run return 1

#=============================================================================================================
# Success:
scoreboard players operation @p[distance=..0.01,tag=InviteCoopSend] hub.player.sent_invite_id = #compare SendCoopInvite

execute at @p[distance=..0.01,tag=InviteCoopSend] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/send_invite
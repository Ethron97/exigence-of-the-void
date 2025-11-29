# Send invite to player

## CONSTRAINTS
#   AS player who was invited
#   AT player who sent the invite (tag=SendingInvite)

#=============================================================================================================

say Try send invite

# VALIDATE
#=============================================================================================================
# Fail if the player is NOT in the profile selector room
scoreboard players set #temp Temp 0
execute if entity @s[tag=ProfileSelecting] run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 0 run tellraw @p[distance=..0.01,tag=SendingInvite] [{selector:"@s",color:gold},{text:" is not in a Profile Selector room.",color:"red"}]
execute if score #temp Temp matches 0 run return fail

# Fail if the player has invites disabled
#   I leave this here for reduncancy, but if the setting is diabled then we wont even have the player head show up in the first place.
scoreboard players set #temp Temp 0
execute unless score @s career.settings.allow_coop_invites matches 1 run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @p[distance=..0.01,tag=SendingInvite] [{selector:"@s",color:gold},{text:" has disabled co-op invites",color:"red"}]
execute if score #temp Temp matches 1 run return fail

# Fail if the player is already being invited
scoreboard players set #temp Temp 0
execute if entity @s[tag=Invited] run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @p[distance=..0.01,tag=SendingInvite] [{selector:"@s",color:gold},{text:" already has a pending invite. Please wait.",color:"red"}]
execute if score #temp Temp matches 1 run return fail

# Fail if the sender has already sent an invite
scoreboard players set #temp Temp 0
execute if entity @p[distance=..0.01,tag=SendingInvite,tag=InviteSent] run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @p[distance=..0.01,tag=SendingInvite] [{text:"Your current invitation must be accepted or cancelled before you may send another invite.",color:"red"}]
execute if score #temp Temp matches 1 run return fail

# Fail if the player is themselves currently inviting someone
scoreboard players set #temp Temp 0
execute if entity @s[tag=InviteSent] run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @p[distance=..0.01,tag=SendingInvite] [{selector:"@s",color:gold},{text:" has sent their own pending invite. Please wait.",color:"red"}]
execute if score #temp Temp matches 1 run return fail

# Make sure they have an open profile slot
scoreboard players set #temp Temp 0
#   Count how many slot profiles (that aren't in Archive). If 5, bad fail.
scoreboard players set #i Temp 0
scoreboard players operation #compare profile.node.player_id = @s career.player_id
execute in exigence:profile_data positioned 8 128 8 as @e[distance=..200,type=marker,tag=ProfileNode] if score @s profile.node.player_id = #compare profile.node.player_id run scoreboard players add #i Temp 1
execute if score #i Temp matches 5 run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @p[distance=..0.01,tag=SendingInvite] [{selector:"@s",color:gold},{text:" does not have an open profile slot.",color:"red"}]
execute if score #temp Temp matches 1 run return fail

#=============================================================================================================
# Success:
execute at @p[distance=..0.01,tag=SendingInvite] run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/send_invite

return 1
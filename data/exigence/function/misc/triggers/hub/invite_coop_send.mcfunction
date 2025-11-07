# Called when a player /trigger sends an invite
# Checks if the code used is a valid player, then continues to the next validation step

## CONSTRAINTS
#   AS player

#=============================================================================================================

say Send invite

# Add local tag
tag @s add InviteCoopSend

# Save trigger score for compares
scoreboard players operation #compare SendCoopInvite = @s SendCoopInvite

# Reset trigger score (but don't re-enable trigger yet)
#   If we don't reset this, the function will keep spamming. It is just for detection.
scoreboard players set @s SendCoopInvite 0

# VALIDATE
#=============================================================================================================
# Is valid code format
#scoreboard players set #temp Temp 0
#execute if score @s SendCoopInvite matches 1000..9999 run scoreboard players set #temp Temp 1
#execute if score #temp Temp matches 0 run tellraw @s [{text:"Code must be a 4 digit number",color:"red"}]
#execute if score #temp Temp matches 0 run function exigence:misc/triggers/hub/private/reset_invite_coop_send
#execute if score #temp Temp matches 0 run return 1

# Is valid player
scoreboard players set #temp Temp 0
execute as @a if score @s career.player_id = #compare SendCoopInvite run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 0 run tellraw @s [{text:"No player found with code ",color:"red"},{score:{name:"#compare",objective:"SendCoopInvite"},color:"gold"}]
execute if score #temp Temp matches 0 run function exigence:misc/triggers/hub/private/reset_invite_coop_send
execute if score #temp Temp matches 0 run return 1

# Is not YOUR code
scoreboard players set #temp Temp 0
execute if score @s career.player_id = #compare SendCoopInvite run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @s [{text:"That is your code, silly",color:"red"}]
execute if score #temp Temp matches 1 run function exigence:misc/triggers/hub/private/reset_invite_coop_send
execute if score #temp Temp matches 1 run return 1

# No other pending invites exist for the target player
scoreboard players set #temp Temp 0
execute as @a[tag=!InviteCoopSend] if score @s SendCoopInvite = #compare SendCoopInvite run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 1 run tellraw @s [{text:"There is already a pending invite for that player. Try again in a little bit.",color:"red"}]
execute if score #temp Temp matches 1 run function exigence:misc/triggers/hub/private/reset_invite_coop_send
execute if score #temp Temp matches 1 run return 1
#=============================================================================================================
## VALID PLAYER FOUND

# Try to send the invite:
execute at @s as @a[tag=!InviteCoopSend] if score @s career.player_id = #compare SendCoopInvite run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/try_send

# Remove local tag
tag @s remove InviteCoopSend
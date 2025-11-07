# Cancel an ongoing invitation, if the time expired

## CONSTRAINTS
#   AS player who sent the invite

#=============================================================================================================

# Reset scoreboard
scoreboard players set @s SendCoopInvite 0

# Inform target player that the invite expired
tellraw @s {text:"The co-op invitation has expired",color:'red'}

# Update menu items
execute at @s as @n[distance=..16,type=item_display,tag=CoopInvitorDisplay,tag=Invite] run function exigence:hub/profile_selector/menu/display/coop_invitor/invitor/reset

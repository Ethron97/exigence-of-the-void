# An outgoign invittation was declined

## CONSTRAINTS
#   AS player who sent the invite

#=============================================================================================================

# Reset scoreboard
scoreboard players set @s SendCoopInvite 0

# Inform sender
tellraw @s {text:"The co-op invitation was declined",color:'red'}

# Update menu items
execute at @s as @n[distance=..16,type=item_display,tag=CoopInvitorDisplay,tag=Invite] run function exigence:hub/profile_selector/menu/display/coop_invitor/invitor/reset

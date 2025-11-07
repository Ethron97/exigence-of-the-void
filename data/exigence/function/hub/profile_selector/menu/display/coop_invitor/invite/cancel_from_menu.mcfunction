# Cancel an ongoing invitation, if the time expired

## CONSTRAINTS
#   AS player who sent the invite

#=============================================================================================================

# Inform target player that the invite expired
tellraw @s {text:"Invitation cancelled",color:'red'}

# Update menu items
execute at @s as @n[distance=..16,type=item_display,tag=CoopInvitorDisplay,tag=Invite] run function exigence:hub/profile_selector/menu/display/coop_invitor/invitor/reset

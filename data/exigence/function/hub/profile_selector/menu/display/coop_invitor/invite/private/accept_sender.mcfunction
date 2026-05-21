# Handle functions to do on the player themselves when invite is accepted

## CONSTRAINTS
#   AS player who sent an invite

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D3) Accept invite -  sender

tag @s remove InviteSent
tag @s add InvitedBy

scoreboard players reset @s player.node.invite_sent_to

tellraw @s [{selector:"@a[tag=Inviteded]",color:"gold"},{text:" joined your co-op profile! When you are done sending invites, press the Confirm button.",color:'green'}]
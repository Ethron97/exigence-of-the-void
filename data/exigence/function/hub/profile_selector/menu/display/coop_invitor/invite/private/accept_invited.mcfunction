# Handle functions to do on the player themselves when invite is accepted

## CONSTRAINTS
#   AS player who was invited

#=============================================================================================================

say Accept - invited

tag @s add Joined

tellraw @s [{text:"\nYour items and chests have been saved to your active profile.",color:"gray",italic:true}]
tellraw @s [{text:"You have accepted ",color:"green"},{selector:"@a[tag=InvitedBy]",color:"gold"},{text:"'s invitation! \
Please wait for them to confirm profile creation. If you wish to leave, you may still use ",color:"green"},{text:"/trigger DeclineCoopInvite",color:"dark_green"}]

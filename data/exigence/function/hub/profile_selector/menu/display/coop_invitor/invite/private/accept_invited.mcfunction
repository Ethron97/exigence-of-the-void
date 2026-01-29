# Handle functions to do on the player themselves when invite is accepted

## CONSTRAINTS
#   AS player who was invited

#====================================================================================================

say Accept - invited

tag @s add Joined

tellraw @s [{text:"\nYour items and chests have been saved to your active profile.",color:"gray",italic:true}]
tellraw @s [{text:"You have accepted ",color:"green"},{selector:"@a[tag=InvitedBy]",color:"gold"},{text:"'s invitation! \
Please wait for them to confirm profile creation. If you wish to leave, you may still use ",color:"green"},{text:"/trigger DeclineCoopInvite",color:"dark_green"}]

# Copy score to joined_by (and on player node)
scoreboard players operation @s player.node.joined_by = @s player.node.invited_by
scoreboard players operation #compare career.player_id = @s career.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.joined_by = @s player.node.invited_by
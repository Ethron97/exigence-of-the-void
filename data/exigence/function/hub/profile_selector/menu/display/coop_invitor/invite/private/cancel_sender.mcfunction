# Cancel functions to do on the player themselves
#   Can also be called if a player logs back in with a pending cancel

## CONSTRAINTS
#   AS player who sent an invite

#====================================================================================================

say Cancel invite -  sender

tag @s remove InviteSent
tag @s add CancelledBy

execute if score @s player.node.invite_sent_to matches 1.. run tellraw @s [{text:"Outgoing invitation cancelled.",color:'red'}]
scoreboard players reset @s player.node.invite_sent_to

scoreboard players set #found_player Temp 1

# If that was the last player on the status list, remove tag
scoreboard players operation #compare profile.node.player_id = @s career.player_id
scoreboard players set #temp Temp 0
execute in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s player.node.invited_by = #compare profile.node.player_id run scoreboard players set #temp Temp 1
execute if score #temp Temp matches 0 run tag @a[tag=CancelledBy] remove InvitesSent

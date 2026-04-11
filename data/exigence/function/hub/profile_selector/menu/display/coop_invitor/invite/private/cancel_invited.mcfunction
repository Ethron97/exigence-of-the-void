# Cancel functions to do on the player themselves
#   Can also be called if a player logs back in with a pending cancel

## CONSTRAINTS
#   AS player who was invited

#====================================================================================================

#say (D3) Cancel invite - invited

tag @s remove Invited
tag @s remove Joined

tag @s add TempTagPlayer
scoreboard players operation #compare player.node.invited_by = @s player.node.invited_by
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare player.node.invited_by \
run tellraw @p[tag=TempTagPlayer] [{text:"A co-op invitation from ",color:"red"},{selector:"@s",color:"gold"},{text:" was cancelled.",color:"red"}]
tag @s remove TempTagPlayer

scoreboard players reset @s player.node.invited_by
scoreboard players reset @s player.node.joined_by
scoreboard players reset @s hub.player_entity.query_idid
scoreboard players reset @s AcceptCoopInvite
scoreboard players reset @s DeclineCoopInvite

scoreboard players set #found_player Temp 1
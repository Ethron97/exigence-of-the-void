# Cancel functions to do on the player themselves
#   Can also be called if a player logs back in with a pending cancel

## CONSTRAINTS
#   AS player who sent an invite

#====================================================================================================

#say (D3) Inform sender

tag @s add TempTagPlayer
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #target player.node.invite_sent_to \
run tellraw @p[tag=TempTagPlayer] [{selector:"@s",color:"gold"},{text:" revoked their co-op presence.",color:'red'}]
tag @s remove TempTagPlayer
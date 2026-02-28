# Cancel functions to do on the player themselves
#   Can also be called if a player logs back in with a pending cancel

## CONSTRAINTS
#   AS player who sent an invite

#====================================================================================================

say Inform sender

tag @s add TempTagPlayer
execute in exigence:profile_data positioned 8 3 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #target player.node.invite_sent_to \
run tellraw @p[tag=TempTagPlayer] [{selector:"@s",color:"gold"},{text:" revoked their co-op presence.",color:'red'}]
tag @s remove TempTagPlayer
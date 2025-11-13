# Cancel functions to do on the player themselves
#   Can also be called if a player logs back in with a pending cancel

## CONSTRAINTS
#   AS player who sent an invite

#=============================================================================================================

say Inform asender

tellraw @s [{selector:"@a[tag=Inviteded,limit=1]",color:"gold"},{text:" revoked their co-op presence.",color:'red'}]

# Cancel functions to do on the player themselves
#   Can also be called if a player logs back in with a pending cancel

## CONSTRAINTS
#   AS player who was invited

#=============================================================================================================

say Cancel invite - invited

tag @s remove Invited
tag @s remove Joined

scoreboard players reset @s player.node.invited_by
scoreboard players reset @s hub.player_entity.query_idid
scoreboard players reset @s AcceptCoopInvite
scoreboard players reset @s DeclineCoopInvite

scoreboard players set #found_player Temp 1

tellraw @s [{text:"A co-op invitation from ",color:"red"},{selector:"@a[tag=CancelledBy,limit=1]",color:"gold"},{text:" was cancelled.",color:"red"}]
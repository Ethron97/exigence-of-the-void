# Cancel an ongoing invitation, if the time expired

## CONSTRAINTS
#   AS player who sent the invite

#=============================================================================================================

tag @s add CancellingFromUnhover

tellraw @s {text:"Outgoing invitation cancelled",color:'red'}

# Inform target player that the invite expired
scoreboard players operation #compare hub.player.sent_invite_id = @s hub.player.sent_invite_id
execute as @a if score @s career.player_id = #compare hub.player.sent_invite_id \
run tellraw @s [{text:"A co-op invitation from ",color:"red"},{selector:"@a[tag=CancellingFromUnhover]",color:"gold"},{text:" was cancelled.",color:"red"}]

# Reset score
scoreboard players reset @s hub.player.sent_invite_id

# Reset menu items not necessary since they get removed

tag @s remove CancellingFromUnhover

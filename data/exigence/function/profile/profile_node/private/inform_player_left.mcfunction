# Send message to other players that a player left their coop profile

## CONSTRAINTS
#   AS profile node

#=============================================================================================================

scoreboard players operation #compare career.player_id = @s profile.node.player_id

# Send message
execute as @a[tag=!ConfirmingDelete] if score @s career.player_id = #compare career.player_id \
run tellraw @s [{selector:"@p[tag=ConfirmingDelete]",color:"gold"},{text:" has left one of your co-op profiles",color:"red"}]
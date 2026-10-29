# Try to revive players from this profile node

## CONSTRAINTS
#   AS profile node (tag=Active)

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Check revive player

scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

# Is the player online at all? Revive pend if true and early return either way
execute as @a[tag=ActivePlayer] if score @s career.player_id = #compare profile.node.player_id run return \
run execute if score @s dead matches 2 run scoreboard players set @s game.player.revive_pending 1
#----------------------------------------------------------------------------------------------------
# If they are offline, they dead

# Call next function from player node
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #compare profile.node.player_id \
run function exigence:player/death/private/queue_revive_player

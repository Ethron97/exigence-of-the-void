# Cancel an ongoing invitation when creation process gets cancelled

## CONSTRAINTS
#   AS profile display

#====================================================================================================

say Cancel invite from unhover

scoreboard players operation #compare hub.entity.player_id = @s hub.entity.player_id

# Call the full cancel function from the player node
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare hub.entity.player_id \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel

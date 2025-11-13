# Cancel an ongoing invitation when creation process gets cancelled

## CONSTRAINTS
#   AS player who sent the invite

#=============================================================================================================

say Cancel invite from unhover

scoreboard players operation #compare career.player_id = @s career.player_id

# Call the full cancel function from the player node
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..32,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #compare career.player_id \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/cancel

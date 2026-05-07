# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup bolt

# Close
function exigence:door/vault/bolt/close

# Setup handle
execute positioned -396.0 154.5 -17.5 run function exigence:door/vault/bolt/setup/setup_handle

# Setup pots
execute as @e[x=487,y=-1,z=455,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=bolt,tag=!Crucible] run function exigence:door/vault/bolt/setup/setup_pot_trial_a with entity @s data.custom_data

# Check if any players are entering with this vault key (TODO)

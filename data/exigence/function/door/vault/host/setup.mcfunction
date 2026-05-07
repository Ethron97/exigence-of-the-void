# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup host

# Close
function exigence:door/vault/host/close

# Setup handle
execute positioned -372.5 3.50 -147.0 run function exigence:door/vault/host/setup/setup_handle

# Setup pots
execute as @e[x=456,y=-1,z=455,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=host] run function exigence:door/vault/host/setup/setup_pot_a with entity @s data.custom_data

# Check if any players are entering with this vault key (TODO)

# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup wild

# Close
function exigence:door/vault/wild/close

# Setup handle
execute positioned -403.5 65.5 -236.0 run function exigence:door/vault/wild/setup/setup_handle

# Setup pots
execute as @e[x=471,y=-1,z=471,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=wild] run function exigence:door/vault/wild/setup/setup_pot_a with entity @s data.custom_data

# Check if any players are entering with this vault key (TODO)

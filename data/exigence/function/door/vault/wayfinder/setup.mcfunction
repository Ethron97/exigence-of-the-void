# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup wayfinder

# Close
function exigence:door/vault/wayfinder/close

# Setup handle
execute positioned -327.0 3.5 -186.5 run function exigence:door/vault/wayfinder/setup/setup_handle

# Setup pots
execute as @e[x=457,y=-1,z=471,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=wayfinder] run function exigence:door/vault/wayfinder/setup/setup_pot_a with entity @s data.custom_data

# Check if any players are entering with this vault key (TODO)

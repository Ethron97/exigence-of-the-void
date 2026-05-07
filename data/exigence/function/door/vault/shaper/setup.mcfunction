# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup shaper

# Close
function exigence:door/vault/shaper/close

# Setup handle
execute positioned -321.5 10.5 -249.00 run function exigence:door/vault/shaper/setup/setup_handle

# Setup pots
execute as @e[x=455,y=-1,z=486,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=shaper] run function exigence:door/vault/shaper/setup/setup_pot_a with entity @s data.custom_data

# Check if any players are entering with this vault key (TODO)

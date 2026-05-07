# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup raiser

# Close
function exigence:door/vault/raiser/close

# Setup handle
execute positioned -274.5 7.5 -228.0 run function exigence:door/vault/raiser/setup/setup_handle

# Setup pots
execute as @e[x=455,y=-1,z=503,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=raiser] run function exigence:door/vault/raiser/setup/setup_pot_a with entity @s data.custom_data

# Check if any players are entering with this vault key (TODO)

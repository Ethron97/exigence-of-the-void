# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup ward

# Close
function exigence:door/vault/ward/close

# Setup handle
execute positioned -418.0 67.5 -140.5 run function exigence:door/vault/ward/setup/setup_handle

# Setup pots
execute as @e[x=471,y=-1,z=503,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=ward] run function exigence:door/vault/ward/setup/setup_pot_a with entity @s data.custom_data

# Check if any players are entering with this vault key
scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @a[tag=Predungeon] gold_ingot[custom_data~{vault:'ward'}] 0
execute if score #temp Temp matches 1.. run tag @s add PickedUp
# Setup this vault at game load

## CONSTRAINTS
#   AS vault node

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup eye

# Close
function exigence:door/vault/eye/close

# Setup handle
execute positioned -373.0 154.5 6.5 run function exigence:door/vault/eye/setup/setup_handle

# Setup standard pots
execute as @e[x=487,y=-1,z=487,dx=0,dy=1,dz=0,type=minecraft:marker,tag=PotMarker,tag=eye,tag=!Crucible] run function exigence:door/vault/eye/setup/setup_pot_trial_a with entity @s data.custom_data
# Clear crucible pots
fill -324 153 2 -326 153 10 air replace minecraft:decorated_pot

# Check if any players are entering with this vault key
scoreboard players set #temp Temp 0
execute store result score #temp Temp run clear @a[tag=Predungeon] gold_ingot[custom_data~{vault:'eye'}] 0
execute if score #temp Temp matches 1.. run tag @s add PickedUp
execute if score #temp Temp matches 1.. run tag @s add ETICK
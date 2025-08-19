# Sub function of interaction -> ring_resolve
# Takes care of particles/sounds, and calls further subfunction

## CONSTRAINTS
#   AS bellnode being rung

#================================================================================================================

# DEBUG
#say ring bell ring function

# Remove bell so player is certain when it has cooled down
execute at @s run setblock ~ ~ ~ minecraft:air

# Initial particles
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.3 0.3 0.3 0.1 20

# Play bell ring sound
execute at @s run playsound minecraft:block.bell.use ambient @a ~ ~ ~ 1 1

# Remove interaction
function exigence:bell/node/remove_interaction

# If game is inactive, return here
execute if score @s ObjectLevel matches 10 run function exigence:tutorial/flow/step
execute if score @s ObjectLevel matches 10 run return 1
execute unless data storage exigence:dungeon {is_active:1} run return 1
#========================================================================================================

# Call sub function based on if player has golden axe
execute if entity @a[tag=Ringing,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run function exigence:bell/node/private/ring_smash
execute if entity @a[tag=Ringing,nbt=!{SelectedItem:{id:"minecraft:golden_axe"}}] run function exigence:bell/node/private/ring_standard

# Set bell cooldown
scoreboard players set @s RingBellCooldown 100

# 2/3 chance of generating one Hazard
execute store result score random Random run random value 1..3
execute if score random Random matches 2..3 if score @s ObjectLevel matches 1 run function exigence:hazard/proc_hazard {level:1,amount:1,type:"Bell"}
execute if score random Random matches 2..3 if score @s ObjectLevel matches 2 run function exigence:hazard/proc_hazard {level:2,amount:1,type:"Bell"}
execute if score random Random matches 2..3 if score @s ObjectLevel matches 3 run function exigence:hazard/proc_hazard {level:3,amount:1,type:"Bell"}
execute if score random Random matches 2..3 if score @s ObjectLevel matches 4 run function exigence:hazard/proc_hazard {level:4,amount:1,type:"Bell"}

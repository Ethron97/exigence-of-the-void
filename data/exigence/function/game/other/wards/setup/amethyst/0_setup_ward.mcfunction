# Called from setup_wards if amethyst health 1..

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.wards debug matches 1 if score debug.level debug matches 3.. run say (D3) Setup ward AMETHYST

# Select spawnable crystal
#   OUTPUTS marker with tag NewChosenCrystal
function exigence:game/other/wards/setup/choose_node

# Summon crystal interaction at selected node
#   Removes local tag NewChosenCrystal
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=NewChosenCrystal] at @s run function exigence:game/other/wards/setup/amethyst/1_spawn_interaction

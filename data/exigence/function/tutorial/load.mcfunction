# Responsible for loading all tutorial functionality
#   Called when player first enters, or if they die/reset

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# DEBUG
execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Load tutorial

#execute positioned 64 100 0 run forceload add ~ ~ ~180 ~200
#execute positioned 181 131 -69 run forceload add ~ ~ ~70 ~130

#schedule function exigence:tutorial/load_b 1t
# Turn tutorial on
data modify storage exigence:dungeon tutorial set value 1
scoreboard players set ticks Tutorial 0
# Initilize stepping / messaging / handling
scoreboard players set Fallback Tutorial 1
scoreboard players set Step Tutorial 0
# Load tutorial
execute in exigence:tutorial run function exigence:tutorial/reset
execute in exigence:tutorial run function exigence:tutorial/flow/next_token

execute if score toggle.tutorial debug matches 1 run function exigence:tutorial/admin/toggle_tutorial_debug

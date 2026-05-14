# Responsible for loading all tutorial functionality
#   Called when player first enters, or if they die/reset

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================
execute unless dimension exigence:tutorial run return run say (C) Called tutorial.load without in exigence:tutorial, cancelling
#----------------------------------------------------------------------------------------------------

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Load tutorial

#execute positioned 64 100 0 run forceload add ~ ~ ~180 ~200
#execute positioned 181 131 -69 run forceload add ~ ~ ~70 ~130

#schedule function exigence:tutorial/load_b 1t
# Turn tutorial on
scoreboard players set tut.active hub.tutorial 1
scoreboard players set tut.ticks hub.tutorial 0
# Initilize stepping / messaging / handling
scoreboard players set tut.fallback hub.tutorial 1
scoreboard players set tut.step hub.tutorial 0
# Load tutorial
execute in exigence:tutorial run function exigence:tutorial/reset
execute in exigence:tutorial run function exigence:tutorial/flow/next_token

# Auto turn-off debug, for debug
execute if score toggle.tutorial debug matches 1 unless entity @s[tag=Admin] run function exigence:tutorial/admin/toggle_tutorial_debug

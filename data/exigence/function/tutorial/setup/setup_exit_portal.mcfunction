# Sets up exit portal for final section

## CONSTRAINTS
#   IN exigence:tutorial
#   AT location

#======================================================================================================

# Summon node entity
summon minecraft:marker ~ ~ ~ {Tags:["TutorialExitNode","NewTutorialExitNode"]}

# Perform data setups as subfunction (to reduce @e calls)
execute as @n[distance=..3,type=marker,tag=NewTutorialExitNode] run function exigence:tutorial/setup/setup_exit_portal_2

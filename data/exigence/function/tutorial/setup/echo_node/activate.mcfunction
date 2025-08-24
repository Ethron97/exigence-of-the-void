# Sets up echo node
#   Spawns echo/embers etc

## CONSTRAINTS
#   AS echo node

#=============================================================================================================

scoreboard players set @s EmbersToDrop 10

# Summon echo:
function exigence:ember/node/summon_echo_item

# Spawn compass
function exigence:ember/node/create_echo_compass with storage exigence:echo_selection

# Setblock above echonodes to light
execute at @s run setblock ~ ~1 ~ light

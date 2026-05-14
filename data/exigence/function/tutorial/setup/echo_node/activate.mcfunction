# Sets up echo node
#   Spawns echo/embers etc

## CONSTRAINTS
#   AS echo node

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Activate echo node

scoreboard players set @s node.ember.embers_to_drop 10

# Summon echo:
execute at @s run function exigence:ember/node/summon_echo_item

# Get compass date
function exigence:ember/node/create_echo_compass with storage exigence:echo_selection
# Give compasses to predungeon players
#execute as @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] run function exigence:player/give/compass with storage exigence:compass

# Setblock above echonodes to light
execute at @s run setblock ~ ~1 ~ light

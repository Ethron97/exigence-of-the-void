# One roll for menace by triggering a node

## CONSTRAINTS
#   AS menace node

#===========================================================================================================

# DEBUG
#say Proc menace from node

# 1/3 chance
execute store result score #random Random run random value 1..3
execute if score #random Random matches 1 run function exigence:menace/trigger/from_ {from:'node',amount:1}
#execute if score #random Random matches 1 at @s run function exigence:menace/eyeball/summon_eyeball

# Update game.node.menace.cooldown in ticks
scoreboard players operation @s game.node.menace.cooldown = #MenaceNodeCooldownLimit game.node.menace.cooldown

# Update nearest player scores
scoreboard players add @p[tag=ActivePlayer,scores={dead=0}] profile.data.menace.cr.menace_nodes 1

# Update node scores
scoreboard players add @s node.data.menace.times_triggered 1

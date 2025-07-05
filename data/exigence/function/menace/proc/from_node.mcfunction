# One roll for menace by triggering a node

## CONSTRAINTS
#   AS menace node

#===========================================================================================================

# DEBUG
#say Proc menace from node

# 1/3 chance
execute store result score random Random run random value 1..3
execute if score random Random matches 1 run function exigence:menace/trigger/from_ {from:'Node',amount:1}
#execute if score random Random matches 1 at @s run function exigence:menace/eyeball/summon_eyeball

# Update MenaceNodeCooldown in ticks
scoreboard players set @s MenaceNodeCooldown 200

# Update nearest player scores
scoreboard players add @p[tag=ActivePlayer,scores={dead=0}] cr_menaceNodes 1
scoreboard players add @p[tag=ActivePlayer,scores={dead=0}] t_menaceNodes 1 

# Update node scores
scoreboard players add @s MenaceTriggered 1

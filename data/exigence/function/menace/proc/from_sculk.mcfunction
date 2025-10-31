# One roll for menace by stepping on sculk
#   Called by modifiers\sculk_step

## CONSTRAINTS
#   AS player who stepped on sculk

#===========================================================================================================

# DEBUG
#say Proc menace from sculk

# Always summon an eyeball
#execute at @s run function exigence:menace/eyeball/summon_eyeball

# 2/3 chance
execute store result score #random Random run random value 1..3
execute if score #random Random matches 1..2 run function exigence:menace/trigger/from_ {from:'sculk',amount:1}

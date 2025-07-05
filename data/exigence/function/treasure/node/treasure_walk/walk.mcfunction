# DEBUG particle
#execute at @s run particle minecraft:firework ~ ~ ~

# Pick random direction
execute store result score random TreasureDropWorking run random value 1..4

execute as @s at @s if score random TreasureDropWorking matches 1 unless score WalkIterationBlacklist TreasureDropWorking matches 1 run function exigence:treasure/node/treasure_walk/neg_x
execute as @s at @s if score random TreasureDropWorking matches 2 unless score WalkIterationBlacklist TreasureDropWorking matches 2 run function exigence:treasure/node/treasure_walk/neg_z
execute as @s at @s if score random TreasureDropWorking matches 3 unless score WalkIterationBlacklist TreasureDropWorking matches 3 run function exigence:treasure/node/treasure_walk/pos_x
execute as @s at @s if score random TreasureDropWorking matches 4 unless score WalkIterationBlacklist TreasureDropWorking matches 4 run function exigence:treasure/node/treasure_walk/pos_z

# If iteration < imax, re-call this
scoreboard players add WalkIterationCurrent TreasureDropWorking 1
execute if score WalkIterationCurrent TreasureDropWorking < WalkIterationMax TreasureDropWorking if score WalkIterationFails TreasureDropWorking < WalkIterationFailsMax TreasureDropWorking as @s run function exigence:treasure/node/treasure_walk/walk

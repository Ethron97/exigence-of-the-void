# Pick a random direction to walk 1

## CONSTRAINTS
#   AS/AT treasure markerer

#====================================================================================================

# DEBUG particle
#particle minecraft:firework ~ ~ ~

# Pick random direction
execute store result score #random node.treasure.drop_working run random value 1..4

execute if score #random node.treasure.drop_working matches 1 unless score Walk.Blacklist node.treasure.drop_working matches 1 run function exigence:treasure/node/treasure_walk/neg_x
execute if score #random node.treasure.drop_working matches 2 unless score Walk.Blacklist node.treasure.drop_working matches 2 run function exigence:treasure/node/treasure_walk/neg_z
execute if score #random node.treasure.drop_working matches 3 unless score Walk.Blacklist node.treasure.drop_working matches 3 run function exigence:treasure/node/treasure_walk/pos_x
execute if score #random node.treasure.drop_working matches 4 unless score Walk.Blacklist node.treasure.drop_working matches 4 run function exigence:treasure/node/treasure_walk/pos_z

# If iteration < imax, re-call this
scoreboard players add Walk.Current node.treasure.drop_working 1
execute if score Walk.Current node.treasure.drop_working < Walk.Max node.treasure.drop_working if score Walk.Fails node.treasure.drop_working < Walk.FailsMax node.treasure.drop_working at @s run function exigence:treasure/node/treasure_walk/walk

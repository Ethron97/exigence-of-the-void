# Called from menace heartbeat ticker

## CONSTRAINTS
#   AS HazardNode or VarianceNode

#=============================================================================================================

# Add local tag
#   This gets removed by subfunction so we don't doublecall
tag @s add BeatSculkHeart

# Call the other function based on current score
#   If -2, call a
execute if entity @s[tag=BeatSculkHeart] if score @s game.node.node_state matches -2 run function exigence:hazard/node/heartbeat_sculk/a
#   If not -2, call b
execute if entity @s[tag=BeatSculkHeart] unless score @s game.node.node_state matches -2 run function exigence:hazard/node/heartbeat_sculk/b

# Reset echo node data/tags/scores

## CONSTRAINTS
#   AS EchoNode

#==========================================================================================================

team join Echo @s
tag @s remove Active
scoreboard players set @s EmbersToDrop 0
scoreboard players set @s EchoID 0
tag @s remove ChosenEchoNode
waypoint modify @s style reset
attribute @s waypoint_transmit_range base set 0

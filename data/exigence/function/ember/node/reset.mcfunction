# Reset echo node data/tags/scores

## CONSTRAINTS
#   AS EchoNode

#==========================================================================================================

team join Echo @s
tag @s remove Active
scoreboard players set @s node.ember.embers_to_drop 0
scoreboard players reset @s game.node.echo.id
tag @s remove ChosenEchoNode
waypoint modify @s style reset
attribute @s waypoint_transmit_range base set 0

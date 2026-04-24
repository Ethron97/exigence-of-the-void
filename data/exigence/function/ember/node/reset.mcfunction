# Called before selecing chosen echo node
# Reset echo node data/tags/scores

## CONSTRAINTS
#   AS EchoNode

#====================================================================================================

# Team
execute at @s run team join Echo @n[type=block_display,tag=EchoDebugDisplay,distance=..3]

# Tags
tag @s remove Active
tag @s remove ChosenEchoNode

# Setblock above echonodes clear light
fill ~ ~1 ~ ~ ~1 ~ air replace light

# Scores
scoreboard players set @s node.ember.embers_to_drop 0
scoreboard players reset @s game.node.echo.id

# Waypoint
waypoint modify @s style reset
attribute @s waypoint_transmit_range base set 0

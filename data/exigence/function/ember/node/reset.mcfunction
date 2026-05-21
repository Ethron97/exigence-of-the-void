# Called before selecing chosen echo node
# Reset echo node data/tags/scores

## CONSTRAINTS
#   AS EchoNode

#====================================================================================================

execute if score toggle.echo debug matches 1 if score debug.level debug matches 4.. run say (D4 Echo) Reset

# Team
execute at @s run team join Echo @n[type=block_display,tag=EchoDebugDisplay,distance=..3]

# Tags
tag @s remove Active
tag @s remove ChosenEchoNode
tag @s remove PhantomNode

# Setblock above echonodes clear light
fill ~ ~1 ~ ~ ~1 ~ air replace light

# Scores
scoreboard players set @s node.ember.embers_to_drop 0
scoreboard players reset @s game.node.echo.id

# Add PhantomNode tag if "active" (on active level)
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s add PhantomNode
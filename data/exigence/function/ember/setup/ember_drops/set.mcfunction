# Set base ember drops from echo difficulty

## CONSTRAINTS
#   AS EchoNode

#====================================================================================================

# Level 0
scoreboard players set @s[scores={node.property.echo.difficulty=1}] node.echo.base_ember_drop 5
execute if score @s node.property.object_level matches 1 run return run function exigence:ember/setup/ember_drops/1
execute if score @s node.property.object_level matches 2 run return run function exigence:ember/setup/ember_drops/2
execute if score @s node.property.object_level matches 3 run return run function exigence:ember/setup/ember_drops/3
execute if score @s node.property.object_level matches 4 run return run function exigence:ember/setup/ember_drops/4
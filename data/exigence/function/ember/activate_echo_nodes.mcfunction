# Controller function to generate echo nodes

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run tellraw @a [{text:"Must actvate echo nodes in overworld",color:"red"}]
#----------------------------------------------------------------------------------------------------

execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3) Activate echo nodes

# Reset active echo nodes tag/team
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=EchoNode] run function exigence:ember/node/reset

# Reset compass id tracker
scoreboard players set #next game.node.echo.id 0

# Update base echo count based on target level (1 by default)
#   Cards may also add to these scores
execute if score game.difficulty game.state matches 0..1 run scoreboard players add echos.level_1 game.dungeon.echo 1
execute if score game.difficulty game.state matches 2 run scoreboard players add echos.level_2 game.dungeon.echo 1
execute if score game.difficulty game.state matches 3 run scoreboard players add echos.level_3 game.dungeon.echo 1
execute if score game.difficulty game.state matches 4 run scoreboard players add echos.level_4 game.dungeon.echo 1

# Cap echos based on difficulty (so you can't spawn echos from dissonance if that level isn't active)
execute unless score game.difficulty game.state matches 2.. run scoreboard players set echos.level_2 game.dungeon.echo 0
execute unless score game.difficulty game.state matches 3.. run scoreboard players set echos.level_3 game.dungeon.echo 0
execute unless score game.difficulty game.state matches 4.. run scoreboard players set echos.level_4 game.dungeon.echo 0

# Move scores to data
execute store result storage exigence:echo_selection Level1Echos int 1 run scoreboard players get echos.level_1 game.dungeon.echo
execute store result storage exigence:echo_selection Level2Echos int 1 run scoreboard players get echos.level_2 game.dungeon.echo
execute store result storage exigence:echo_selection Level3Echos int 1 run scoreboard players get echos.level_3 game.dungeon.echo
execute store result storage exigence:echo_selection Level4Echos int 1 run scoreboard players get echos.level_4 game.dungeon.echo

# Choose nodes
#   Returns set of nodes from any level with the tag ChosenEchoNode
function exigence:ember/private/choose_echo_nodes_a with storage exigence:echo_selection

# Activate chosen nodes (in order)
#   I think the order is nice for compass position in inventory..? But why else?
#   So we can get rid of this restraint once we switch to the bar-locator
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=1},tag=ChosenEchoNode] run function exigence:ember/node/activate
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=2},tag=ChosenEchoNode] run function exigence:ember/node/activate
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=3},tag=ChosenEchoNode] run function exigence:ember/node/activate
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=4},tag=ChosenEchoNode] run function exigence:ember/node/activate

# Chosen echo functions
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=ChosenEchoNode] at @s run function exigence:ember/node/chosen

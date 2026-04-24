# Execute bounded difficulty to select a single echo at a time

## INPUT
#   chosen_difficulty
#   level

#====================================================================================================

# DEBUG
#$say Choosing difficulty $(chosen_difficulty) $(level0

$execute if score game.difficulty game.state matches 1.. run tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.echo.difficulty=$(chosen_difficulty),node.property.object_level=$(level)},tag=EchoNode,sort=random,limit=1] add ChosenEchoNode
execute if score game.difficulty game.state matches 0 run tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.echo.difficulty=1},tag=EchoNode,tag=L0,sort=random,limit=1] add ChosenEchoNode

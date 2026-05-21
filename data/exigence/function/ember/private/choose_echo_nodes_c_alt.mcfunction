# Execute bounded difficulty to select a single echo at a time

## INPUT
#   min_difficulty
#   max_difficulty
#   level

#====================================================================================================

# DEBUG
$execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3 Echo) Choosing difficulty $(min_difficulty)..$(max_difficulty)

# We are safe even if min = max, because the range on SELECTOR does not need to be 2, just for the /Random function.
$tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.echo.difficulty=$(min_difficulty)..$(max_difficulty),node.property.object_level=$(level)},tag=EchoNode,tag=!ChosenEchoNode,sort=random,limit=1] add NewChosenEchoNode
#execute if score game.difficulty game.state matches 0 run tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.echo.difficulty=1},tag=EchoNode,tag=!ChosenEchoNode,tag=L0,sort=random,limit=1] add NewChosenEchoNode

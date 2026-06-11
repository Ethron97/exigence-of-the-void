# Called by game_on after the rest of everything is processed and stuff

# Create cache at a random echo node on level 4, difficulty 2+
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.echo.difficulty=42..},tag=EchoNode,tag=!ChosenEchoNode,sort=random,limit=1] at @s run function exigence:cards/void_cache/private/create_cache

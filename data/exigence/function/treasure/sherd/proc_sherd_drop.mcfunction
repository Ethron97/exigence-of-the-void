# Randomize research fragment drops

#====================================================================================================

execute if score toggle.treasure debug matches 1 if score debug.level debug matches 3.. run say (D3) dropping sherd

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 2.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 3.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}

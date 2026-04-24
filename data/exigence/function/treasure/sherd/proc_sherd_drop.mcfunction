#say dropping sherd

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 1.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=1},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}


execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 2.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 2.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}


execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 3.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 3.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 3.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}


execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}
execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 if score game.difficulty game.state matches 4.. as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=TreasureNode,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:treasure/sherd/summon_sherd"}

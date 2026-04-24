# Spawns single ardor flame for this beacon

# AS BeaconNode
# IF ardor_flame_type = 0

#====================================================================================================

#say (D3) Spawn flame

## SWITCH
execute if score @s node.property.object_level matches 1 run return run execute as @e[type=minecraft:armor_stand,scores={node.property.object_level=1},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s node.property.object_level matches 2 run return run execute as @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s node.property.object_level matches 3 run return run execute as @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s node.property.object_level matches 4 run return run execute as @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}

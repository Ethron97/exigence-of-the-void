# Spawns single ardor flame for this beacon

# AS BeaconNode
# IF ardor_flame_type = 0

#====================================================================================================

#say (D3) Spawn flame

## SWITCH
execute if score @s node.property.object_level matches 1 run return run execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s node.property.object_level matches 2 run return run execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s node.property.object_level matches 3 run return run execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s node.property.object_level matches 4 run return run execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}

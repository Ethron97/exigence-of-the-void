# Called from ../drop_resonance

## CONSTRAINTS
#   AS selected crystal interaction to drop

#====================================================================================================

## SWITCH
execute if entity @s[tag=Emerald] run return run execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_emerald"}
execute if entity @s[tag=Sapphire] run return run execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_sapphire"}
execute if entity @s[tag=Ruby] run return run execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_ruby"}
execute if entity @s[tag=Topaz] run return run execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_topaz"}
execute if entity @s[tag=Amethyst] run return run execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=TreasureNode,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:game/other/wards/shard/summon_amethyst"}

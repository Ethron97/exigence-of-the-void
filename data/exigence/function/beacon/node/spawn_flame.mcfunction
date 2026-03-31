# Spawns single ardor flame for this beacon

# AS BeaconNode
# IF ardor_flame_type = 0

#====================================================================================================

#say SPawn flame

execute if score @s ObjectLevel matches 1 run execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=1},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s ObjectLevel matches 2 run execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=2},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s ObjectLevel matches 3 run execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=3},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}
execute if score @s ObjectLevel matches 4 run execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=4},tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_flame"}

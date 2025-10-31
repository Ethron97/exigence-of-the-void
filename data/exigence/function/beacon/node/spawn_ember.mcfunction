# Spawns single ardor ember for this beacon

# AS BeaconNode
# IF ardor_flame_type = 1

#=========================================================================================================

#say Spawn ember

execute if score @s ObjectLevel matches 1 run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1,scores={ObjectLevel=1}] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_ember"}
execute if score @s ObjectLevel matches 2 run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1,scores={ObjectLevel=2}] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_ember"}
execute if score @s ObjectLevel matches 3 run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1,scores={ObjectLevel=3}] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_ember"}
execute if score @s ObjectLevel matches 4 run execute as @e[type=minecraft:armor_stand,tag=TreasureNode,tag=!KeyBlacklist,tag=!FlameBlacklist,tag=Active,sort=random,limit=1,scores={ObjectLevel=4}] run function exigence:treasure/node/drop_treasure {priority:0,function:"exigence:beacon/summon_ardor_ember"}

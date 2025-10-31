# Triggered by game on after deck is processed and beacons are activated

#   One flame per beacon if type 0
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:0} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={game.node.node_state=0}] run function exigence:beacon/node/spawn_flame
#   One embers per beacon if type 1
execute if score Difficulty DungeonRun matches 5 if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[type=minecraft:armor_stand,tag=BeaconNode,scores={game.node.node_state=0}] run function exigence:beacon/node/spawn_ember


# Called by game load sequence, spawns ardor

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Reset scores
scoreboard players set beacon.1 game.story.beacons 0
scoreboard players set beacon.2 game.story.beacons 0
scoreboard players set beacon.3 game.story.beacons 0
scoreboard players set beacon.4 game.story.beacons 0

# If difficulty 5, drop Ardor Flames/Embers
#   One flame if type 0
execute if data storage exigence:dungeon_settings {ardor_flame_type:0} run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_flame
#   Three embers if type 1
execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember
execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember
execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember
execute if data storage exigence:dungeon_settings {ardor_flame_type:1} run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={game.node.node_state=0},tag=BeaconNode] run function exigence:beacon/node/spawn_ember

# If LBAL (led by ancient light): call it now
execute if score mod.led_by_ancient_light game.modifiers matches 1.. run function exigence:cards/led_by_ancient_light/trigger
execute if score mod.led_by_ancient_light game.modifiers matches 2.. run function exigence:cards/led_by_ancient_light/trigger
execute if score mod.led_by_ancient_light game.modifiers matches 3.. run function exigence:cards/led_by_ancient_light/trigger
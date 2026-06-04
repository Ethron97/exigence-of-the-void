# Pings the closest Flame
# Calls every second, or when game.player.sound_ping.flame_cooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#====================================================================================================

# Make sure local tag is cleared
tag @e[type=minecraft:item,tag=ClosestArdorFlame,distance=..96] remove ClosestArdorFlame

# Tag closest Flame on same level
execute at @s[scores={game.player.active_level=1}] run tag @n[type=minecraft:item,scores={game.entity.object_level=1},tag=Ardor,distance=..96] add ClosestArdorFlame
execute at @s[scores={game.player.active_level=2}] run tag @n[type=minecraft:item,scores={game.entity.object_level=2},tag=Ardor,distance=..96] add ClosestArdorFlame
execute at @s[scores={game.player.active_level=3}] run tag @n[type=minecraft:item,scores={game.entity.object_level=3},tag=Ardor,distance=..96] add ClosestArdorFlame
execute at @s[scores={game.player.active_level=4}] run tag @n[type=minecraft:item,scores={game.entity.object_level=4},tag=Ardor,distance=..96] add ClosestArdorFlame

# If no Flame shard on same level, return
#execute unless entity @e[type=minecraft:item,tag=ClosestArdorFlame] run say No Flame on same level found
execute unless entity @e[type=minecraft:item,tag=ClosestArdorFlame,distance=..96,limit=1] run return 1
#----------------------------------------------------------------------------------------------------

# Old distance
scoreboard players operation #old_distance game.player.sound_ping.flame_distance = @s game.player.sound_ping.flame_distance

# Determine distance bracket
function exigence:player/effects/detection/flame/get_distance_bracket

# If ping distance is 10, no pings
execute if score @s game.player.sound_ping.flame_distance matches 10 run return 1
#----------------------------------------------------------------------------------------------------

# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. game.player.sound_ping.flame_cooldown is ..0
# So return if both are not true
#execute if score @s game.player.sound_ping.flame_cooldown matches 1.. if score #old_distance game.player.sound_ping.flame_distance <= @s game.player.sound_ping.flame_distance run say No ping
execute if score @s game.player.sound_ping.flame_cooldown matches 1.. if score #old_distance game.player.sound_ping.flame_distance <= @s game.player.sound_ping.flame_distance run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Ping flame

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:entity.evoker.cast_spell
# Call based on determined distance bracket
execute if score @s game.player.sound_ping.flame_distance matches -2 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=..8] run function exigence:player/effects/detection/flame/-2
execute if score @s game.player.sound_ping.flame_distance matches -1 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=8..16] run function exigence:player/effects/detection/flame/-1
execute if score @s game.player.sound_ping.flame_distance matches -0 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=16..32] run function exigence:player/effects/detection/flame/0
execute if score @s game.player.sound_ping.flame_distance matches 1 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=32..48] run function exigence:player/effects/detection/flame/1
execute if score @s game.player.sound_ping.flame_distance matches 2 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=48..64] run function exigence:player/effects/detection/flame/2
execute if score @s game.player.sound_ping.flame_distance matches 3 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=64..80] run function exigence:player/effects/detection/flame/3
execute if score @s game.player.sound_ping.flame_distance matches 4 at @e[type=minecraft:item,tag=ClosestArdorFlame,distance=80..96] run function exigence:player/effects/detection/flame/4

# Call vibration
tag @s add GetDistance
execute if score @s game.player.effects.detection matches 1.. as @e[type=minecraft:item,tag=ClosestArdorFlame,distance=..96] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Enable waypoint
execute if score @s game.player.effects.detection matches 1.. as @e[type=minecraft:item,tag=ClosestArdorFlame,distance=..96] run scoreboard players set @s game.waypoint.revealed_ticks 100

# Remove local tag
tag @e[type=minecraft:item,tag=ClosestArdorFlame,distance=..96] remove ClosestArdorFlame

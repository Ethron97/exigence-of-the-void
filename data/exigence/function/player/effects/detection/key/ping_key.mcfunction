# Pings the closest Key
# Calls every second, or when PingKeyCooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#========================================================================================================

# Make sure local tag is cleared
tag @e[type=item,tag=ClosestLevelKey] remove ClosestLevelKey

# Tag closest Key on same level
execute at @s[scores={ActiveLevel=1}] run tag @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=1},sort=nearest,limit=1] add ClosestLevelKey
execute at @s[scores={ActiveLevel=2}] run tag @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=2},sort=nearest,limit=1] add ClosestLevelKey
execute at @s[scores={ActiveLevel=3}] run tag @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=3},sort=nearest,limit=1] add ClosestLevelKey
execute at @s[scores={ActiveLevel=4}] run tag @e[type=minecraft:item,tag=LevelKey,scores={ObjectLevel=4},sort=nearest,limit=1] add ClosestLevelKey

# If no Key shard on same level, return
#execute unless entity @e[type=item,tag=ClosestLevelKey] run say No Key on same level found
execute unless entity @e[type=item,tag=ClosestLevelKey] run return 1

# Old distance
scoreboard players operation #old_distance PingKeyDistance = @s PingKeyDistance

# Determine distance bracket
scoreboard players set @s PingKeyDistance 10
execute at @e[distance=..8,type=item,tag=ClosestLevelKey] run scoreboard players set @s PingKeyDistance -2
execute at @e[distance=8..16,type=item,tag=ClosestLevelKey] run scoreboard players set @s PingKeyDistance -1
execute at @e[distance=16..32,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. run scoreboard players set @s PingKeyDistance 0
execute at @e[distance=32..48,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 1.. run scoreboard players set @s PingKeyDistance 1
execute at @e[distance=48..64,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 2.. run scoreboard players set @s PingKeyDistance 2
execute at @e[distance=64..80,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 3.. run scoreboard players set @s PingKeyDistance 3
execute at @e[distance=80..96,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 4.. run scoreboard players set @s PingKeyDistance 4

# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. PingKeyCooldown is ..0
# So return if both are not true
#execute if score @s PingKeyCooldown matches 1.. if score #old_distance PingKeyDistance <= @s PingKeyDistance run say No ping
execute if score @s PingKeyCooldown matches 1.. if score #old_distance PingKeyDistance <= @s PingKeyDistance run return 1

# If PingKeyCooldown is 0, default to 10
#   This triggers if: Key is on the same level but player is not close enough to ping (if player is close enough to ping this gets overwritten by the subcalls below)
execute if score @s PingKeyCooldown matches 0 run scoreboard players set @s PingKeyCooldown 10

# If ping Key distance is 10, no pings
execute if score @s PingKeyDistance matches 10 run return 1

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:block.trial_spawner.detect_player
# Determine bracket
execute at @e[distance=..8,type=item,tag=ClosestLevelKey] run function exigence:player/effects/detection/key/-2
execute at @e[distance=8..16,type=item,tag=ClosestLevelKey] run function exigence:player/effects/detection/key/-1
execute at @e[distance=16..32,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. run function exigence:player/effects/detection/key/0
execute at @e[distance=32..48,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 1.. run function exigence:player/effects/detection/key/1
execute at @e[distance=48..64,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 2.. run function exigence:player/effects/detection/key/2
execute at @e[distance=64..80,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 3.. run function exigence:player/effects/detection/key/3
execute at @e[distance=80..96,type=item,tag=ClosestLevelKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 4.. run function exigence:player/effects/detection/key/4

# Call vibration
tag @s add GetDistance
execute if score @s effect_detection matches 1.. as @e[type=item,tag=ClosestLevelKey] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Remove local tag
tag @e[type=item,tag=ClosestLevelKey] remove ClosestLevelKey

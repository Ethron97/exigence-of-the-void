# Pings the closest echo
# Calls every second, or when PingEchoCooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#========================================================================================================

# Make sure local tag is cleared
tag @e[type=item,tag=ClosestEchoShard] remove ClosestEchoShard

# Tag closest echo on same level
execute at @s[scores={ActiveLevel=1}] run tag @e[type=minecraft:item,tag=EchoShard,scores={ObjectLevel=1},sort=nearest,limit=1] add ClosestEchoShard
execute at @s[scores={ActiveLevel=2}] run tag @e[type=minecraft:item,tag=EchoShard,scores={ObjectLevel=2},sort=nearest,limit=1] add ClosestEchoShard
execute at @s[scores={ActiveLevel=3}] run tag @e[type=minecraft:item,tag=EchoShard,scores={ObjectLevel=3},sort=nearest,limit=1] add ClosestEchoShard
execute at @s[scores={ActiveLevel=4}] run tag @e[type=minecraft:item,tag=EchoShard,scores={ObjectLevel=4},sort=nearest,limit=1] add ClosestEchoShard
execute at @s[tag=Tutorial] run tag @e[type=minecraft:item,tag=EchoShard,scores={ObjectLevel=10},sort=nearest,limit=1] add ClosestEchoShard

# If no echo shard on same level, return
#execute unless entity @e[type=item,tag=ClosestEchoShard] run say No echo on same level found
execute unless entity @e[type=item,tag=ClosestEchoShard] run return 1

# Old distance
scoreboard players operation #old_distance PingEchoDistance = @s PingEchoDistance

# Determine distance bracket
scoreboard players set @s PingEchoDistance 10
execute at @e[distance=..8,type=item,tag=ClosestEchoShard] run scoreboard players set @s PingEchoDistance -2
execute at @e[distance=8..16,type=item,tag=ClosestEchoShard] run scoreboard players set @s PingEchoDistance -1
execute at @e[distance=16..32,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. run scoreboard players set @s PingEchoDistance 0
execute at @e[distance=32..48,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 1.. run scoreboard players set @s PingEchoDistance 1
execute at @e[distance=48..64,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 2.. run scoreboard players set @s PingEchoDistance 2
execute at @e[distance=64..80,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 3.. run scoreboard players set @s PingEchoDistance 3
execute at @e[distance=80..96,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 4.. run scoreboard players set @s PingEchoDistance 4

# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. PingEchoCooldown is ..0
# So return if both are not true
#execute if score @s PingEchoCooldown matches 1.. if score #old_distance PingEchoDistance <= @s PingEchoDistance run say No ping
execute if score @s PingEchoCooldown matches 1.. if score #old_distance PingEchoDistance <= @s PingEchoDistance run return 1

# If pingechocooldown is 0, default to 10
#   This triggers if: Echo is on the same level but player is not close enough to ping (if player is close enough to ping this gets overwritten by the subcalls below)
execute if score @s PingEchoCooldown matches 0 run scoreboard players set @s PingEchoCooldown 10

# If ping echo distance is 10, no pings
execute if score @s PingEchoDistance matches 10 run return 1

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:block.amethyst_block.resonate
# Determine bracket
execute at @e[distance=..8,type=item,tag=ClosestEchoShard] run function exigence:player/effects/detection/echo/-2
execute at @e[distance=8..16,type=item,tag=ClosestEchoShard] run function exigence:player/effects/detection/echo/-1
execute at @e[distance=16..32,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. run function exigence:player/effects/detection/echo/0
execute at @e[distance=32..48,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 1.. run function exigence:player/effects/detection/echo/1
execute at @e[distance=48..64,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 2.. run function exigence:player/effects/detection/echo/2
execute at @e[distance=64..80,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 3.. run function exigence:player/effects/detection/echo/3
execute at @e[distance=80..96,type=item,tag=ClosestEchoShard] if score @s effect_detection matches 1.. if score @s mod_Detection matches 4.. run function exigence:player/effects/detection/echo/4

# Call vibration
tag @s add GetDistance
execute if score @s effect_detection matches 1.. as @e[type=item,tag=ClosestEchoShard] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Remove local tag
tag @e[type=item,tag=ClosestEchoShard] remove ClosestEchoShard

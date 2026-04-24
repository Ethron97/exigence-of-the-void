# Pings the closest echo
# Calls every second, or when game.player.sound_ping.echo_cooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#====================================================================================================

# Make sure local tag is cleared
tag @e[type=minecraft:item,tag=ClosestEchoShard] remove ClosestEchoShard

# Tag closest echo on same level
execute at @s[scores={game.player.active_level=1}] run tag @n[type=minecraft:item,scores={game.entity.object_level=1},tag=EchoShard,distance=..96] add ClosestEchoShard
execute at @s[scores={game.player.active_level=2}] run tag @n[type=minecraft:item,scores={game.entity.object_level=2},tag=EchoShard,distance=..96] add ClosestEchoShard
execute at @s[scores={game.player.active_level=3}] run tag @n[type=minecraft:item,scores={game.entity.object_level=3},tag=EchoShard,distance=..96] add ClosestEchoShard
execute at @s[scores={game.player.active_level=4}] run tag @n[type=minecraft:item,scores={game.entity.object_level=4},tag=EchoShard,distance=..96] add ClosestEchoShard
execute at @s[tag=Tutorial] run tag @n[type=minecraft:item,scores={game.entity.object_level=10},tag=EchoShard,distance=..96] add ClosestEchoShard

# If no echo shard on same level, return
#execute unless entity @e[type=minecraft:item,tag=ClosestEchoShard] run say No echo on same level found (within range)
execute unless entity @e[type=minecraft:item,tag=ClosestEchoShard,distance=..96,limit=1] run return 1
#----------------------------------------------------------------------------------------------------

# Old distance
scoreboard players operation #old_distance game.player.sound_ping.echo_distance = @s game.player.sound_ping.echo_distance

# Determine distance bracket
function exigence:player/effects/detection/echo/get_distance_bracket


# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. game.player.sound_ping.echo_cooldown is ..0
# So return if both are not true
#execute if score @s game.player.sound_ping.echo_cooldown matches 1.. if score #old_distance game.player.sound_ping.echo_distance <= @s game.player.sound_ping.echo_distance run say No ping
execute if score @s game.player.sound_ping.echo_cooldown matches 1.. if score #old_distance game.player.sound_ping.echo_distance <= @s game.player.sound_ping.echo_distance run return 1
#----------------------------------------------------------------------------------------------------

# If pingechocooldown is 0, default to 10
#   This triggers if: Echo is on the same level but player is not close enough to ping (if player is close enough to ping this gets overwritten by the subcalls below)
execute if score @s game.player.sound_ping.echo_cooldown matches 0 run scoreboard players set @s game.player.sound_ping.echo_cooldown 10

# If ping echo distance is 10, no pings
execute if score @s game.player.sound_ping.echo_distance matches 10 run return 1
#----------------------------------------------------------------------------------------------------

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:block.amethyst_block.resonate
# Call based on determined bracket
execute if score @s game.player.sound_ping.echo_distance matches -2 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=..8] run function exigence:player/effects/detection/echo/-2
execute if score @s game.player.sound_ping.echo_distance matches -1 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=8..16] run function exigence:player/effects/detection/echo/-1
execute if score @s game.player.sound_ping.echo_distance matches -0 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=16..32] run function exigence:player/effects/detection/echo/0
execute if score @s game.player.sound_ping.echo_distance matches 1 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=32..48] run function exigence:player/effects/detection/echo/1
execute if score @s game.player.sound_ping.echo_distance matches 2 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=48..64] run function exigence:player/effects/detection/echo/2
execute if score @s game.player.sound_ping.echo_distance matches 3 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=64..80] run function exigence:player/effects/detection/echo/3
execute if score @s game.player.sound_ping.echo_distance matches 4 at @e[type=minecraft:item,tag=ClosestEchoShard,distance=80..96] run function exigence:player/effects/detection/echo/4

# Call vibration
tag @s add GetDistance
execute if score @s game.player.effects.detection matches 1.. as @e[type=minecraft:item,tag=ClosestEchoShard,distance=..96] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Remove local tag
tag @e[type=minecraft:item,tag=ClosestEchoShard,distance=..96] remove ClosestEchoShard

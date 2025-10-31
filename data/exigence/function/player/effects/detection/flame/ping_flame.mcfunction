# Pings the closest Flame
# Calls every second, or when game.player.sound_ping.flame_cooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#========================================================================================================

# Make sure local tag is cleared
tag @e[type=item,tag=ClosestArdorFlame] remove ClosestArdorFlame

# Tag closest Flame on same level
execute at @s[scores={game.player.active_level=1}] run tag @e[type=minecraft:item,tag=Ardor,scores={ObjectLevel=1},sort=nearest,limit=1] add ClosestArdorFlame
execute at @s[scores={game.player.active_level=2}] run tag @e[type=minecraft:item,tag=Ardor,scores={ObjectLevel=2},sort=nearest,limit=1] add ClosestArdorFlame
execute at @s[scores={game.player.active_level=3}] run tag @e[type=minecraft:item,tag=Ardor,scores={ObjectLevel=3},sort=nearest,limit=1] add ClosestArdorFlame
execute at @s[scores={game.player.active_level=4}] run tag @e[type=minecraft:item,tag=Ardor,scores={ObjectLevel=4},sort=nearest,limit=1] add ClosestArdorFlame

# If no Flame shard on same level, return
#execute unless entity @e[type=item,tag=ClosestArdorFlame] run say No Flame on same level found
execute unless entity @e[type=item,tag=ClosestArdorFlame] run return 1

# Old distance
scoreboard players operation #old_distance game.player.sound_ping.flame_distance = @s game.player.sound_ping.flame_distance

# Determine distance bracket
scoreboard players set @s game.player.sound_ping.flame_distance 10
execute at @e[distance=..16,type=item,tag=ClosestArdorFlame] run scoreboard players set @s game.player.sound_ping.flame_distance -1
execute at @e[distance=16..32,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. run scoreboard players set @s game.player.sound_ping.flame_distance 0
execute at @e[distance=32..48,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 1.. run scoreboard players set @s game.player.sound_ping.flame_distance 1
execute at @e[distance=48..64,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 2.. run scoreboard players set @s game.player.sound_ping.flame_distance 2
execute at @e[distance=64..80,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 3.. run scoreboard players set @s game.player.sound_ping.flame_distance 3
execute at @e[distance=80..96,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 4.. run scoreboard players set @s game.player.sound_ping.flame_distance 4

# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. game.player.sound_ping.flame_cooldown is ..0
# So return if both are not true
#execute if score @s game.player.sound_ping.flame_cooldown matches 1.. if score #old_distance game.player.sound_ping.flame_distance <= @s game.player.sound_ping.flame_distance run say No ping
execute if score @s game.player.sound_ping.flame_cooldown matches 1.. if score #old_distance game.player.sound_ping.flame_distance <= @s game.player.sound_ping.flame_distance run return 1

# If game.player.sound_ping.flame_cooldown is 0, default to 10
#   This triggers if: Flame is on the same level but player is not close enough to ping (if player is close enough to ping this gets overwritten by the subcalls below)
execute if score @s game.player.sound_ping.flame_cooldown matches 0 run scoreboard players set @s game.player.sound_ping.flame_cooldown 10

# If ping Flame distance is 10, no pings
execute if score @s game.player.sound_ping.flame_distance matches 10 run return 1

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:entity.evoker.cast_spell
# Determine bracket
execute at @e[distance=..16,type=item,tag=ClosestArdorFlame] run function exigence:player/effects/detection/flame/-1
execute at @e[distance=16..32,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. run function exigence:player/effects/detection/flame/0
execute at @e[distance=32..48,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 1.. run function exigence:player/effects/detection/flame/1
execute at @e[distance=48..64,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 2.. run function exigence:player/effects/detection/flame/2
execute at @e[distance=64..80,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 3.. run function exigence:player/effects/detection/flame/3
execute at @e[distance=80..96,type=item,tag=ClosestArdorFlame] if score @s game.player.effects.detection matches 1.. if score @s game.player.mod.detection matches 4.. run function exigence:player/effects/detection/flame/4

# Call vibration
tag @s add GetDistance
execute if score @s game.player.effects.detection matches 1.. as @e[type=item,tag=ClosestArdorFlame] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Remove local tag
tag @e[type=item,tag=ClosestArdorFlame] remove ClosestArdorFlame

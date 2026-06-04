# Pings the closest Vault Key
# Calls every second, or when game.player.sound_ping.vault_key_cooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#====================================================================================================

# Make sure local tag is cleared
tag @e[type=minecraft:item,tag=ClosestVaultKey,distance=..96] remove ClosestVaultKey

# Tag closest Vault Key on same level
execute at @s[scores={game.player.active_level=1}] run tag @n[type=minecraft:item,scores={game.entity.object_level=1},tag=VaultKey,distance=..96] add ClosestVaultKey
execute at @s[scores={game.player.active_level=2}] run tag @n[type=minecraft:item,scores={game.entity.object_level=2},tag=VaultKey,distance=..96] add ClosestVaultKey
execute at @s[scores={game.player.active_level=3}] run tag @n[type=minecraft:item,scores={game.entity.object_level=3},tag=VaultKey,distance=..96] add ClosestVaultKey
execute at @s[scores={game.player.active_level=4}] run tag @n[type=minecraft:item,scores={game.entity.object_level=4},tag=VaultKey,distance=..96] add ClosestVaultKey

# If no Vault Key shard on same level, return
#execute unless entity @e[type=minecraft:item,tag=ClosestVaultKey] run say No Vault Key on same level found
execute unless entity @e[type=minecraft:item,tag=ClosestVaultKey,distance=..96] run return 1
#----------------------------------------------------------------------------------------------------

# Old distance
scoreboard players operation #old_distance game.player.sound_ping.vault_key_distance = @s game.player.sound_ping.vault_key_distance

# Determine distance bracket
function exigence:player/effects/detection/vault_key/get_distance_bracket

execute if score toggle.vault debug matches 1 if score debug.vault debug matches 4.. run tellraw @a [{text:"(D4) Vault key distance Bracket: "},{score:{name:"@s","objective":"game.player.sound_ping.key_distance"}}]

# If ping Key distance is 10, no pings
#execute if score @s game.player.sound_ping.key_distance matches 10 run say No ping (No valid distance)
execute if score @s game.player.sound_ping.vault_key_distance matches 10 run return 1
#----------------------------------------------------------------------------------------------------

# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. game.player.sound_ping.vault_key_cooldown is ..0
# So return if both are not true
#execute if score @s game.player.sound_ping.vault_key_cooldown matches 1.. if score #old_distance game.player.sound_ping.vault_key_distance <= @s game.player.sound_ping.vault_key_distance run say No ping
execute if score @s game.player.sound_ping.vault_key_cooldown matches 1.. if score #old_distance game.player.sound_ping.vault_key_distance <= @s game.player.sound_ping.vault_key_distance run return 1
#----------------------------------------------------------------------------------------------------

execute if score toggle.vault debug matches 1 if score debug.vault debug matches 4.. run say (D4) Ping vault key

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:block.beacon.ambient
# Call based on determined bracket
execute if score @s game.player.sound_ping.vault_key_distance matches -2 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=..8] run function exigence:player/effects/detection/vault_key/-2
execute if score @s game.player.sound_ping.vault_key_distance matches -1 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=8..16] run function exigence:player/effects/detection/vault_key/-1
execute if score @s game.player.sound_ping.vault_key_distance matches -0 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=16..32] run function exigence:player/effects/detection/vault_key/0
execute if score @s game.player.sound_ping.vault_key_distance matches 1 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=32..48] run function exigence:player/effects/detection/vault_key/1
execute if score @s game.player.sound_ping.vault_key_distance matches 2 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=48..64] run function exigence:player/effects/detection/vault_key/2
execute if score @s game.player.sound_ping.vault_key_distance matches 3 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=64..80] run function exigence:player/effects/detection/vault_key/3
execute if score @s game.player.sound_ping.vault_key_distance matches 4 at @e[type=minecraft:item,tag=ClosestVaultKey,distance=80..96] run function exigence:player/effects/detection/vault_key/4

# Call vibration
tag @s add GetDistance
execute if score @s game.player.effects.detection matches 1.. as @e[type=minecraft:item,tag=ClosestVaultKey,distance=..96] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Enable waypoint
execute if score @s game.player.effects.detection matches 1.. as @e[type=minecraft:item,tag=ClosestVaultKey,distance=..96] run scoreboard players set @s game.waypoint.revealed_ticks 100

# Remove local tag
tag @e[type=minecraft:item,tag=ClosestVaultKey,distance=..96] remove ClosestVaultKey

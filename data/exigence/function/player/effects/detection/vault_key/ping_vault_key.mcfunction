# Pings the closest Vault Key
# Calls every second, or when PingVaultKeyCooldown is 0

## CONSTRAINTS
#   AS/AT player
#   scores={dead=0}

#========================================================================================================

# Make sure local tag is cleared
tag @e[type=item,tag=ClosestVaultKey] remove ClosestVaultKey

# Tag closest Vault Key on same level
execute at @s[scores={ActiveLevel=1}] run tag @e[type=minecraft:item,tag=VaultKey,scores={ObjectLevel=1},sort=nearest,limit=1] add ClosestVaultKey
execute at @s[scores={ActiveLevel=2}] run tag @e[type=minecraft:item,tag=VaultKey,scores={ObjectLevel=2},sort=nearest,limit=1] add ClosestVaultKey
execute at @s[scores={ActiveLevel=3}] run tag @e[type=minecraft:item,tag=VaultKey,scores={ObjectLevel=3},sort=nearest,limit=1] add ClosestVaultKey
execute at @s[scores={ActiveLevel=4}] run tag @e[type=minecraft:item,tag=VaultKey,scores={ObjectLevel=4},sort=nearest,limit=1] add ClosestVaultKey

# If no Vault Key shard on same level, return
#execute unless entity @e[type=item,tag=ClosestVaultKey] run say No Vault Key on same level found
execute unless entity @e[type=item,tag=ClosestVaultKey] run return 1

# Old distance
scoreboard players operation #old_distance PingVaultKeyDistance = @s PingVaultKeyDistance

# Determine distance bracket
scoreboard players set @s PingVaultKeyDistance 10
execute at @e[distance=..16,type=item,tag=ClosestVaultKey] run scoreboard players set @s PingVaultKeyDistance -1
execute at @e[distance=16..32,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. run scoreboard players set @s PingVaultKeyDistance 0
execute at @e[distance=32..48,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 1.. run scoreboard players set @s PingVaultKeyDistance 1
execute at @e[distance=48..64,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 2.. run scoreboard players set @s PingVaultKeyDistance 2
execute at @e[distance=64..80,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 3.. run scoreboard players set @s PingVaultKeyDistance 3
execute at @e[distance=80..96,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 4.. run scoreboard players set @s PingVaultKeyDistance 4

# PING SOUND IF:
#   1. Player got closer since last ping OR
#   2. PingVaultKeyCooldown is ..0
# So return if both are not true
#execute if score @s PingVaultKeyCooldown matches 1.. if score #old_distance PingVaultKeyDistance <= @s PingVaultKeyDistance run say No ping
execute if score @s PingVaultKeyCooldown matches 1.. if score #old_distance PingVaultKeyDistance <= @s PingVaultKeyDistance run return 1

# If PingVaultKeyCooldown is 0, default to 10
#   This triggers if: Vault Key is on the same level but player is not close enough to ping (if player is close enough to ping this gets overwritten by the subcalls below)
execute if score @s PingVaultKeyCooldown matches 0 run scoreboard players set @s PingVaultKeyCooldown 10

# If ping Vault Key distance is 10, no pings
execute if score @s PingVaultKeyDistance matches 10 run return 1

## SUCCESSFUL PING
# Stop old ping (if exists) so we don't overlap when they are running forward
stopsound @s neutral minecraft:block.beacon.ambient
# Determine bracket
execute at @e[distance=..16,type=item,tag=ClosestVaultKey] run function exigence:player/effects/detection/vault_key/-1
execute at @e[distance=16..32,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. run function exigence:player/effects/detection/vault_key/0
execute at @e[distance=32..48,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 1.. run function exigence:player/effects/detection/vault_key/1
execute at @e[distance=48..64,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 2.. run function exigence:player/effects/detection/vault_key/2
execute at @e[distance=64..80,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 3.. run function exigence:player/effects/detection/vault_key/3
execute at @e[distance=80..96,type=item,tag=ClosestVaultKey] if score @s effect_detection matches 1.. if score @s mod_Detection matches 4.. run function exigence:player/effects/detection/vault_key/4

# Call vibration
tag @s add GetDistance
execute if score @s effect_detection matches 1.. as @e[type=item,tag=ClosestVaultKey] run function exigence:player/effects/detection/vibrate/vibrate
tag @s remove GetDistance

# Remove local tag
tag @e[type=item,tag=ClosestVaultKey] remove ClosestVaultKey

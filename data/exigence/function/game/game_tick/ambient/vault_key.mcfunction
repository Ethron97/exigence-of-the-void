# Handles vault key related ambience

#=======================================================================================================

# Ambient enchantment particles centered on the vault key
execute at @a[tag=ActivePlayer,scores={dead=0}] at @e[distance=..32,type=minecraft:item,tag=VaultKey] run particle minecraft:enchant ~ ~1.2 ~ 0 0 0 2 2
execute at @a[tag=ActivePlayer,scores={dead=0}] at @e[distance=..32,type=minecraft:item,tag=VaultKey] run particle minecraft:enchanted_hit ~ ~0.2 ~ 0 0 0 1 1


# Sound
scoreboard players remove @a[tag=ActivePlayer,scores={dead=0,PingVaultKeyCooldown=1..}] PingVaultKeyCooldown 1

execute as @a[tag=ActivePlayer,scores={dead=0,PingVaultKeyCooldown=0}] at @s run function exigence:player/effects/detection/vault_key/ping_vault_key
# Call every second also, to catch cases where player is moving towards key but the sound delay is too long
execute if score SecondsCooldown TickCounter matches 18 as @a[tag=ActivePlayer,scores={dead=0,PingVaultKeyCooldown=1..}] at @s run function exigence:player/effects/detection/vault_key/ping_vault_key

# Move in direction of previous tag

## CONSTRAINTS
#   AS/AT silence platform

#=============================================================================================================

# Playsound
playsound minecraft:block.sculk.spread block @a[scores={VaultCode=3}] ~ ~1000 ~ 1000 1

# Move platform
fill ^-1 ^-1 ^-1 ^1 ^-1 ^-1 minecraft:air replace magenta_glazed_terracotta
tp @s ^ ^ ^1
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magenta_glazed_terracotta replace air

# Choose new direction
execute at @s run function exigence:door/vault/silence/trial/platform/random_direction

# Store previous
scoreboard players operation #silence_previous Random = random Random

# Indicate next step
execute at @s run function exigence:door/vault/silence/trial/platform/prep_step

# Reset cooldown TODO
# Reset timer
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=3},tag=Trial] if score Silence TrialTimer matches ..200 run scoreboard players set SilencePlatform TrialTimer 20
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=3},tag=Trial] if score Silence TrialTimer matches 201..400 run scoreboard players set SilencePlatform TrialTimer 16
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=3},tag=Trial] if score Silence TrialTimer matches 400.. run scoreboard players set SilencePlatform TrialTimer 12

execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=3},tag=Crucible] if score Silence TrialTimer matches ..200 run scoreboard players set SilencePlatform TrialTimer 14
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=3},tag=Crucible] if score Silence TrialTimer matches 201..400 run scoreboard players set SilencePlatform TrialTimer 11
execute if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=3},tag=Crucible] if score Silence TrialTimer matches 400.. run scoreboard players set SilencePlatform TrialTimer 9

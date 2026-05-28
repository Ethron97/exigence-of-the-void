# Move in direction of previous tag

## CONSTRAINTS
#   AS/AT silence platform

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Step

# Playsound
playsound minecraft:block.sculk.spread block @a[tag=TrialSounds_Silence] ~ ~1000 ~ 1000 1

# Move platform in direction chosen last step
fill ^-1 ^-1 ^-1 ^1 ^-1 ^-1 minecraft:air replace magenta_glazed_terracotta
tp @s ^ ^ ^1
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 magenta_glazed_terracotta replace air

# Choose new direction
execute at @s run function exigence:door/vault/silence/trial/platform/random_direction

# Store previous
scoreboard players operation #silence_previous Random = #random Random

# Indicate next step
execute at @s run function exigence:door/vault/silence/trial/platform/prep_step

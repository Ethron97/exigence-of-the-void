# Responsible for setting everything up required for the Silence Trial/Crucible

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Setup silence trial


## COMMON FUNCTIONS
# Reset scores
scoreboard players set @s trial.timer 0

# Add crucible tag if applicable
execute if entity @a[scores={game.player.vault_code=3},tag=Crucible,distance=..64] run tag @s add Crucible

# Copy player id
scoreboard players operation @s hub.entity.player_id = @p[scores={game.player.vault_code=3},distance=..64] career.player_id

# Set fire
execute if entity @s[tag=!Crucible] run function exigence:door/vault/_trial/fire/_set_trial
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/fire/_set_crucible

# Add etick so we know to tick it
tag @s add ETICK

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 end_portal replace black_concrete


## SILENCE SPECIFIC
# Initialize platform timer
scoreboard players set @s trial.timer.cooldown 60

# Summon marker(s)
summon minecraft:marker ~ ~0.1 ~ {Tags:["SilenceTrialSetup","SilencePlatform"],CustomName:{text:"Marker | SilencePlatform"}}

# Place platform
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:magenta_glazed_terracotta

# Randomize starting direction and prep step
execute store result score #silence_previous Random run random value 0..3
execute as @e[type=minecraft:marker,tag=SilencePlatform,distance=..1] at @s run function exigence:door/vault/silence/trial/platform/prep_step

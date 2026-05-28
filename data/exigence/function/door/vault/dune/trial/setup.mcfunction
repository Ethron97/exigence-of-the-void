# Responsible for setting everything up required for the Dune Trial/Crucible

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Setup dune trial


## COMMON FUNCTIONS
# Reset scores
scoreboard players set @s trial.timer 0

# Add crucible tag if applicable
execute if entity @a[scores={game.player.vault_code=2},tag=Crucible,distance=..64] run tag @s add Crucible

# Copy player id
scoreboard players operation @s hub.entity.player_id = @p[scores={game.player.vault_code=2},distance=..64] career.player_id

# Set fire
execute if entity @s[tag=!Crucible] run function exigence:door/vault/_trial/fire/_set_trial
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/fire/_set_crucible

# Add etick so we know to tick it
tag @s add ETICK

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 end_portal replace black_concrete


## DUNE SPECIFIC
# Clone grond
execute if entity @s[tag=Game] run clone ~5 ~11 ~5 ~-5 ~11 ~-5 ~-5 ~-1 ~-5
execute if entity @s[tag=Hub] run clone ~5 ~-7 ~5 ~-5 ~-7 ~-5 ~-5 ~-1 ~-5

# Initialize skull timer
scoreboard players set @s trial.timer.cooldown 70

# Summon DuneCenter
#   Marker at center of the chamber whose rotation is used to spawn stuff
summon minecraft:marker ~ ~0.1 ~ {Tags:["DuneTrialSetup","DuneCenter"],CustomName:{text:"Marker | DuneCenter"}}
summon minecraft:marker ~ ~0.1 ~ {Tags:["DuneTrialSetup","DunePosA"],CustomName:{text:"Marker | DunePosA"}}
summon minecraft:marker ~ ~0.1 ~ {Tags:["DuneTrialSetup","DunePosB"],CustomName:{text:"Marker | DunePosB"}}

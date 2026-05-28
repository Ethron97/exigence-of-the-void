# Responsible for setting everything up required for the Flow Trial/Crucible

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Setup flow trial


## COMMON FUNCTIONS
# Reset scores
scoreboard players set @s trial.timer 0

# Add crucible tag if applicable
execute if entity @a[scores={game.player.vault_code=6},tag=Crucible,distance=..64] run tag @s add Crucible

# Copy player id
scoreboard players operation @s hub.entity.player_id = @p[scores={game.player.vault_code=6},distance=..64] career.player_id

# Set fire
execute if entity @s[tag=!Crucible] run function exigence:door/vault/_trial/fire/_set_trial
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/fire/_set_crucible

# Add etick so we know to tick it
tag @s add ETICK

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 end_portal replace black_concrete


## FLOW SPECIFIC
# Reset scores
scoreboard players set @s trial.timer 0
scoreboard players set #next trial.object.speed 0

# Summon setup markers
summon minecraft:marker ~ ~ ~ {Tags:["FlowTrialSetup","FlowCenter"],CustomName:{text:"Marker | FlowCenter"}}
summon minecraft:marker ~ ~ ~ {Tags:["FlowTrialSetup","FlowPosA"],CustomName:{text:"Marker | FlowPosA"}}

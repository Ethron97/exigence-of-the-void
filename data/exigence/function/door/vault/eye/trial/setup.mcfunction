# Responsible for setting everything up required for the Eye Trial/Crucible

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Setup eye trial


## COMMON FUNCTIONS
# Reset scores
scoreboard players set @s trial.timer 0

# Add crucible tag if applicable
execute if entity @a[scores={game.player.vault_code=4},tag=Crucible,distance=..64] run tag @s add Crucible

# Copy player id
scoreboard players operation @s hub.entity.player_id = @p[scores={game.player.vault_code=4},distance=..64] career.player_id

# Set fire
execute if entity @s[tag=!Crucible] run function exigence:door/vault/_trial/fire/_set_trial
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/fire/_set_crucible

# Add etick so we know to tick it
tag @s add ETICK

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 end_portal replace black_concrete


## DUNE SPECIFIC
# Summon first wave of monsters
execute align xyz positioned ~-5 ~ ~-1 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[-90.0f,0.0f],Speed:1,Direction:0}
execute align xyz positioned ~1 ~ ~-5 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[0.0f,0.0f],Speed:1,Direction:1}
execute align xyz positioned ~5 ~ ~1 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[90.0f,0.0f],Speed:1,Direction:2}
execute align xyz positioned ~-1 ~ ~5 run function exigence:door/vault/eye/trial/monster/new {Type:'husk',Rotation:[180.0f,0.0f],Speed:1,Direction:3}

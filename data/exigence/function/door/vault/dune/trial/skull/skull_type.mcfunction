# Called by proc skull functions
#   Randomly determines which skull type to summon based on trial timne

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4 Trial) Choose skull type

# If there is already a black, 50% to skip chance and spawn white
scoreboard players set #random Random 0
execute if entity @e[type=minecraft:item_display,tag=DuneSkull,tag=Black,distance=..24,limit=1] store result score #random Random run random value 1..2
execute if score #random Random matches 1 run function exigence:door/vault/dune/trial/skull/white/new
execute if score #random Random matches 1 run return 1
#----------------------------------------------------------------------------------------------------

scoreboard players set #random Random 0
execute store result score #random Random if score @s trial.timer matches ..200 run random value 1..5
execute store result score #random Random if score @s trial.timer matches 201..400 run random value 1..4
execute store result score #random Random if score @s trial.timer matches 400.. run random value 1..3
execute if score #random Random matches 1 run function exigence:door/vault/dune/trial/skull/black/new
execute unless score #random Random matches 1 run function exigence:door/vault/dune/trial/skull/white/new

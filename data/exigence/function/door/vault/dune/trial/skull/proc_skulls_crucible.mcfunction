# Generates skulls based on trial time and difficulty

#=======================================================================================================

# First skull
function exigence:door/vault/dune/trial/skull/skull_type

# Second skull
scoreboard players set #random Random 0
execute store result score #random Random if score Dune TrialTimer matches ..200 run random value 1..4
execute store result score #random Random if score Dune TrialTimer matches 201..400 run random value 1..3
execute store result score #random Random if score Dune TrialTimer matches 400.. run random value 1..2
execute if score #random Random matches 1 run function exigence:door/vault/dune/trial/skull/skull_type

# Third skull
scoreboard players set #random Random 0
execute store result score #random Random if score Dune TrialTimer matches ..200 run random value 1..8
execute store result score #random Random if score Dune TrialTimer matches 201..400 run random value 1..4
execute store result score #random Random if score Dune TrialTimer matches 400.. run random value 1..2
execute if score #random Random matches 1 run function exigence:door/vault/dune/trial/skull/skull_type

# Reset timer
execute store result score Skulls TrialTimer if score Dune TrialTimer matches ..200 run random value 30..60
execute store result score Skulls TrialTimer if score Dune TrialTimer matches 201..400 run random value 22..50
execute store result score Skulls TrialTimer if score Dune TrialTimer matches 400.. run random value 15..40

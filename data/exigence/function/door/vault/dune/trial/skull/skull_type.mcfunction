# Called by proc skull functions
#   Randomly determines which skull type to summon based on trial timne

#+==========================================================================================================

# If there is already a black, 50% to skip chance and spawn white
scoreboard players set random Random 0
execute if entity @e[type=item_display,tag=DuneSkull,tag=Black] store result score random Random run random value 1..2
execute if score random Random matches 1 run function exigence:door/vault/dune/trial/skull/white/new
execute if score random Random matches 1 run return 1

scoreboard players set random Random 0
execute store result score random Random if score Dune TrialTimer matches ..200 run random value 1..5
execute store result score random Random if score Dune TrialTimer matches 201..400 run random value 1..4
execute store result score random Random if score Dune TrialTimer matches 400.. run random value 1..3
execute if score random Random matches 1 run function exigence:door/vault/dune/trial/skull/black/new
execute unless score random Random matches 1 run function exigence:door/vault/dune/trial/skull/white/new

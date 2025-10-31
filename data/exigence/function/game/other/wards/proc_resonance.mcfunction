# Random determine resonance drops.
#   Called by resolve treasure
#   Call if difficulty 4, player is on levels 3..4, and at least one crystal exists

#==============================================================================================================

# Four 1/5 chances
execute store result score #random Random run random value 1..5
execute if score #random Random matches 1 run function exigence:game/other/wards/drop_resonance

execute store result score #random Random run random value 1..5
execute if score #random Random matches 1 run function exigence:game/other/wards/drop_resonance

execute store result score #random Random run random value 1..5
execute if score #random Random matches 1 run function exigence:game/other/wards/drop_resonance

execute store result score #random Random run random value 1..5
execute if score #random Random matches 1 run function exigence:game/other/wards/drop_resonance

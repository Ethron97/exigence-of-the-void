# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call sub-function
execute if entity @s[tag=Game] run function exigence:door/vault/spire/trial/trial_game/win
execute if entity @s[tag=Hub] run function exigence:door/vault/spire/trial/trial_hub/win

# Reset vault
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..32] at @s run function exigence:door/vault/spire/trial/reset

# Win
function exigence:door/vault/_trial/_win

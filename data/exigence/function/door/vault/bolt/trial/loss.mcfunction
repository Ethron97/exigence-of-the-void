# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Bolt trial loss

# Teleport to vault anti-chamber facing the vault door
execute if entity @s[tag=Game] run tp @s -401.5 152.0 -17.5 -90 0
execute if entity @s[tag=Hub] at @s at @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..24] run tp @s ~ ~13 ~

# Reset vault
execute at @s as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..24] at @s run function exigence:door/vault/bolt/trial/reset

# Loss
function exigence:door/vault/_trial/_loss

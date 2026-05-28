# Teleport player out after loss

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if entity @s[tag=Game] run tp @s -401.5 152.0 -17.5 -90 0
#execute if entity @s[tag=Hub] at @s at @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..24] run tp @s ~ ~13 ~
execute if entity @s[tag=Hub] run tp @s 16.5 182.0 -16.5

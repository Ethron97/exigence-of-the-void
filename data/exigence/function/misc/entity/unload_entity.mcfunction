# Unload entity from the game

## CONSTRAINTS
#   AS entity to unload

#====================================================================================================

execute if score toggle.game debug matches 1 if score debug.level debug matches 4.. run say (D4 Game) Unloading entity

# Clear custom name (so no console log)
data remove entity @s CustomNameVisible
data remove entity @s CustomName

# Clear glowing
data modify entity @s Glowing set value false
effect clear @s glowing

data modify entity @s Silent set value true
data modify entity @s NoAI set value true

tag @s add KillMe

# Schedule finishing the job
schedule function exigence:misc/entity/kill_unloaded_entities 1t replace

# Teleport to somwhere n hub, so the death animation doesn't glitch
execute in exigence:hub positioned -7 153 -7 run tp @s ~ ~ ~

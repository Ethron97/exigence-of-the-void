# Generic end function for trials
#   Handles repeated code that doesn't change between the different trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Generic trial end

# Play teleport sound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1

execute if entity @s[tag=Game] run function exigence:door/vault/_trial/_end_game
execute if entity @s[tag=Hub] run function exigence:door/vault/_trial/_end_hub

# Remove tag
tag @s remove Crucible
tag @s remove Trial
tag @s remove Endless
tag @s remove Game
tag @s remove Hub

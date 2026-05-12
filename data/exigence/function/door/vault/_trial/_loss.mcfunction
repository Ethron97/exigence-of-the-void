# Generic loss

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Generic trial loss

# Play loss sound
execute at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 1 1

# Title
function exigence:door/vault/_trial/titles/loss

# Price of failure (if game is active)
execute if score game.is_active game.state matches 1 if entity @s[tag=ActivePlayer] run function exigence:door/vault/_trial/_failure

# Generic end
function exigence:door/vault/_trial/_end

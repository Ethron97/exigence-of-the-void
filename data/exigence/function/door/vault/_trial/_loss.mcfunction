# Generic loss

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Generic trial loss

# Mark that player was found
scoreboard players set #player_found Temp 1

# Play loss sound
execute at @s run playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 1 1

# Title
function exigence:door/vault/_trial/titles/loss

# Generic end
function exigence:door/vault/_trial/_end

# Break insisibility
execute if entity @s[tag=Game] if score @s game.player.effects.invisibility matches 1.. run function exigence:player/effects/break_invisibility
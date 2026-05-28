# Generic win

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Generic trial win

# Play win sound
execute at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~1000 ~ 1000 1

# Title
execute if entity @s[tag=Trial] run function exigence:door/vault/_trial/titles/trial_win
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/titles/crucible_win

# Message
tellraw @s[tag=Trial] [{text:"[!] ",color:"yellow"},{text:"You have been deemed... ",color:"gray"},{text:"Worthy ",color:"yellow"},{text:"(Completed Trial difficulty)",color:"dark_gray"}]
tellraw @s[tag=Crucible] [{text:"[!] ",color:"light_purple"},{text:"You have been deemed... ",color:"gray"},{text:"Exemplary ",color:"light_purple"},{text:"(Completed Crucible difficulty)",color:"dark_gray"}]

# Generic end
function exigence:door/vault/_trial/_end

# Lost from stepping on barrier

## CONSTRAINTS
#   AS player

#====================================================================================================

# Silence loss message
function exigence:door/vault/silence/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Unstable ",color:"red"},{text:"(Fell out of arena)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/silence/trial/loss/_tp_out

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -413.5 152.0 14.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Silence,distance=..1] run function exigence:door/vault/silence/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned -15.5 171.0 -16.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Silence,distance=..1] run function exigence:door/vault/silence/trial/loss

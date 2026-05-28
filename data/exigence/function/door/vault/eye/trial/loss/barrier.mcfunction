# Lost from stepping on barrier

## CONSTRAINTS
#   AS player

#====================================================================================================

# Eye loss message
function exigence:door/vault/eye/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Unstable ",color:"red"},{text:"(Fell out of arena)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/eye/trial/loss/_tp_out

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -355.5 152.0 6.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Eye,distance=..1] run function exigence:door/vault/eye/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned -15.5 171.0 -0.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Eye,distance=..1] run function exigence:door/vault/eye/trial/loss

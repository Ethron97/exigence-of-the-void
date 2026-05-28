# Lost from caught by skull

## CONSTRAINTS
#   AS player

#====================================================================================================

# Flow loss message
function exigence:door/vault/flow/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Unworthy ",color:"red"},{text:"(Caught by Wave)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/flow/trial/loss/_tp_out

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -355.5 152.0 -25.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Flow,distance=..1] run function exigence:door/vault/flow/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned 16.5 171.0 -0.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Flow,distance=..1] run function exigence:door/vault/flow/trial/loss

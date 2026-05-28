# Lost from stepping in fire

## CONSTRAINTS
#   AS player

#====================================================================================================

# Spire loss message
function exigence:door/vault/spire/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Dishonor ",color:"red"},{text:"(Stepped in fire)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/spire/trial/loss/_tp_out

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -355.5 152.0 -9.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..1] run function exigence:door/vault/spire/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned 0.5 171.0 -0.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..1] run function exigence:door/vault/spire/trial/loss

# Lost from dying

## CONSTRAINTS
#   AS player

#====================================================================================================

# Spire loss message
function exigence:door/vault/spire/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Frailty ",color:"red"},{text:"(Died)",color:"dark_gray"}]

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -355.5 152.0 -9.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..1] run function exigence:door/vault/spire/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned 0.5 171.0 -0.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Spire,distance=..1] run function exigence:door/vault/spire/trial/loss

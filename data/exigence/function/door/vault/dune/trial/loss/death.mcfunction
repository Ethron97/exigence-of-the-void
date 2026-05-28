# Lost from dying

## CONSTRAINTS
#   AS player

#====================================================================================================

# Dune loss message
function exigence:door/vault/dune/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Frailty ",color:"red"},{text:"(Died)",color:"dark_gray"}]

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -413.5 152.0 -1.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Dune,distance=..1] run function exigence:door/vault/dune/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned 0.5 171.0 -16.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Dune,distance=..1] run function exigence:door/vault/dune/trial/loss

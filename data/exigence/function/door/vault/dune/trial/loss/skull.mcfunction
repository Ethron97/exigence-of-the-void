# Lost from caught by skull

## CONSTRAINTS
#   AS player

#====================================================================================================

# Dune loss message
function exigence:door/vault/dune/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Unworthy ",color:"red"},{text:"(Caught by Skull)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/dune/trial/loss/_tp_out

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -413.5 152.0 -1.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Dune,distance=..1] run function exigence:door/vault/dune/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned 0.5 171.0 -16.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Dune,distance=..1] run function exigence:door/vault/dune/trial/loss

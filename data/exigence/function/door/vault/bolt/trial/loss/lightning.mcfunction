# Lost from caught in lightning

## CONSTRAINTS
#   AS player

#====================================================================================================

# Bolt loss message
function exigence:door/vault/bolt/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Unworthy ",color:"red"},{text:"(Caught by lightning)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/bolt/trial/loss/_tp_out

# Call main loss function
execute if entity @s[tag=Game] in minecraft:overworld positioned -413.5 152.0 -17.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..1] run function exigence:door/vault/bolt/trial/loss
execute if entity @s[tag=Hub] in exigence:hub positioned 16.5 171.0 -16.5 as @n[type=minecraft:marker,tag=TrialNode,tag=Bolt,distance=..1] run function exigence:door/vault/bolt/trial/loss

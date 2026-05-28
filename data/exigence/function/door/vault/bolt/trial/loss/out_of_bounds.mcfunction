# Lost from going out of bounds

## CONSTRAINTS
#   AS player

#====================================================================================================

# Bolt loss message
function exigence:door/vault/bolt/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Cowardice ",color:"red"},{text:"(Out of bounds)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/bolt/trial/loss/_tp_out

# Lost from logging out

## CONSTRAINTS
#   AS player

#====================================================================================================

# Silence loss message
function exigence:door/vault/silence/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Cowardice ",color:"red"},{text:"(Logged out)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/silence/trial/loss/_tp_out

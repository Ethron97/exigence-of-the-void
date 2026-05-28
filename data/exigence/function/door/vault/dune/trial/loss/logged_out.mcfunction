# Lost from logging out

## CONSTRAINTS
#   AS player

#====================================================================================================

# Dune loss message
function exigence:door/vault/dune/trial/loss/_loss_message

# Loss type specific message
tellraw @s [{text:"└ ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Cowardice ",color:"red"},{text:"(Logged out)",color:"dark_gray"}]

# Teleport player out
function exigence:door/vault/dune/trial/loss/_tp_out

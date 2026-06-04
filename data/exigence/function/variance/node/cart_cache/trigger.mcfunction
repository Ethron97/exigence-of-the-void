# Execute as variance node with tag=Minecart
# Called by blockade load sequence / setup function

## CONSTRAINTS
#   AS variance node
#       tag=Minecart, tag=CartCache

#====================================================================================================
execute unless entity @s[tag=Minecart] run return 0
#----------------------------------------------------------------------------------------------------

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3 Variance) Cart trigger

scoreboard players set @s game.node.node_state -1
function exigence:misc/node/pulse_state

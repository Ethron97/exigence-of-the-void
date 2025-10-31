# Execute as variance node with tag=Minecart
scoreboard players set @s game.node.node_state -1
execute as @s run function exigence:misc/node/pulse_state
tag @s add CartCache
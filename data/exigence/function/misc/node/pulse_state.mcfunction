# Update the data and call pulse_state_macro.mcfunction
execute store result storage temp pulse_state int 1 run scoreboard players get @s game.node.node_state

# Verify that function caller has a score
execute as @s[scores={game.node.node_state=-2..}] run function exigence:misc/node/pulse_state_macro with storage temp
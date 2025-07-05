# Update the data and call pulse_state_macro.mcfunction
execute store result storage temp pulse_state int 1 run scoreboard players get @s NodeState

# Verify that function caller has a score
execute as @s[scores={NodeState=-2..}] run function exigence:misc/node/pulse_state_macro with storage temp
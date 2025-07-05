# Remove "Active" tag
tag @s remove Active

# Reset state to 1 (default state) and pulse
scoreboard players set @s NodeState 1
function exigence:misc/node/pulse_state
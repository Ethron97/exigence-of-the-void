#say I am triggered

# Remove "Active" tag
tag @s remove Active

# Set state to 2 and pulse node
scoreboard players set @s NodeState 2
function exigence:misc/node/pulse_state

# If game is not active, return
execute unless data storage exigence:dungeon {is_active:1} run return 0

# Update scoreboard
execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] t_hazardL1 1
execute if score @s ObjectLevel matches 1 run scoreboard players add @a[tag=ActivePlayer] cr_hazardL1 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] t_hazardL2 1
execute if score @s ObjectLevel matches 2 run scoreboard players add @a[tag=ActivePlayer] cr_hazardL2 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] t_hazardL3 1
execute if score @s ObjectLevel matches 3 run scoreboard players add @a[tag=ActivePlayer] cr_hazardL3 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] t_hazardL4 1
execute if score @s ObjectLevel matches 4 run scoreboard players add @a[tag=ActivePlayer] cr_hazardL4 1

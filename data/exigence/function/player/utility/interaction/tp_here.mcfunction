# Teleport this player's interaction to "home" so it is out of the way

## CONSTRAINTS
#   AS Player
#   AT where to teleport interaction

#========================================================================================================

# Store player id for comparison
scoreboard players operation #compare PlayerID = @s PlayerID

execute store result storage exigence:temp player_id int 1 run scoreboard players get #compare PlayerID

# Get correponding interaction
execute as @e[type=interaction,scores={PlayerID=1..}] if score @s PlayerID = #compare PlayerID run tp @s ~ ~ ~

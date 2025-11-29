# Teleport this player's interaction to "home" so it is out of the way

## CONSTRAINTS
#   AS Player
#   AT where to teleport interaction

#========================================================================================================

# Store player id for comparison
scoreboard players operation #compare game.entity.profile_id = @s profile.player.profile_id

execute store result storage exigence:temp player_id int 1 run scoreboard players get #compare game.entity.profile_id

# Get correponding interaction
execute as @e[type=interaction,scores={game.entity.profile_id=1..}] if score @s game.entity.profile_id = #compare game.entity.profile_id run tp @s ~ ~ ~

# Generic begin function for trials
#   Handles repeated code that doesn't change between the different trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Begin trial generic (game)

# Play teleport sound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1

# Begin sound
execute at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item ambient @s ~ ~1000 ~ 1000 0.8

# Join enemy team to avoid default warden tracking
team join Enemy @s

# Update bossbars to only show for players who are not in a vault
function exigence:bossbar/deck/update_visibility
function exigence:bossbar/objective/update_visibility
function exigence:bossbar/last_card/update_visibility

# Remove clock markers
execute in minecraft:overworld run function exigence:player/use_item/clock/reset_player

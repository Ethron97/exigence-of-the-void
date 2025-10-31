# Call as EchoNode
# Add random value 1..8 to most recent cake position, then bound to 1..8
execute store result score #add game.node.echo.tasty_surprise run random value 1..8
scoreboard players operation @s game.node.echo.tasty_surprise += #add game.node.echo.tasty_surprise
scoreboard players operation @s game.node.echo.tasty_surprise %= 8 number

# If block is air, spawn cake
execute at @s run function exigence:cards/tasty_surprise/private/validate_position
execute at @s if score #valid game.node.echo.tasty_surprise matches 1 run function exigence:cards/tasty_surprise/private/spawn_cake

# Else iterate
execute at @s if score #valid game.node.echo.tasty_surprise matches 0 run function exigence:cards/tasty_surprise/try_spawn_cake

# No infinite-loop-validation should be needed as there is only one card that spawns cake and you can only play 3 of them
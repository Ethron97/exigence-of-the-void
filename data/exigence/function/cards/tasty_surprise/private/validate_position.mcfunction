scoreboard players set #valid game.node.echo.tasty_surprise 0
execute if score @s game.node.echo.tasty_surprise matches 0 if block ~1 ~ ~-1 minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 1 if block ~1 ~ ~ minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 2 if block ~1 ~ ~1 minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 3 if block ~ ~ ~1 minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 4 if block ~-1 ~ ~1 minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 5 if block ~-1 ~ ~ minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 6 if block ~-1 ~ ~-1 minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
execute if score @s game.node.echo.tasty_surprise matches 7 if block ~ ~ ~-1 minecraft:air run scoreboard players set #valid game.node.echo.tasty_surprise 1
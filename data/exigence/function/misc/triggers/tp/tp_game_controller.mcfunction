# Teleports user to the Tutorial dimension

execute in minecraft:overworld run tp @s 500.5 0 500.5

# Reset trigger score
scoreboard players reset @s TpGameController
scoreboard players enable @s TpGameController

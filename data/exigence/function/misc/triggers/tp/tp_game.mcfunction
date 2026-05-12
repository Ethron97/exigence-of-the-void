# Teleports user to the Game (main) dimension

execute in minecraft:overworld run tp @s -278.5 1.0 -120.5 135 0

# Reset trigger score
scoreboard players reset @s TpGame
scoreboard players enable @s TpGame

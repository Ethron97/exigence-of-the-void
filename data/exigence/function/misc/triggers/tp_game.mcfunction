# Teleports user to the Game (main) dimension

execute in minecraft:overworld run tp -261 17 -45

# Reset trigger score
scoreboard players set @s TpGame 0

scoreboard players enable @s TpGame

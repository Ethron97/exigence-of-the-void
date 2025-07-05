say +2 🍒 for each ♻ this run

# Reset score
scoreboard players set #recycled Temp 0

# Add for each card recycled
execute as @e[type=minecraft:armor_stand,tag=Card,tag=Recycled] run scoreboard players add #recycled Temp 1

# Multiply by 2
scoreboard players operation #recycled Temp *= 2 number

# Add to berry queue
scoreboard players operation BerryQueue DungeonRun += #recycled Temp

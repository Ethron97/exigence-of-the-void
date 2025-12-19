# Set object level to 3
scoreboard players set @s ObjectLevel 3

# Tellraw
tellraw @s {text:"Object level set to 3",color: "gray"}

# Set Difficulty to 3 (for testing)
scoreboard players set Difficulty DungeonRun 3

# Reset trigger score
scoreboard players reset @s 3
scoreboard players enable @s 3
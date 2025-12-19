# Set object level to 2
scoreboard players set @s ObjectLevel 2

# Tellraw
tellraw @s {text:"Object level set to 2",color: "gray"}

# Set Difficulty to 2 (for testing)
scoreboard players set Difficulty DungeonRun 2

# Reset trigger score
scoreboard players reset @s 2
scoreboard players enable @s 2
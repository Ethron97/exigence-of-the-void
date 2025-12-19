# Set object level to 4
scoreboard players set @s ObjectLevel 4

# Tellraw
tellraw @s {text:"Object level set to 4",color: "gray"}

# Set Difficulty to 4 (for testing)
scoreboard players set Difficulty DungeonRun 4

# Reset trigger score
scoreboard players reset @s 4
scoreboard players enable @s 4
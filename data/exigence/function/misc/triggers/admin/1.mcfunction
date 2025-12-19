# Set object level to 1
scoreboard players set @s ObjectLevel 1

# Tellraw
tellraw @s {text:"Object level set to 1",color: "gray"}

# Set Difficulty to 1 (for testing)
scoreboard players set Difficulty DungeonRun 1

# Reset trigger score
scoreboard players reset @s 1
scoreboard players enable @s 1
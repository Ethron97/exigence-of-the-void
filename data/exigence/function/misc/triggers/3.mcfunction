# Set object level to 3
scoreboard players set @s ObjectLevel 3

# Tellraw
tellraw @s {text:"Object level set to 3",color: "gray"}

# Reset trigger score
scoreboard players set @s 3 0

# Set Difficulty to 3 (for testing)
scoreboard players set Difficulty DungeonRun 3

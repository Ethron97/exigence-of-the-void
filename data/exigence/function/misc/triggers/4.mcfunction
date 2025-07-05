# Set object level to 4
scoreboard players set @s ObjectLevel 4

# Tellraw
tellraw @s {text:"Object level set to 4",color: "gray"}

# Reset trigger score
scoreboard players set @s 4 0

# Set Difficulty to 4 (for testing)
scoreboard players set Difficulty DungeonRun 4

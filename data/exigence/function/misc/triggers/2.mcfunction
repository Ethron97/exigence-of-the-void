# Set object level to 2
scoreboard players set @s ObjectLevel 2

# Tellraw
tellraw @s {text:"Object level set to 2",color: "gray"}

# Reset trigger score
scoreboard players set @s 2 0

# Set Difficulty to 2 (for testing)
scoreboard players set Difficulty DungeonRun 2

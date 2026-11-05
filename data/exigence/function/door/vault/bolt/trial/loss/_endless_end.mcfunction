# Called when you lose as part of an endless run, to save score etc

## CONSTRAINTS
#   AS player

## INPUT
#   SCORE #trial_time Temp - ticks

#====================================================================================================

# Normalize score (get rid of 3 second warm up)
scoreboard players remove #trial_time Temp 60
scoreboard players operation #trial_time Temp > 0 number

# Convert to seconds+miliseconds
#   TODO shared function to return minute, second, milisecond 

# Check for PB

# Loss type specific message
tellraw @s [{text:"└ ",color:"aqua"},{text:"You lasted: ",color:"gray"},{score:{name:"#trial_time",objective:"Temp"}}]

# Save if highscore, and to Player Node

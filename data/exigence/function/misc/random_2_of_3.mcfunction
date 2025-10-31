# Random value from 0 to 2
execute store result score out.a Random run random value 0..2

# Add random value of 1 or 2 to get second number
scoreboard players operation out.b Random = out.a Random

execute store result score #out Random run random value 1..2

scoreboard players operation out.b Random += #out Random

# Modulo 3 to put second value in range 0..2
scoreboard players operation out.b Random %= 3 Random
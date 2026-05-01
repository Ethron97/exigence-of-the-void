## OUTPUT
#   SCORE out.a Random (0..2)
#   SCORE out.b Random (0..2) a<>b

#====================================================================================================

# Random value from 0 to 2
execute store result score out.a Random run random value 0..2

# Add random value of 1 or 2 to get second number
scoreboard players operation out.b Random = out.a Random

execute store result score #temp Temp run random value 1..2

scoreboard players operation out.b Random += #temp Temp

# Modulo 3 to put second value in range 0..2
scoreboard players operation out.b Random %= 3 number
# Randomize which fire terrace (level 4) fire hazard sculked type is chosen

## CONSTRAINTS
#   AT location, bottom left most stair when facing up the staircase

#==================================================================================================

# Randomize 1-3
execute store result score randomB Random run random value 1..3

# 1 = orange
execute if score randomB Random matches 1 run clone -445 164 -165 -443 161 -162 ~ ~ ~-3

# 2 = red
execute if score randomB Random matches 2 run clone -437 164 -165 -435 161 -162 ~ ~ ~-3

# 3 = yellow
execute if score randomB Random matches 3 run clone -429 164 -165 -427 161 -162 ~ ~ ~-3

# There are 3 pairs of staircases on level 3
# This variance prevents any of these 3 going straight from level 1 to 2, so the player will
# always be forced to traverse each level to get to the top :3

# DEBUG
#say Setting up level 3 floot staircase variance
function exigence:variance/level_3_stairs/reset_stairs

# Determine if top or bottom level has the single stair
execute store result score #Case game.setup.level_3_stairs run random value 1..2
# if case 1, the random one out has a bottom but no top
#   then the other two have a top but no bottom
# If case 2, then the random one out as a top but no bottom
#   then the other two have a bottom but no top

# Random value 1..3
#   1=Crypt
#   2=Guard
#   3=Main
execute store result score #Odd game.setup.level_3_stairs run random value 1..3

# variance_1 = block stair on level 1
# variance_2 = block stair on level 2
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/variance_2 3t append
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/crypt/variance_1 3t append
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/guard/variance_1 4t append
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/guard/variance_2 4t append
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/main/variance_1 5t append
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/variance_2 5t append

execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/variance_1 6t append
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/crypt/variance_2 6t append
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/guard/variance_2 7t append
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/guard/variance_1 7t append
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/main/variance_1 8t append
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/variance_2 8t append

execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/variance_1 9t append
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/crypt/variance_2 9t append
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/guard/variance_1 10t append
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/guard/variance_2 10t append
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/main/variance_2 11t append
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/variance_1 11t append

# We then need to remember which are the two out, because there will be a hazard that 
#function exigence:variance/level_3_stairs/hazard_stairs

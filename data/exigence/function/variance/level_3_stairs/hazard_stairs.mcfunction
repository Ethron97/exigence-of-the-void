# Called by a hazardnode on level 3

# Determine which pair of non-odds gets 50/50d
execute store result score #Sculk game.setup.level_3_stairs run random value 1..2

# 50/50 that the main stair also hazards
execute store result score random Random run random value 1..2
execute if score random Random matches 1 run function exigence:variance/level_3_stairs/main/hazard_1_main

execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 1 if score #Sculk game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/guard/hazard_2 1t
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 1 if score #Sculk game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/hazard_2 1t
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 2 if score #Sculk game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/guard/hazard_1 1t
execute if score #Odd game.setup.level_3_stairs matches 1 if score #Case game.setup.level_3_stairs matches 2 if score #Sculk game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/hazard_1 1t

execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 1 if score #Sculk game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/hazard_2 2t
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 1 if score #Sculk game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/hazard_2 2t
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 2 if score #Sculk game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/hazard_1 2t
execute if score #Odd game.setup.level_3_stairs matches 2 if score #Case game.setup.level_3_stairs matches 2 if score #Sculk game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/main/hazard_1 2t

execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 1 if score #Sculk game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/hazard_2 3t
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 1 if score #Sculk game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/guard/hazard_2 3t
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 2 if score #Sculk game.setup.level_3_stairs matches 1 run schedule function exigence:variance/level_3_stairs/crypt/hazard_1 3t
execute if score #Odd game.setup.level_3_stairs matches 3 if score #Case game.setup.level_3_stairs matches 2 if score #Sculk game.setup.level_3_stairs matches 2 run schedule function exigence:variance/level_3_stairs/guard/hazard_1 3t

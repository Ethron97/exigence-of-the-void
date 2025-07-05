# Called by a hazardnode on level 3

# Determine which pair of non-odds gets 50/50d
execute store result score Sculk Level3Stairs run random value 1..2

execute if score Odd Level3Stairs matches 1 if score Case Level3Stairs matches 1 if score Sculk Level3Stairs matches 1 run function exigence:variance/level_3_stairs/guard/hazard_2
execute if score Odd Level3Stairs matches 1 if score Case Level3Stairs matches 1 if score Sculk Level3Stairs matches 2 run function exigence:variance/level_3_stairs/main/hazard_2
execute if score Odd Level3Stairs matches 1 if score Case Level3Stairs matches 2 if score Sculk Level3Stairs matches 1 run function exigence:variance/level_3_stairs/guard/hazard_1
execute if score Odd Level3Stairs matches 1 if score Case Level3Stairs matches 2 if score Sculk Level3Stairs matches 2 run function exigence:variance/level_3_stairs/main/hazard_1

execute if score Odd Level3Stairs matches 2 if score Case Level3Stairs matches 1 if score Sculk Level3Stairs matches 1 run function exigence:variance/level_3_stairs/crypt/hazard_2
execute if score Odd Level3Stairs matches 2 if score Case Level3Stairs matches 1 if score Sculk Level3Stairs matches 2 run function exigence:variance/level_3_stairs/main/hazard_2
execute if score Odd Level3Stairs matches 2 if score Case Level3Stairs matches 2 if score Sculk Level3Stairs matches 1 run function exigence:variance/level_3_stairs/crypt/hazard_1
execute if score Odd Level3Stairs matches 2 if score Case Level3Stairs matches 2 if score Sculk Level3Stairs matches 2 run function exigence:variance/level_3_stairs/main/hazard_1

execute if score Odd Level3Stairs matches 3 if score Case Level3Stairs matches 1 if score Sculk Level3Stairs matches 1 run function exigence:variance/level_3_stairs/crypt/hazard_2
execute if score Odd Level3Stairs matches 3 if score Case Level3Stairs matches 1 if score Sculk Level3Stairs matches 2 run function exigence:variance/level_3_stairs/guard/hazard_2
execute if score Odd Level3Stairs matches 3 if score Case Level3Stairs matches 2 if score Sculk Level3Stairs matches 1 run function exigence:variance/level_3_stairs/crypt/hazard_1
execute if score Odd Level3Stairs matches 3 if score Case Level3Stairs matches 2 if score Sculk Level3Stairs matches 2 run function exigence:variance/level_3_stairs/guard/hazard_1

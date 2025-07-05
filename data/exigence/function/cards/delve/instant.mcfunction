say Delve I (More difficult echo selected)

scoreboard players add DifficultyMod DungeonRun 1

# Increase StartingHazard by 1 on the selected difficulty level
execute if score Difficulty DungeonRun matches 1 run function exigence:hazard/increase_starting_hazard/1
execute if score Difficulty DungeonRun matches 2 run function exigence:hazard/increase_starting_hazard/2
execute if score Difficulty DungeonRun matches 3 run function exigence:hazard/increase_starting_hazard/3
execute if score Difficulty DungeonRun matches 4 run function exigence:hazard/increase_starting_hazard/4

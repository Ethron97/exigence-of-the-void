# Subfunction of update_title
#   If active level = 3

execute if score Difficulty DungeonRun matches 4.. run function exigence:bossbar/objective/private/3/normal
execute if score Difficulty DungeonRun matches 5 run function exigence:bossbar/objective/private/3/beacon

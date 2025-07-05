# Subfunction of update_title
#   If active level = 1

execute if score Difficulty DungeonRun matches 2.. run function exigence:bossbar/objective/private/1/normal
execute if score Difficulty DungeonRun matches 5 run function exigence:bossbar/objective/private/1/beacon

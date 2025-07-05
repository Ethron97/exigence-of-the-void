# Subfunction of update_title
#   If active level = 2

execute if score Difficulty DungeonRun matches 3.. run function exigence:bossbar/objective/private/2/normal
execute if score Difficulty DungeonRun matches 5 run function exigence:bossbar/objective/private/2/beacon

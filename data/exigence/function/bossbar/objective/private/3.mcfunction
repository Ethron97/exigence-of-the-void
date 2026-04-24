# Subfunction of update_title
#   If active level = 3

execute if score game.difficulty game.state matches 4.. run function exigence:bossbar/objective/private/3/normal
execute if score game.difficulty game.state matches 5 run function exigence:bossbar/objective/private/3/beacon

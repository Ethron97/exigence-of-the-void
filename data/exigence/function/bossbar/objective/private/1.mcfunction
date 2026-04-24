# Subfunction of update_title
#   If active level = 1

execute if score game.difficulty game.state matches 2.. run function exigence:bossbar/objective/private/1/normal
execute if score game.difficulty game.state matches 5 run function exigence:bossbar/objective/private/1/beacon

# Subfunction of update_title
#   If active level = 2

execute if score game.difficulty game.state matches 3.. run function exigence:bossbar/objective/private/2/normal
execute if score game.difficulty game.state matches 5 run function exigence:bossbar/objective/private/2/beacon

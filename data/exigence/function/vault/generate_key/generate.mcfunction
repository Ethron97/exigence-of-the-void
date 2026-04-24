# Generate key on all levels

execute if score game.difficulty game.state matches 1.. run function exigence:vault/generate_key/level_1
execute if score game.difficulty game.state matches 2.. run function exigence:vault/generate_key/level_2
execute if score game.difficulty game.state matches 3.. run function exigence:vault/generate_key/level_3
execute if score game.difficulty game.state matches 4.. run function exigence:vault/generate_key/level_4

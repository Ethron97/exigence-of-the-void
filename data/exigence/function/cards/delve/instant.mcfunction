say Delve I (More difficult echo selected)

scoreboard players add .difficulty_mod game.dungeon.echo 1

# Increase starting hazard by 1 on the selected difficulty level
execute if score game.difficulty game.state matches 1 run function exigence:hazard/starting_hazard/increase/1
execute if score game.difficulty game.state matches 2 run function exigence:hazard/starting_hazard/increase/2
execute if score game.difficulty game.state matches 3 run function exigence:hazard/starting_hazard/increase/3
execute if score game.difficulty game.state matches 4 run function exigence:hazard/starting_hazard/increase/4

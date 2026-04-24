# Mark 1 random HazardNode on MAIN ECHO/TARGET LEVEL to start triggered

#====================================================================================================

execute if score game.difficulty game.state matches 1 run return run function exigence:hazard/starting_hazard/increase/1
execute if score game.difficulty game.state matches 2 run return run function exigence:hazard/starting_hazard/increase/2
execute if score game.difficulty game.state matches 3 run return run function exigence:hazard/starting_hazard/increase/3
execute if score game.difficulty game.state matches 4.. run return run function exigence:hazard/starting_hazard/increase/4

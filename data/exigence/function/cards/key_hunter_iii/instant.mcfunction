say +1 Ardor's Bane key, +1 Hazard on level 3 (+1 Hazard for each player in COOP)

# FUNCTIONALITY
scoreboard players add 3.keys_to_drop game.level_doors 1

# Increase starting hazard by 1 on level 3 for each player (if difficulty is high enough)
execute if score game.difficulty game.state matches 4.. as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/3

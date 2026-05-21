say +1 Temple of Fervor key, +1 Hazard on level 2 (+1 Hazard for each player in COOP)

# FUNCTIONALITY
scoreboard players add 2.keys_to_drop game.level_doors 1

# Increase starting hazard by 1 on level 2 for each player
execute if score game.difficulty game.state matches 3.. as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/2

#say +1 Mirror Mines key, +1 Hazard on level 1 (+1 Hazard for each player in Coop)
function exigence:cards/announce_card

# FUNCTIONALITY
scoreboard players add 1.keys_to_drop game.level_doors 1

# Increase starting hazard by 1 on level 1 for each player
execute if score game.difficulty game.state matches 2.. as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/1

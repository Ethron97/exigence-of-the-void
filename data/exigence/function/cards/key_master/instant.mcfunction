#say +1 of each level key, +4 hazard spread throughout dungeon (+4 per player in COOP)
function exigence:cards/announce_card

# FUNCTIONALITY
scoreboard players add 1.keys_to_drop game.level_doors 1
scoreboard players add 2.keys_to_drop game.level_doors 1
scoreboard players add 3.keys_to_drop game.level_doors 1

# Increase starting hazard by 4 on any level for each player
execute as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/random
execute as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/random
execute as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/random
execute as @a[tag=Predungeon] run function exigence:hazard/starting_hazard/increase/random

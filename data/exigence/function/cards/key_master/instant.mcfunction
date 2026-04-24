say +1 of each level key, +4 hazard spread throughout dungeon (+4 per player in COOP)

# FUNCTIONALITY
scoreboard players add 1.keys_to_drop game.level_doors 1
scoreboard players add 2.keys_to_drop game.level_doors 1
scoreboard players add 3.keys_to_drop game.level_doors 1

# Increase starting hazard by 4 on any level for each player
execute as @a[tag=ActivePlayer] run function exigence:hazard/starting_hazard/increase/4
execute as @a[tag=ActivePlayer] run function exigence:hazard/starting_hazard/increase/4
execute as @a[tag=ActivePlayer] run function exigence:hazard/starting_hazard/increase/4
execute as @a[tag=ActivePlayer] run function exigence:hazard/starting_hazard/increase/4

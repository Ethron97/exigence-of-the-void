say +1 of each level key, +4 hazard spread throughout dungeon (+4 per player in COOP)

# FUNCTIONALITY
scoreboard players add 1.keys_to_drop game.level_doors 1
scoreboard players add 2.keys_to_drop game.level_doors 1
scoreboard players add 3.keys_to_drop game.level_doors 1

# Increase StartingHazard by 4 on any level, for each player
execute as @a[tag=ActivePlayer] run tag @e[type=minecraft:armor_stand,tag=HazardNode,tag=!StartingHazard,limit=4,sort=random] add StartingHazard

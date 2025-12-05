say +1 Mirror Mines key, +1 Hazard on level 1 (+1 Hazard for each player in Coop)

# FUNCTIONALITY
scoreboard players add 1.keys_to_drop game.level_doors 1

# Increase StartingHazard by 1 on level 1 for each player
execute as @a[tag=ActivePlayer] run tag @e[type=minecraft:armor_stand,tag=HazardNode,tag=!StartingHazard,scores={ObjectLevel=1},limit=1,sort=random] add StartingHazard

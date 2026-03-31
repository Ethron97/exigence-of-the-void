say +1 Ardor's Bane key, +1 Hazard on level 3 (+1 Hazard for each player in COOP)

# FUNCTIONALITY
scoreboard players add 3.keys_to_drop game.level_doors 1

# Increase StartingHazard by 1 on level 3
execute as @a[tag=ActivePlayer] run tag @e[type=minecraft:armor_stand,scores={ObjectLevel=3},tag=HazardNode,tag=!StartingHazard,sort=random,limit=1] add StartingHazard

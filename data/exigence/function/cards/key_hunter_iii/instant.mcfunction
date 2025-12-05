say +1 Ardor's Bane key, +1 Hazard on level 3 (+1 Hazard for each player in COOP)

# FUNCTIONALITY
scoreboard players add 3.keys_to_drop game.level_doors 1

# Increase StartingHazard by 1 on level 3
execute as @a[tag=ActivePlayer] run tag @e[type=minecraft:armor_stand,tag=HazardNode,tag=!StartingHazard,scores={ObjectLevel=3},limit=1,sort=random] add StartingHazard

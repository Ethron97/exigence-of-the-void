say +1 Temple of Fervor key, +1 Hazard on level 2 (+1 Hazard for each player in COOP)

# FUNCTIONALITY
scoreboard players add 2.keys_to_drop game.level_doors 1

# Increase StartingHazard by 1 on level 2
execute as @a[tag=ActivePlayer] run tag @e[type=minecraft:armor_stand,scores={ObjectLevel=2},tag=HazardNode,tag=!StartingHazard,sort=random,limit=1] add StartingHazard

# OLD
#   DEPRECATED

# Increase heighten by 2
function exigence:player/effects/heighten/increase
function exigence:player/effects/heighten/increase

# Increase StartingHazard by 1 on the selected difficulty level
execute as @e[type=minecraft:armor_stand,tag=HazardNode,tag=!StartingHazard] if score @s ObjectLevel = Difficulty DungeonRun run tag @s add PossibleStartingHazard
tag @e[type=minecraft:armor_stand,tag=PossibleStartingHazard,limit=1,sort=random] add StartingHazard
tag @e[type=minecraft:armor_stand,tag=PossibleStartingHazard] remove PossibleStartingHazard

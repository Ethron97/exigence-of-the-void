# Randomly determines hazard nodes to trigger

## INPUT
#   INT level - 1-4
#   INT amount
#   STR type - "Card", "Setup", "Bell", "Other"

# Trigger amount
$execute as @e[type=minecraft:armor_stand,tag=HazardNode,tag=Active,scores={ObjectLevel=$(level)},sort=random,limit=$(amount)] run function exigence:hazard/node/trigger

# For tracking purposes, increase total Hazard score
scoreboard players add Hazard DungeonRun 1

# TODO Over-hazard?

# Adjust scores
$scoreboard players add @a[tag=ActivePlayer] cr_hazard$(type)L$(level) $(amount)
$scoreboard players add @a[tag=ActivePlayer] t_hazard$(type)L$(level) $(amount)

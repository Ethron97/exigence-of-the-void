# Randomly determines hazard nodes to trigger

## INPUT
#   INT level - 1-4
#   INT amount
#   STR type - "card", "setup", "bell", "other"

# Trigger amount
$execute as @e[type=minecraft:armor_stand,scores={ObjectLevel=$(level)},tag=HazardNode,tag=Active,sort=random,limit=$(amount)] run function exigence:hazard/node/trigger

# For tracking purposes, increase total Hazard score
scoreboard players add Hazard DungeonRun 1

# TODO Over-hazard?

# Adjust scores
$scoreboard players add @a[tag=ActivePlayer] cr.hazard_$(type)_L$(level) $(amount)

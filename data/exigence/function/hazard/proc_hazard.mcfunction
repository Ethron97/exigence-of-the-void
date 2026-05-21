# Randomly determines hazard nodes to trigger

## INPUT
#   INT level - 1-4
#   INT amount
#   STR type - "card", "setup", "bell", "other"

#====================================================================================================

$execute if score toggle.hazard debug matches 1 if score debug.level debug matches 3.. run say (D3) Proc hazard L$(level) $(type) x$(amount)

# Trigger amount
$execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=$(level)},tag=HazardNode,tag=Active,sort=random,limit=$(amount)] run function exigence:hazard/node/trigger

# Adjust scores
scoreboard players add hazard.total game.dungeon.hazard 1
$scoreboard players add hazard.level_$(level) game.dungeon.hazard 1
$scoreboard players add @a[tag=ActivePlayer] cr.hazard_$(type)_L$(level) $(amount)

# TODO Over-hazard?
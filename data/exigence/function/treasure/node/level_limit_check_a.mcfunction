# Check if level is correct for spawning a coin (+-1 level)

## CONSTRAINTS
#   AS treasure node

#====================================================================================================

# Return 1 if there is not a player within 1 level based on this node's level
execute if score @s node.property.object_level matches 1 unless entity @a[scores={dead=0,game.player.active_level=1..2},tag=ActivePlayer] run return 1
execute if score @s node.property.object_level matches 2 unless entity @a[scores={dead=0,game.player.active_level=1..3},tag=ActivePlayer] run return 1
execute if score @s node.property.object_level matches 3 unless entity @a[scores={dead=0,game.player.active_level=2..4},tag=ActivePlayer] run return 1
execute if score @s node.property.object_level matches 4 unless entity @a[scores={dead=0,game.player.active_level=3..4},tag=ActivePlayer] run return 1

# Return 0 if level is correct
return 0

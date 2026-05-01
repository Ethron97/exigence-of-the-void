# Called by e_tick

## CONSTRAINTS
#   AS/AT menace node

#====================================================================================================

execute if score @s game.node.menace.cooldown matches 1.. run scoreboard players remove @s game.node.menace.cooldown 1

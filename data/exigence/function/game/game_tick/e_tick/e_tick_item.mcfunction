# Tick on all items

## CONSTRAINTS
#   AS item

#====================================================================================================

# Glow tick
execute if score @s game.entity.glow_remaining matches 1.. run function exigence:game/game_tick/e_tick/item/glow_tick

## SWITCH
#execute if entity @s[tag=Echo]
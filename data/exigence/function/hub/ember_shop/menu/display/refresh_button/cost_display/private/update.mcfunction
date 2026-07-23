# Called by update_cost

## CONSTRAINTS
#   AS cost display

## INPUT
#   INT refresh_cost
#   STR refresh_cost_color

#====================================================================================================

#$data modify entity @s text set value [{text:"💎",color:"aqua"},{text:"$(refresh_cost)",color:"$(refresh_cost_color)"}]
$data modify entity @s text set value [{text:"💎$(refresh_cost)",color:"$(refresh_cost_color)"}]

execute at @s run particle glow ^ ^ ^0.01 0.05 0.05 0.05 0.00 3
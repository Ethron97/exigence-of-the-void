# Update cost display color/cost

## CONSTRAINTS
#   AS cost_display

## INPUT
#   STR ember_cost_color
#   INT ember_cost

#====================================================================================================

# DEBUG
execute if score toggle.menu debug matches 1 if score debug.level debug matches 3.. run say (D4 Menu) updating cost display

$data modify entity @s text set value [{text:"🔥$(ember_cost)",color:"$(ember_cost_color)"}]
